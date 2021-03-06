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
#include "xparameters.h"
//#include "xgpio.h"
#include "xtmrctr.h"
#include "xintc.h"
#include "xil_exception.h"
#include "ball_locator.h"
#include "kalman.h"
#include "sleep.h"
#include "servo.h"
#include "pid.h"
#include "task.h"
//#include "blconfig.h"

#define GPio_LEDs_ID 	XPAR_AXI_GPIO_0_DEVICE_ID
#define GPio_BTNs_ID 	XPAR_AXI_GPIO_1_DEVICE_ID
#define INTC_ID 		XPAR_INTC_0_DEVICE_ID
#define TMRCTR_ID 		XPAR_TMRCTR_0_DEVICE_ID
#define TMRCTR_INTC_ID	XPAR_INTC_0_TMRCTR_0_VEC_ID
#define LEDs_CHANNEL 	1
#define BTNs_CHANNEL 	1

#define TIMER_CTR_NUM		0
#define TIMER_LOAD_VALUE	0x0032DCD5	//100M/3.333M = 30Hz 0x0032DCD5

//XGpio Gpio_leds;
//XGpio Gpio_btns;
XTmrCtr TmrCtr;
XIntc Intc;
XBall Ball;
XServo Servo;
Kalman Kalman_x;
Kalman Kalman_y;

extern u16 X_NOW;	//定义在pid.c里
extern u16 Y_NOW;

u32 coordx;
u32 coordy;

u8 TmrIntFlag = 0;

int i_tmp = 0;
u32 servo_temp = 0;

void XTimer_IntHandler(void *CallBackRef, u8 TmrCtrNumber);	//定时器中断服务函数

int main()
{
//	u32 leds;
//	u32 btns;
//	int i;


//	int Status;
//	XGpio_Config *GPIOConfigPtr;
	XBall_Config *BallConfigPtr;
	XServo_Config *ServoConfigPtr;

    init_platform();

    xil_printf("Hello World\n\r");

//    //初始化leds and btns
//    GPIOConfigPtr = XGpio_LookupConfig(GPio_LEDs_ID);
//    Status = XGpio_CfgInitialize(&Gpio_leds, GPIOConfigPtr, GPIOConfigPtr->BaseAddress);
//    if(Status != XST_SUCCESS){
//    	print("XST_FAILURE");
//    	return XST_FAILURE;
//    }
//    XGpio_SetDataDirection(&Gpio_leds, LEDs_CHANNEL, 0x0000);
//
//    GPIOConfigPtr = XGpio_LookupConfig(GPio_BTNs_ID);
//    Status = XGpio_CfgInitialize(&Gpio_btns, GPIOConfigPtr, GPIOConfigPtr->BaseAddress);
//    if(Status != XST_SUCCESS){
//    	print("XST_FAILURE");
//    	return XST_FAILURE;
//    }
//    XGpio_SetDataDirection(&Gpio_btns, BTNs_CHANNEL, 0xffff);

    //初始化camera模块
    BallConfigPtr = XBall_LookupConfig(XPAR_BALL_LOCATOR_0_DEVICE_ID);
    XBall_CfgInitialize(&Ball, BallConfigPtr, BallConfigPtr->BaseAddress);

    //设置阈值
    XBall_WriteThreshold(&Ball, 0x28);

    //初始化Servo_pwm
//    ServoConfigPtr = XServo_LookupConfig(XPAR_SERVO_0_DEVICE_ID);
//    XServo_CfgInitialize(&Servo, ServoConfigPtr, ServoConfigPtr->BaseAddress);

    //定时器初始化
    XTmrCtr_Initialize(&TmrCtr, TMRCTR_ID);

    //初始化中断
    XIntc_Initialize(&Intc, INTC_ID);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
    		(Xil_ExceptionHandler)XIntc_InterruptHandler,
			&Intc);
    Xil_ExceptionEnable();

    XIntc_Start(&Intc, XIN_REAL_MODE);
    XIntc_Connect(&Intc, TMRCTR_INTC_ID,
    		(XInterruptHandler)XTmrCtr_InterruptHandler,
			&TmrCtr);
    XIntc_Enable(&Intc, TMRCTR_INTC_ID);

    //设置定时器Handler
    XTmrCtr_SetHandler(&TmrCtr, (XTmrCtr_Handler)XTimer_IntHandler, &TmrCtr);

    //定时器Options就是个坑
    XTmrCtr_SetOptions(&TmrCtr, TIMER_CTR_NUM,
    		XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION |
			XTC_ENABLE_ALL_OPTION | XTC_DOWN_COUNT_OPTION);

    XTmrCtr_SetResetValue(&TmrCtr, TIMER_CTR_NUM, TIMER_LOAD_VALUE);

    XTmrCtr_Start(&TmrCtr, TIMER_CTR_NUM);

//    XTmrCtr_Reset(&TmrCtr, TIMER_CTR_NUM);

    //初始化servo
//	XServo_SetPWM(&Servo, 1, 100000);
//	XServo_SetPWM(&Servo, 2, 100000);

	//初始化PID参数
//	task1_init();

	xil_printf("while start\r\n");
    while(1){

//    	XServo_SetPWM(&Servo, 1, 100000);
//    	XServo_SetPWM(&Servo, 2, 100000);

    	if(TmrIntFlag == 1) {
        	XBall_ReadCoords(&Ball, &coordx, &coordy);
        	X_NOW = (u16)KalmanFilter(&Kalman_x, (double)coordx);
        	Y_NOW = (u16)KalmanFilter(&Kalman_y, (double)coordy);
        	xil_printf("coordx = %d, coordy = %d, kalman_coordx = %d, kalman_coordy = %d\r\n", coordx, coordy, X_NOW, Y_NOW);
    		task1();
        	TmrIntFlag = 0;
    	}

//    	sleep(1);
    }


    cleanup_platform();
    return 0;
}

void XTimer_IntHandler(void *CallBackRef, u8 TmrCtrNumber)
{
	XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;


//	TmrIntFlag = 1;

//	i_tmp++;
//	if(i_tmp == 15) {
//		i_tmp = 0;
//
		TmrIntFlag = 1;
//
////		XBall_ReadCoords(&Ball, &X_NOW, &Y_NOW);
////		xil_printf("X_NOW = %d, Y_NOW = %d\t", X_NOW, Y_NOW);
//
//
//		task_test_servo();
//
//		xil_printf("Timer Interrupt event\r\n");
//	}
}
