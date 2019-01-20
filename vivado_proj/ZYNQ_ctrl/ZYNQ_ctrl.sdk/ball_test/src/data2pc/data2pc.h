/*
 * data2pc.h
 *
 *  Created on: 2019年1月3日
 *      Author: admin
 */

#ifndef SRC_DATA2PC_DATA2PC_H_
#define SRC_DATA2PC_DATA2PC_H_

#include "../uart_driver/uart_driver.h"
#include "../flag.h"
#include "../DronePara.h"
#include "../control/PID_Control.h"
#include "stdio.h"

#define DATA_LEN_PC 16
#define UARTLITE_PC_DEVICE_ID 	XPAR_UARTLITE_0_DEVICE_ID
#define UARTLITE_PC_INT_ID		XPAR_FABRIC_UARTLITE_0_VEC_ID

#define DEBUG_PRINT
//#define DEBUG_PRINT_0

#ifdef DEBUG_PRINT
#include <stdio.h>
#endif

//初始化与pc通信的uart
void InitUartPc(void);
//接收上位机的数据并处理
void Receive_PcData(void);


/*上传实时信息*/
void sendRTInfo(void);
//上传PID参数
void sendParaInfo(void);

//task传输给上位机
void App_TaskDataToPC(void);

#endif /* SRC_DATA2PC_DATA2PC_H_ */
