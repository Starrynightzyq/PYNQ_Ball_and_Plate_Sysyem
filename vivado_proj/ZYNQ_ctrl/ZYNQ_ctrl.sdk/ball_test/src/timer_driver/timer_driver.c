/*
 * timer_driver.c
 *
 *  Created on: 2018年12月29日
 *      Author: admin
 */
#include "timer_driver.h"
#include "../flag.h"

#define DIV_500HZ 2
#define DIV_250HZ 4
#define DIV_200HZ 5
#define DIV_40HZ  25
#define DIV_25HZ  40

extern flag FlagInstance;

static u16 counter = 0;

static int TimerSetupIntrSystem(XScuGic *IntcInstancePtr,
			      XScuTimer *TimerInstancePtr, u16 TimerIntrId, u8 Priority);

static void TimerIntrHandler(void *CallBackRef);

int InitTimer(XScuTimer *TimerInstancePtr,
		u16 TimerDeviceId, u16 TimerIntrId,
		XScuGic *IntcInstancePtr, u32 TimerLoadValue, u8 Priority) {

	int Status;
//	int LastTimerExpired = 0;
	XScuTimer_Config *ConfigPtr;

	/*
	 * Initialize the Scu Private Timer driver.
	 */
	ConfigPtr = XScuTimer_LookupConfig(TimerDeviceId);

	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XScuTimer_CfgInitialize(TimerInstancePtr, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XScuTimer_SelfTest(TimerInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the device to interrupt subsystem so that interrupts
	 * can occur.
	 */
	Status = TimerSetupIntrSystem(IntcInstancePtr,
					TimerInstancePtr, TimerIntrId, Priority);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable Auto reload mode.
	 */
	XScuTimer_EnableAutoReload(TimerInstancePtr);

	/*
	 * Load the timer counter register.
	 */
	XScuTimer_LoadTimer(TimerInstancePtr, TimerLoadValue);

	counter = 0;

	/*
	 * Start the timer counter and then wait for it
	 * to timeout a number of times.
	 */
	XScuTimer_Start(TimerInstancePtr);

	return XST_SUCCESS;
}

static int TimerSetupIntrSystem(XScuGic *IntcInstancePtr,
			      XScuTimer *TimerInstancePtr, u16 TimerIntrId, u8 Priority)
{
	int Status;

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, TimerIntrId,
				(Xil_ExceptionHandler)TimerIntrHandler,
				(void *)TimerInstancePtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	//0x3 sets a rising edge triggered interrupt, 0x0 sets highest priority.
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, TimerIntrId, Priority, 0x3);

	/*
	 * Enable the interrupt for the device.
	 */
	XScuGic_Enable(IntcInstancePtr, TimerIntrId);

	/*
	 * Enable the timer interrupts for timer mode.
	 */
	XScuTimer_EnableInterrupt(TimerInstancePtr);

	return XST_SUCCESS;
}

static void TimerIntrHandler(void *CallBackRef)
{
	XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;

	/*
	 * Check if the timer counter has expired(过期), checking is not necessary
	 * since that's the reason this function is executed, this just shows
	 * how the callback reference can be used as a pointer to the instance
	 * of the timer counter that expired, increment a shared variable so
	 * the main thread of execution can see the timer expired.
	 */
	if (XScuTimer_IsExpired(TimerInstancePtr)) {
		XScuTimer_ClearInterruptStatus(TimerInstancePtr);
		FlagInstance.timer_1000Hz = 1;
//    	xil_printf("timer interrupt event\r\n");
		if(counter >= (1000-1)) {
			counter = 0;
			FlagInstance.timer_1Hz = 1;
		}
		else {
			counter++;
		}

		if(counter%DIV_500HZ == 0) {
			FlagInstance.timer_500Hz = 1;
		}

		if(counter%DIV_250HZ == 0) {
			FlagInstance.timer_250Hz = 1;
		}

		if(counter%DIV_200HZ == 0) {
			FlagInstance.timer_200Hz = 1;
		}

		if(counter%DIV_40HZ == 0) {
			FlagInstance.timer_40Hz = 1;
		}

		if(counter%DIV_25HZ == 0) {
			FlagInstance.timer_25Hz = 1;
		}
	}
}
