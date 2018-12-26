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
#include "xstatus.h"
#include "Xparameters.h"	//定义处理器设备ID
#include "Xscugic.h"
#include "Xil_exception.h"
#include "xttcps.h"

#define TTC_DEVICE_ID	    XPAR_XTTCPS_0_DEVICE_ID
#define TTC_INTR_ID		    XPAR_XTTCPS_0_INTR
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID

typedef struct {
	u32 OutputHz;	/* Output frequency 输出频率 */
	u16 Interval;	/* Interval value 间隔值 */
	u8 Prescaler;	/* Prescaler value 预分频值 */
	u16 Options;	/* Option settings 选项设置 */
} TmrCntrSetup;

static TmrCntrSetup SettingsTable[1] = {
	{10, 0, 0, 0},	/* Ticker timer counter initial setup, only output freq */
};

static XScuGic Intc; //GIC

static void SetupInterruptSystem(XScuGic *GicInstancePtr, XTtcPs *TtcPsInt);
static void TickHandler(void *CallBackRef);


//XTtcPs *TtcPsInst;
u16 interval_value;
int main()
{
	XTtcPs_Config *Config;
	XTtcPs Timer;
	TmrCntrSetup *TimerSetup;

	int Status;

	init_platform();

	TimerSetup = &SettingsTable[TTC_DEVICE_ID];

	//Timer = &(TtcPsInst[TTC_DEVICE_ID]);
	XTtcPs_Stop(&Timer);



	printf("\n\rHello World \n\r");

	//initialise the timer
	Config = XTtcPs_LookupConfig(TTC_DEVICE_ID);
	Status = XTtcPs_CfgInitialize(&Timer, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
	    	printf("XST_FAILURE\r\n");
	    	return XST_FAILURE;
	}

	TimerSetup->Options |= (XTTCPS_OPTION_INTERVAL_MODE |
			XTTCPS_OPTION_WAVE_POLARITY);

	XTtcPs_SetOptions(&Timer, TimerSetup->Options);
	XTtcPs_CalcIntervalFromFreq(&Timer, TimerSetup->OutputHz, &(TimerSetup->Interval), &(TimerSetup->Prescaler));

	XTtcPs_SetInterval(&Timer, TimerSetup->Interval);
	XTtcPs_SetPrescaler(&Timer, TimerSetup->Prescaler);

	SetupInterruptSystem(&Intc, &Timer);

	interval_value = XTtcPs_GetInterval(&Timer);
	printf("interval = %x\r\n",interval_value);
	while (1) {



	}

	return 0;
}

static void SetupInterruptSystem(XScuGic *GicInstancePtr, XTtcPs *TtcPsInt)
{


	XScuGic_Config *IntcConfig; //GIC config
	Xil_ExceptionInit();

	//initialise the GIC
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);

	XScuGic_CfgInitialize(GicInstancePtr, IntcConfig,
	                      IntcConfig->CpuBaseAddress);

	//connect to the hardware
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	                             (Xil_ExceptionHandler)XScuGic_InterruptHandler,
	                             GicInstancePtr);

	XScuGic_Connect(GicInstancePtr, TTC_INTR_ID,
	                (Xil_ExceptionHandler)TickHandler, (void *)TtcPsInt);


	XScuGic_Enable(GicInstancePtr, TTC_INTR_ID);
	printf("XScuGic is ok \r\n");

	XTtcPs_EnableInterrupts(TtcPsInt, XTTCPS_IXR_INTERVAL_MASK);

	XTtcPs_Start(TtcPsInt);

	// Enable interrupts in the Processor.
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
}

static void TickHandler(void *CallBackRef)
{
	u32 StatusEvent;

	StatusEvent = XTtcPs_GetInterruptStatus((XTtcPs *)CallBackRef);
	XTtcPs_ClearInterruptStatus((XTtcPs *)CallBackRef, StatusEvent);

	printf("event\n\r");

}

