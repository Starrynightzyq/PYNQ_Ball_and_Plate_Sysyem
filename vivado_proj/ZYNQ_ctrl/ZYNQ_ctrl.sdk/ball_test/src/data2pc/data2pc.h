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

#define DATA_LEN_PC 20
#define UARTLITE_PC_DEVICE_ID 	XPAR_UARTLITE_0_DEVICE_ID
#define UARTLITE_PC_INT_ID		XPAR_FABRIC_UARTLITE_0_VEC_ID

#define DEBUG_PRINT

#ifdef DEBUG_PRINT
#include <stdio.h>
#endif

//初始化与pc通信的uart
void InitUartPc(void);
//接收上位机的数据并处理
void Receive_PcData(void);

#endif /* SRC_DATA2PC_DATA2PC_H_ */
