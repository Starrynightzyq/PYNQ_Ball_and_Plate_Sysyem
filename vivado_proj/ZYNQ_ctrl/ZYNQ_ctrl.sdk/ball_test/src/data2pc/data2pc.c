/*
 * data2pc.c
 *
 *  Created on: 2019年1月3日
 *      Author: admin
 */
#include "data2pc.h"

static u8 ReceiveBufferPc[DATA_LEN_PC] = {0};
float_union HexToFloat;

extern XUartLite UartPc;				/* 与上位机通信的uart口 */
extern XScuGic InterruptController;
extern flag FlagInstance;
extern Pid Angle_x, Angle_y, Position_x, Position_y;	//Angle内环PID参数，Position外环PID参数

void PcRecvHandler(void *CallBackRef, unsigned int EventData)
{
//	TotalReceivedCount = EventData;
	if(EventData == DATA_LEN_PC) {
		FlagInstance.uart_pc_recv = 1;
	}
	xil_printf("pc uart receive event\r\n");
}

void PcSendHandler(void *CallBackRef, unsigned int EventData)
{
//	TotalSentCount = EventData;
//	xil_printf("uart send event\r\n");
}

void InitUartPc(void) {
	InitUartLite(&UartPc, UARTLITE_PC_DEVICE_ID, UARTLITE_PC_INT_ID, &InterruptController, PcSendHandler, PcRecvHandler);

    //打开uart接收
//	XUartLite_ResetFifos(&UartPc);
    XUartLite_Recv(&UartPc, ReceiveBufferPc, DATA_LEN_PC);
}


float UnsignedcharToFloat(u8 *DataofPC,unsigned char sequence){
    HexToFloat.sv[0] = (((u16)DataofPC[sequence+1]) << 8 | DataofPC[sequence]);
    HexToFloat.sv[1] = (((u16)DataofPC[sequence+3]) << 8 | DataofPC[sequence+2]);

#ifdef DEBUG_PRINT
    char str[8];
    sprintf(str, "%1.5f", HexToFloat.fv);
    puts(str);
#endif

    return HexToFloat.fv;
}

//处理上位机发来的数据
void Process_PcData(u8 *PcData) {

#ifdef DEBUG_PRINT_0
	u8 *PcData_temp;
	PcData_temp = PcData;
	for(int i = 0; i < DATA_LEN_PC; i++) {
		xil_printf("%x ", *PcData_temp);
		PcData_temp++;
	}
	xil_printf("\r\n");
#endif

	/* 检查包头 */
	if(PcData[0]==0x55 && PcData[1]==0xAA) {
		/*PC读取PID*/
		if(PcData[2]==0x03) {
			FlagInstance.report_pid = 1;
		}
        /* 设置Pitch的PID参数  -> 内环angle_x - */
        else if(PcData[2]==0x05){

        	xil_printf("angle_x\r\n");

        	Angle_x.Kp = -UnsignedcharToFloat(PcData,3);
        	Angle_x.Ki = -UnsignedcharToFloat(PcData,7);
        	Angle_x.Kd = -UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;	/* 上传PID参数  */
			FlagInstance.save_pid = 1;		/* 保存PID参数到SD卡  */
        }
        /* 设置ROll的PID参数  -> 内环angle_y + */
        else if(PcData[2]==0x06){

        	xil_printf("angle_y\r\n");

        	Angle_y.Kp = UnsignedcharToFloat(PcData,3);
        	Angle_y.Ki = UnsignedcharToFloat(PcData,7);
        	Angle_y.Kd = UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;
			FlagInstance.save_pid = 1;
        }
        /* 设置accPitch的PID参数  -> 外环position_x -*/
        else if(PcData[2]==0x0B){

        	xil_printf("position_x\r\n");

        	Position_x.Kp = -UnsignedcharToFloat(PcData,3);
        	Position_x.Ki = -UnsignedcharToFloat(PcData,7);
        	Position_x.Kd = -UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;
			FlagInstance.save_pid = 1;
        }
        /* 设置accRoll的PID参数  -> 外环position_y */
        else if(PcData[2]==0x0C){

        	xil_printf("position_x\r\n");

        	Position_y.Kp = UnsignedcharToFloat(PcData,3);
        	Position_y.Ki = UnsignedcharToFloat(PcData,7);
        	Position_y.Kd = UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;
			FlagInstance.save_pid = 1;
        }
        else {
        	xil_printf("ID = %x\r\n", PcData[2]);
        }
	}
	else{
		xil_printf("uart pc receive error\r\n");
//		for(int i = 0; i < DATA_LEN_PC; i++) {
//			xil_printf("%x ", *PcData);
//			PcData++;
//		}
//		xil_printf("\r\n");
	}
}

//接收上位机的数据并处理
void Receive_PcData(void) {
	Process_PcData(ReceiveBufferPc);
    //打开uart接收
	XUartLite_ResetFifos(&UartPc);
    XUartLite_Recv(&UartPc, ReceiveBufferPc, DATA_LEN_PC);
}
