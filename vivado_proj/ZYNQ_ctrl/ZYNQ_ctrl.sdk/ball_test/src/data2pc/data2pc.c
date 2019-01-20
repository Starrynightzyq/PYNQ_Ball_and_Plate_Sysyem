/*
 * data2pc.c
 *
 *  Created on: 2019年1月3日
 *      Author: admin
 */
#include "data2pc.h"

static u8 ReceiveBufferPc[DATA_LEN_PC] = {0};
//static u8 SendBufferPc[DATA_LEN_PC] = {0};
float_union HexToFloat;
float_union FloatToHex;

extern XUartLite UartPc;				/* 与上位机通信的uart口 */
extern XScuGic InterruptController;
extern flag FlagInstance;
extern Pid Angle_x, Angle_y, Position_x, Position_y;	//Angle内环PID参数，Position外环PID参数
extern DroneRTInfo RT_Info;	//传感器数据
extern BallInfo Ball_Info;		//小球位置数据

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

void FloatToUnsignedchar(unsigned char sequence,float Originalvalue,unsigned char *dataPC){
    FloatToHex.fv = Originalvalue;
    dataPC[sequence] = (FloatToHex.sv[0] & 0x00ff);
    dataPC[sequence+1] = ((FloatToHex.sv[0]>> 8) & 0x00ff);
    dataPC[sequence+2] = (FloatToHex.sv[1] & 0x00ff);
    dataPC[sequence+3] = ((FloatToHex.sv[1] >> 8) & 0x00ff);
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
        else if(PcData[2]==0x07){

        	xil_printf("angle_x\r\n");

        	Angle_x.Kp = SYMBOL_ANGLE_X*UnsignedcharToFloat(PcData,3);
        	Angle_x.Ki = SYMBOL_ANGLE_X*UnsignedcharToFloat(PcData,7);
        	Angle_x.Kd = SYMBOL_ANGLE_X*UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;	/* 上传PID参数  */
			FlagInstance.save_pid = 1;		/* 保存PID参数到SD卡  */
        }
        /* 设置ROll的PID参数  -> 内环angle_y + */
        else if(PcData[2]==0x08){

        	xil_printf("angle_y\r\n");

        	Angle_y.Kp = SYMBOL_ANGLE_Y*UnsignedcharToFloat(PcData,3);
        	Angle_y.Ki = SYMBOL_ANGLE_Y*UnsignedcharToFloat(PcData,7);
        	Angle_y.Kd = SYMBOL_ANGLE_Y*UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;
			FlagInstance.save_pid = 1;
        }
        /* 设置accPitch的PID参数  -> 外环position_x -*/
        else if(PcData[2]==0x0B){

        	xil_printf("position_x\r\n");

        	Position_x.Kp = SYMBOL_POSITION_X*UnsignedcharToFloat(PcData,3);
        	Position_x.Ki = SYMBOL_POSITION_X*UnsignedcharToFloat(PcData,7);
        	Position_x.Kd = SYMBOL_POSITION_X*UnsignedcharToFloat(PcData,11);
			FlagInstance.report_pid = 1;
			FlagInstance.save_pid = 1;
        }
        /* 设置accRoll的PID参数  -> 外环position_y */
        else if(PcData[2]==0x0C){

        	xil_printf("position_y\r\n");

        	Position_y.Kp = SYMBOL_POSITION_Y*UnsignedcharToFloat(PcData,3);
        	Position_y.Ki = SYMBOL_POSITION_Y*UnsignedcharToFloat(PcData,7);
        	Position_y.Kd = SYMBOL_POSITION_Y*UnsignedcharToFloat(PcData,11);
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

/*上传实时信息*/
void sendRTInfo(void){
    static unsigned char sendFlag = 1;
    unsigned char DataToPC[16] = {0};

    switch (sendFlag){
        case 1:
            DataToPC[0]=0X55;
            DataToPC[1]=0XAA;
            DataToPC[2]=0X00;

            FloatToUnsignedchar(3,RT_Info.Pitch,DataToPC);

            FloatToUnsignedchar(7,RT_Info.Roll,DataToPC);

            FloatToUnsignedchar(11,RT_Info.Yaw,DataToPC);

            DataToPC[15]=0x55;

            sendFlag ++;
            break;
        case 2:
            DataToPC[0]=0X55;
            DataToPC[1]=0XAA;
            DataToPC[2]=0X01;

            FloatToUnsignedchar(3,50.0,DataToPC);

            FloatToUnsignedchar(7,(float)(Ball_Info.x/100.0),DataToPC);

            FloatToUnsignedchar(11,(float)(Ball_Info.y/100.0),DataToPC);

            DataToPC[15] = 0x80 ;

            sendFlag --;
            break;

        default:
            break;
    }

    XUartLite_Send(&UartPc, DataToPC, DATA_LEN_PC);
}

//上传PID参数
void sendParaInfo(void)
{
    unsigned char paraToPC[16] = {0};
    paraToPC[15] = '\0';

    paraToPC[0]=0X55;
    paraToPC[1]=0XAA;

    paraToPC[2]=0X02;
    FloatToUnsignedchar(3,SYMBOL_ANGLE_X*Angle_x.Kp,paraToPC);
    FloatToUnsignedchar(7,SYMBOL_ANGLE_X*Angle_x.Ki,paraToPC);
    FloatToUnsignedchar(11,SYMBOL_ANGLE_X*Angle_x.Kd,paraToPC);
    while(XUartLite_IsSending(&UartPc) == TRUE){};
	XUartLite_Send(&UartPc, paraToPC, DATA_LEN_PC);

    paraToPC[2]=0X03;
    FloatToUnsignedchar(3,SYMBOL_ANGLE_Y*Angle_y.Kp,paraToPC);
    FloatToUnsignedchar(7,SYMBOL_ANGLE_Y*Angle_y.Ki,paraToPC);
    FloatToUnsignedchar(11,SYMBOL_ANGLE_Y*Angle_y.Kd,paraToPC);
    while(XUartLite_IsSending(&UartPc) == TRUE){};
    XUartLite_Send(&UartPc, paraToPC, DATA_LEN_PC);

    paraToPC[2]=0X04;
    FloatToUnsignedchar(3,SYMBOL_POSITION_X*Position_x.Kp,paraToPC);
    FloatToUnsignedchar(7,SYMBOL_POSITION_X*Position_x.Ki,paraToPC);
    FloatToUnsignedchar(11,SYMBOL_POSITION_X*Position_x.Kd,paraToPC);
    while(XUartLite_IsSending(&UartPc) == TRUE){};
    XUartLite_Send(&UartPc, paraToPC, DATA_LEN_PC);

    paraToPC[2]=0X05;
    FloatToUnsignedchar(3,SYMBOL_POSITION_Y*Position_y.Kp,paraToPC);
    FloatToUnsignedchar(7,SYMBOL_POSITION_Y*Position_y.Ki,paraToPC);
    FloatToUnsignedchar(11,SYMBOL_POSITION_Y*Position_y.Kd,paraToPC);
    while(XUartLite_IsSending(&UartPc) == TRUE){};
    XUartLite_Send(&UartPc, paraToPC, DATA_LEN_PC);

}

//task传输给上位机
void App_TaskDataToPC(void) {
	if(FlagInstance.report_pid) {
		sendParaInfo();	//上传PID数据
		FlagInstance.report_pid = 0;
	}
	else {
		sendRTInfo();	//上传实时信息
	}
}

