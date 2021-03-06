/*
 * uart_driver.h
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */

#ifndef SRC_UART_DRIVER_UART_DRIVER_H_
#define SRC_UART_DRIVER_UART_DRIVER_H_

#include "xuartlite.h"
#include "xuartlite_l.h"
#include "xparameters.h"
#include "xil_printf.h"

#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#else
#include "xscugic.h"
#endif

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC		XIntc
#define INTC_HANDLER	XIntc_InterruptHandler
#else
#define INTC		XScuGic
#define INTC_HANDLER	XScuGic_InterruptHandler
#endif /* XPAR_INTC_0_DEVICE_ID */
/*

void RecvHandler(void *CallBackRef, unsigned int EventData);
void SendHandler(void *CallBackRef, unsigned int EventData);
*/

int InitUartLite(XUartLite *UartInstancePtr, u16 DevId, u16 IntId, INTC *IntrInstancePtr,
		XUartLite_Handler SendFuncPtr, XUartLite_Handler RecvFuncPtr, u8 Priority);

//Uart 检查是否出错
void Uart_Check(XUartLite *UartInstancePtr);


#endif /* SRC_UART_DRIVER_UART_DRIVER_H_ */
