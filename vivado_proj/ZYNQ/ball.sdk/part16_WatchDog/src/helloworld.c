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

//#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "sleep.h"
#include "Xparameters.h"	//定义处理器设备ID
#include "xgpio.h"			//drivers for GPIO configuration and use
#include "Xscugic.h"		//用于GIC（通用中断控制器）配置和使用的驱动程序
#include "Xil_exception.h"	//ARM Cortex-A9处理器的异常函数
#include "xscutimer.h" 		//private timer
#include "xscuwdt.h"		//watch dog

/* Xil_Gpio Definitions */
#define GPIO_DEVICE_ID  	XPAR_AXI_GPIO_0_DEVICE_ID	/* GPIO device that LEDs are connected to */
#define LED_CHANNEL 		1							/* GPIO port for LEDs */
#define BTN_CHANNEL 		2							/* GPIO port for LEDs */
#define GPIO_INTERRUPT_ID	XPAR_FABRIC_GPIO_0_VEC_ID

//Interrupt Definitions
#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID

//Timer Definitions
#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR
#define TIMER_LOAD_VALUE	0x135F1B40	//650M/2 1s

//WatchDog Definitions
#define WDT_DEVICE_ID 		XPAR_SCUWDT_0_DEVICE_ID
#define WDT_IRPT_INTR		XPAR_SCUWDT_INTR
#define WDT_LOAD_VALUE		0xFFFFFFFF

static XScuGic Intc; 	/* The Instance of the Interrupt Controller Driver */
static XGpio Gpio;		/* GPIO Device driver instance */
static XScuTimer Timer;	//timer
static XScuWdt WdtInstance; //watchdog

static void SetupInterruptSystem(XScuGic *GicInstancePtr, XGpio *Gpio, u16 GpioIntrId,
        XScuTimer *TimerInstancePtr, u16 TimerIntrId, XScuWdt *WdtInstancePtr, u16 WdtIntrId);
//static void IntrHandler(void *CallBackRef, int Bank, u32 Status);
static void GpioIntrHandler(void *CallBackRef);
static void TimerIntrHandler(void *CallBackRef);
static void WdtIntrHandler(void *CallBackRef);

u32 led = 0x03;

int main()
{
	int Status;
	int reg;

	XGpio_Config *GPIOConfigPtr;      	//gpio config
	XScuTimer_Config *TMRConfigPtr;     //timer config
	XScuWdt_Config *WDTConfigPtr;		//watchdog config

    init_platform();

    print("Hello World\n\r");

	//GPIO Initilization
	GPIOConfigPtr = XGpio_LookupConfig(GPIO_DEVICE_ID);
	Status = XGpio_CfgInitialize(&Gpio, GPIOConfigPtr, GPIOConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		print("GPIO INIT FAILED\n\r");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x00);
	XGpio_SetDataDirection(&Gpio, BTN_CHANNEL, 0xFF);

	//Timer Initilization
	TMRConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	XScuTimer_CfgInitialize(&Timer, TMRConfigPtr, TMRConfigPtr->BaseAddr);
	XScuTimer_SelfTest(&Timer);
	//load the timer
	XScuTimer_LoadTimer(&Timer, TIMER_LOAD_VALUE);
	XScuTimer_EnableAutoReload(&Timer);	//自动重载
	//start timer
	XScuTimer_Start(&Timer);

	//watchdog Initilization
	WDTConfigPtr = XScuWdt_LookupConfig(WDT_DEVICE_ID);
	XScuWdt_CfgInitialize(&WdtInstance, WDTConfigPtr, WDTConfigPtr->BaseAddr);

	xil_printf("\n\rAdam Edition MicroZed Using Vivado How To Printf \n\r");
	reg = XScuWdt_IsWdtExpired(&WdtInstance);
	xil_printf("Previous reset state = %d\n\r", reg);

	XScuWdt_LoadWdt(&WdtInstance, WDT_LOAD_VALUE);
//	XScuWdt_Start(&WdtInstance);

	SetupInterruptSystem(&Intc, &Gpio, GPIO_INTERRUPT_ID, &Timer, TIMER_IRPT_INTR\
			, &WdtInstance, WDT_IRPT_INTR);

	while (1) {

//		/* Read input from the BTNs. */
//		btn = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL);

		/* Write output to the LEDs. */
//		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);
//		xil_printf("led is %4x\r\n",led);
//		led = ~led;
//		usleep(500000);
	}

    cleanup_platform();
    return 0;
}

static void SetupInterruptSystem(XScuGic *GicInstancePtr, XGpio *GpioInstancePtr, u16 GpioIntrId,
        XScuTimer *TimerInstancePtr, u16 TimerIntrId, XScuWdt *WdtInstancePtr, u16 WdtIntrId)
{


	XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

	Xil_ExceptionInit();

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);

	XScuGic_CfgInitialize(GicInstancePtr, IntcConfig,
	                      IntcConfig->CpuBaseAddress);

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	                             (Xil_ExceptionHandler)XScuGic_InterruptHandler,
	                             GicInstancePtr);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	//set up the Gpio interrupt
	XScuGic_Connect(GicInstancePtr, GpioIntrId,
	                (Xil_ExceptionHandler)GpioIntrHandler,
	                (void *)GpioInstancePtr);

	//set up the timer interrupt
	XScuGic_Connect(GicInstancePtr, TimerIntrId,
	                (Xil_ExceptionHandler)TimerIntrHandler,
	                (void *)TimerInstancePtr);

	//set up the watchdog
	XScuGic_Connect(GicInstancePtr, WdtIntrId,
	                (Xil_ExceptionHandler)WdtIntrHandler,
	                (void *)WdtInstancePtr);
	//setup the watchdog
	XScuWdt_SetWdMode(WdtInstancePtr);

	//Enable  interrupts for all channels.
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	//Enable the GPIO interrupts of CH2
	XGpio_InterruptEnable(GpioInstancePtr,XGPIO_IR_CH2_MASK);

	//Disable the GPIO interrupts of CH2
	XGpio_InterruptDisable(GpioInstancePtr,XGPIO_IR_CH1_MASK);

	//Enable the interrupt for the GPIO device.
	XScuGic_Enable(GicInstancePtr, GpioIntrId);

	//enable the interrupt for the Timer at GIC
	XScuGic_Enable(GicInstancePtr, TimerIntrId);

	//enable interrupt on the timer
	XScuTimer_EnableInterrupt(TimerInstancePtr);

	//enable interrupt on the watchdog
	XScuGic_Enable(GicInstancePtr, WdtIntrId);

	// Enable interrupts in the Processor.
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
}

static void GpioIntrHandler(void *CallBackRef)
{
	u32 btn;
	XGpio *GpioInstancePtr = (XGpio *)CallBackRef;
	btn = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL);
	if(btn != 0x00){
		xil_printf("****button %x pressed****\n\r",btn);

//		//load timer
//		XScuTimer_LoadTimer(&Timer, TIMER_LOAD_VALUE);
//		//start timer
//		XScuTimer_Start(&Timer);
	}
	XGpio_InterruptClear(GpioInstancePtr, XGPIO_IR_MASK);
}

static void TimerIntrHandler(void *CallBackRef)
{

	XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;
	XScuTimer_ClearInterruptStatus(TimerInstancePtr);
//	xil_printf("****Timer Event!!!!!!!!!!!!!****\n\r");

	/* Write output to the LEDs. */
	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);
	led = ~led;

	//watchdog start
	XScuWdt_Start(&WdtInstance);
}

static void WdtIntrHandler(void *CallBackRef)
{}
