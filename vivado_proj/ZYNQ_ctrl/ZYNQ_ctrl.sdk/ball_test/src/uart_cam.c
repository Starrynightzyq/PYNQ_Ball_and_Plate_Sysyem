/*
 * uart_cam.c
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */

#include "uart_cam.h"
#include "flag.h"
#include "DronePara.h"
#include "interrupt_priority.h"

extern XUartLite UartCam;
extern XScuGic InterruptController;
extern flag FlagInstance;
extern BallInfo Ball_Info;		//小球数据

static u8 ReceiveBuffer[8] = {0};

void CamRecvHandler(void *CallBackRef, unsigned int EventData)
{
//	TotalReceivedCount = EventData;
	if(EventData == DATA_LEN) {
		FlagInstance.uart_cam_recv = 1;
	}
//	xil_printf("uart receive event\r\n");
}

void CamSendHandler(void *CallBackRef, unsigned int EventData)
{
//	TotalSentCount = EventData;
//	xil_printf("uart send event\r\n");
}

void InitUartCam(void) {
	InitUartLite(&UartCam, UARTLITE_CAM_DEVICE_ID, UARTLITE_CAM_INT_ID, &InterruptController, CamSendHandler, CamRecvHandler, PRI_UART_CAM);

    //打开uart接收
    XUartLite_Recv(&UartCam, ReceiveBuffer, DATA_LEN);
}

void RecvUartCam(void) {
	u8 ID = 0;
	u16 data0 = 0;
	u16 data1 = 1;
	GetUart8Data(&ID, &data0, &data1);

	if(ID == CAM_POSITION) {
		Ball_Info.x = data1;
		Ball_Info.y = data0;
#ifdef DEBUG
		xil_printf("x = %d, y = %d\r\n", Ball_Info.x, Ball_Info.y);
#endif
	}

    //打开uart接收
	XUartLite_ResetFifos(&UartCam);
    XUartLite_Recv(&UartCam, ReceiveBuffer, DATA_LEN);
}


void GetUart8Data(u8 *ID, u16 *data0, u16 *data1) {
	u8 header_0 = 0;
	u8 header_1 = 0;
	u8 end = 0;

#ifdef DEBUG
	xil_printf("cam uart receive data: ");
	for(int i = 0; i < DATA_LEN; i++) {
		xil_printf("%x ", ReceiveBuffer[i]);
	}
	xil_printf("\r\n");
#endif

 	header_0 = ReceiveBuffer[0];
 	header_1 = ReceiveBuffer[1];
 	*ID = ReceiveBuffer[2];
 	*data0 = (((u16)ReceiveBuffer[3])<<8) + (u16)ReceiveBuffer[4];
 	*data1 = (((u16)ReceiveBuffer[5])<<8) + (u16)ReceiveBuffer[6];
 	end = ReceiveBuffer[7];

 	if((end != '$')|(header_0 != 0x55)|(header_1 != 0xaa)) {
 		xil_printf("get cam uart data error!\r\n");
// 		xil_printf("$ = %x\r\n", '$');
 		*ID = ERROR_RECV;
 	}
}
