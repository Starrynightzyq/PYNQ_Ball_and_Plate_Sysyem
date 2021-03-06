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
#include "xuartlite.h"		//axi_uart库
#include "xuartlite_l.h"
#include "xintc.h"			//中断，需要配合xil_exception.h使用
#include "xil_exception.h"	//异常处理
#include "sleep.h"			//延迟函数库

#define UARTLITE_DEVICE_ID      XPAR_UARTLITE_1_DEVICE_ID		//uart的设备号
#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID			//中断控制器的设备号
#define UARTLITE_INT_ID     	XPAR_INTC_0_UARTLITE_1_VEC_ID	//uart的中断号

#define TEST_BUFFER_SIZE        10

XUartLite UartLite_1;            /* The instance of the UartLite Device */
XIntc InterruptController;     /* The instance of the Interrupt Controller */

u8 SendBuffer[TEST_BUFFER_SIZE] = {0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x010};
u8 ReceiveBuffer[TEST_BUFFER_SIZE];

static volatile int TotalReceivedCount;
static volatile int TotalSentCount;

int InitInterrupt(XIntc *IntcInstancePtr, u16 IntcDevId);
int InitUartLite(XUartLite *UartInstancePtr, u16 DevId, u16 IntId, XIntc *IntrInstancePtr);

void RecvHandler(void *CallBackRef, unsigned int EventData);
void SendHandler(void *CallBackRef, unsigned int EventData);

//Uart 检查是否出错
void Uart_Check(XUartLite *UartInstancePtr);

int main()
{
    init_platform();

    print("Hello World\n\r");

    //初始化中断控制器
    InitInterrupt(&InterruptController, INTC_DEVICE_ID);

    //初始化uart，并且设置uart中断
    InitUartLite(&UartLite_1, UARTLITE_DEVICE_ID, UARTLITE_INT_ID, &InterruptController);

    //打开uart接收
    XUartLite_Recv(&UartLite_1, ReceiveBuffer, TEST_BUFFER_SIZE);

    while(1) {

    	//uart 接收
    	if(TotalReceivedCount == TEST_BUFFER_SIZE) {
    		TotalReceivedCount = 0;
    		xil_printf("Uart Receive:");
    		for(int i = 0; i < TEST_BUFFER_SIZE; i++) {
    			xil_printf("%x ", ReceiveBuffer[i]);
    		}
    		xil_printf("\r\n");
    	    //打开uart接收
    	    XUartLite_Recv(&UartLite_1, ReceiveBuffer, TEST_BUFFER_SIZE);
    	}

    	//uart发送
    	XUartLite_Send(&UartLite_1, SendBuffer, TEST_BUFFER_SIZE);

    	//延时
    	sleep(1);
    	Uart_Check(&UartLite_1);
    }

    cleanup_platform();
    return 0;
}

int InitInterrupt(XIntc *IntcInstancePtr, u16 IntcDevId) {
	int Status;
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	Status = XIntc_Initialize(IntcInstancePtr, IntcDevId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts, specific real mode so that
	 * the UartLite can cause interrupts through the interrupt controller.
	 */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)XIntc_InterruptHandler,
			 IntcInstancePtr);

	/*
	 * Enable exceptions.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int InitUartLite(XUartLite *UartInstancePtr, u16 DevId, u16 IntId, XIntc *IntrInstancePtr) {

	int Status;

	/*
	 * Initialize the UartLite driver so that it's ready to use.
	 */
	Status = XUartLite_Initialize(UartInstancePtr, DevId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XUartLite_SelfTest(UartInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the
	 * specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(IntrInstancePtr, IntId,
			   (XInterruptHandler)XUartLite_InterruptHandler,
			   UartInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupt for the UartLite device.
	 */
	XIntc_Enable(IntrInstancePtr, IntId);

	/*
	 * Setup the handlers for the UartLite that will be called from the
	 * interrupt context when data has been sent and received, specify a
	 * pointer to the UartLite driver instance as the callback reference so
	 * that the handlers are able to access the instance data.
	 */
	XUartLite_SetSendHandler(UartInstancePtr, SendHandler, UartInstancePtr);
	XUartLite_SetRecvHandler(UartInstancePtr, RecvHandler, UartInstancePtr);

	/*
	 * Enable the interrupt of the UartLite so that interrupts will occur.
	 */
	XUartLite_EnableInterrupt(UartInstancePtr);

	return XST_SUCCESS;
}

void RecvHandler(void *CallBackRef, unsigned int EventData)
{
	TotalReceivedCount = EventData;
	xil_printf("uart receive event\r\n");
}

void SendHandler(void *CallBackRef, unsigned int EventData)
{
	TotalSentCount = EventData;
	xil_printf("uart send event\r\n");
}

//Uart 检查是否出错
void Uart_Check(XUartLite *UartInstancePtr) {
	u32 data = 0;

	data = XUartLite_GetStatusReg(UartInstancePtr->RegBaseAddress);

	if(data != 0x14) {
		xil_printf("time uart status = %x\r\n",data);	//just for test
	}

	if((data == 0x17)||(data == 0x37)||(data == 0x15)) {
		XUartLite_ResetFifos(UartInstancePtr);
	}
}
