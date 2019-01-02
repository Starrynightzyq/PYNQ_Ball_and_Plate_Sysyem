/*
 * uart_cam.h
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */

#ifndef SRC_UART_CAM_H_
#define SRC_UART_CAM_H_

#define DEBUG

#include "uart_driver/uart_driver.h"

/*
#ifdef DEBUG
#include "stdio.h"
#endif
*/

#define ERROR_RECV   0x00
#define CAM_POSITION 0x01

#define UARTLITE_CAM_DEVICE_ID 	XPAR_UARTLITE_1_DEVICE_ID
#define UARTLITE_CAM_INT_ID		XPAR_FABRIC_UARTLITE_1_VEC_ID
#define DATA_LEN				8

void GetUart8Data(u8 *ID, u16 *data0, u16 *data1);

void InitUartCam(void);
void RecvUartCam(void);

#endif /* SRC_UART_CAM_H_ */
