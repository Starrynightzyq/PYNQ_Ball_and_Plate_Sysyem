/*
 * timer_driver.h
 *
 *  Created on: 2018年12月29日
 *      Author: admin
 */

#ifndef SRC_TIMER_DRIVER_TIMER_DRIVER_H_
#define SRC_TIMER_DRIVER_TIMER_DRIVER_H_

#include "xparameters.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

/*
 * Function for external calls
 */
int InitTimer(XScuTimer *TimerInstancePtr,
		u16 TimerDeviceId, u16 TimerIntrId,
		XScuGic *IntcInstancePtr, u32 TimerLoadValue, u8 Priority);

#endif /* SRC_TIMER_DRIVER_TIMER_DRIVER_H_ */
