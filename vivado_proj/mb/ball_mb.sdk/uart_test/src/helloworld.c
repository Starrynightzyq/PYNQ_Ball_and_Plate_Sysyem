/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "xintc.h"
#include "xil_exception.h"

#define UARTLITE_DEVICE_ID      XPAR_UARTLITE_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#define UARTLITE_INT_IRQ_ID     XPAR_INTC_0_UARTLITE_0_VEC_ID

#define SEND_BUFFER_SIZE 		10
#define REC_BUFFER_SIZE        	10

XUartLite UartLite;            /* The instance of the UartLite Device */
XIntc InterruptController;     /* The instance of the Interrupt Controller */

static volatile int TotalReceivedCount;
static volatile int TotalSentCount;
static u8 UartRevFlag = 0;
static u8 UartSendFlag = 0;

u8 SendBuffer[SEND_BUFFER_SIZE];
u8 ReceiveBuffer[REC_BUFFER_SIZE];

void init(void);
void UartSendHandler(void *CallBackRef, unsigned int EventData);
void UartRecvHandler(void *CallBackRef, unsigned int EventData);

int main()
{
	int i = 0;

    init_platform();

    print("Hello World\n\r");
    init();

    //似乎这句是必须的
	XUartLite_Recv(&UartLite, ReceiveBuffer, REC_BUFFER_SIZE);

    while(1) {
    	if(UartRevFlag) {
    		UartRevFlag = 0;
    		XUartLite_Recv(&UartLite, ReceiveBuffer, REC_BUFFER_SIZE);
    		XUartLite_Send(&UartLite, ReceiveBuffer, SEND_BUFFER_SIZE);
//    		for(i = 0; i < REC_BUFFER_SIZE; i++) {
//    			xil_printf("%x ",ReceiveBuffer[i]);
//    		}
    	}

    }

    cleanup_platform();
    return 0;
}

void init(void) {
	//初始化UartLite
	XUartLite_Initialize(&UartLite, UARTLITE_DEVICE_ID);
	XUartLite_ResetFifos(&UartLite);

	//初始化中断
	XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
	XIntc_Connect(&InterruptController, UARTLITE_INT_IRQ_ID,
				   (XInterruptHandler)XUartLite_InterruptHandler,
				   &UartLite);
	XIntc_Start(&InterruptController, XIN_REAL_MODE);
	XIntc_Enable(&InterruptController, UARTLITE_INT_IRQ_ID);

	//初始化异常控制器
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				 (Xil_ExceptionHandler)XIntc_InterruptHandler,
				 &InterruptController);
	Xil_ExceptionEnable();

	//设置uart中断处理函数
	XUartLite_SetSendHandler(&UartLite, UartSendHandler, &UartLite);
	XUartLite_SetRecvHandler(&UartLite, UartRecvHandler, &UartLite);

	//使能uart中断
	XUartLite_EnableInterrupt(&UartLite);
}

void UartSendHandler(void *CallBackRef, unsigned int EventData) {
	if(EventData == SEND_BUFFER_SIZE) {
		UartSendFlag = 1;
	}
}

void UartRecvHandler(void *CallBackRef, unsigned int EventData) {
	TotalReceivedCount = EventData;
	if(EventData == REC_BUFFER_SIZE) {
		UartRevFlag = 1;
	}
}
