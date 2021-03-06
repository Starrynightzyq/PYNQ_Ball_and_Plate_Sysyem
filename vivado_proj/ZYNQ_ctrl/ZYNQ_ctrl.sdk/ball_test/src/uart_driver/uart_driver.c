/*
 * uart_driver.c
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */
#include "uart_driver.h"

static volatile int TotalReceivedCount;
static volatile int TotalSentCount;

int InitUartLite(XUartLite *UartInstancePtr, u16 DevId, u16 IntId, INTC *IntrInstancePtr,
		XUartLite_Handler SendFuncPtr, XUartLite_Handler RecvFuncPtr, u8 Priority) {

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

#ifdef XPAR_INTC_0_DEVICE_ID

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
#else
	Status = XScuGic_Connect(IntrInstancePtr, IntId,
			   (Xil_ExceptionHandler)XUartLite_InterruptHandler,
			   UartInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//0x3 sets a rising edge triggered interrupt, 0x0 sets highest priority.
	XScuGic_SetPriorityTriggerType(IntrInstancePtr, IntId, Priority, 0x3);

	XScuGic_Enable(IntrInstancePtr, IntId);
#endif
	/*
	 * Setup the handlers for the UartLite that will be called from the
	 * interrupt context when data has been sent and received, specify a
	 * pointer to the UartLite driver instance as the callback reference so
	 * that the handlers are able to access the instance data.
	 */
	XUartLite_SetSendHandler(UartInstancePtr, SendFuncPtr, UartInstancePtr);
	XUartLite_SetRecvHandler(UartInstancePtr, RecvFuncPtr, UartInstancePtr);

	/*
	 * Enable the interrupt of the UartLite so that interrupts will occur.
	 */
	XUartLite_EnableInterrupt(UartInstancePtr);

	return XST_SUCCESS;
}
/*

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
*/

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

