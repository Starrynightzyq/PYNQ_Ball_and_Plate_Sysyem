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
#include "xil_exception.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xscugic.h"
#include "xscutimer.h"
#include "xuartlite.h"
#include "sleep.h"
#include "./iic_driver/iic_driver.h"
#include "./mpu6500/AHRS_Hardware.h"
#include "./timer_driver/timer_driver.h"
#include "./uart_driver/uart_driver.h"
#include "./control/PID_Control.h"
#include "./data2pc/data2pc.h"
#include "uart_cam.h"
#include "DronePara.h"
#include "flag.h"
#include "task.h"
#include "servo.h"

#define INTC_DEVICE_ID			XPAR_SCUGIC_0_DEVICE_ID
#define IICAXI_0_DEVICE_ID		XPAR_IIC_0_DEVICE_ID
#define IICAXI_0_INT_ID			XPAR_FABRIC_IIC_0_VEC_ID
#define TIMER_0_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_0_INT_ID			XPAR_SCUTIMER_INTR

#define TIMER_0_LOAD_VALUE		(XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ/2000)	//1ms

#define TEST_BUFFER_SIZE 10

XScuGic InterruptController;	/* Instance of the Interrupt Controller */
XIic IicInstance;				/* The instance of the mpu6500 IIC device. */
XScuTimer TimerInstance;		/* Cortex A9 Scu Private Timer Instance */
XUartLite UartCam;				/* 与摄像头板连接的uart口 */
XUartLite UartPc;				/* 与上位机通信的uart口 */
XServo Servo;					/* 舵机PWM产生IP */

//全局变量
DroneRTInfo RT_Info;	//传感器数据
OffsetInfo OffsetData;	//校准数据
flag FlagInstance;		//标志位
BallInfo Ball_Info;		//小球位置数据
Pid Angle_x, Angle_y, Position_x, Position_y;	//Angle内环PID参数，Position外环PID参数
_Pid_Out Pid_Out;		//PID输出数据

int Init_System(void);
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
int InitInterruptController(XScuGic *XScuGicInstancePtr, u16 DeviceId);
void InitServo(void);
void Servo_test();

void AT24C_test();

int main()
{
    init_platform();

    print("Hello World\n\r");

    Init_System();


	print("Ball Game Test ...\n\r");

//	AT24C_test();
	while(1) {
		TimerTask();
		ExIntrTask();
	}

    cleanup_platform();
    return 0;
}


int Init_System(void) {
	//初始化标志位
	InitFlag(&FlagInstance);

	//初始化PID参数
	PID_Init(&Angle_x, &Angle_y, &Position_x, &Position_y);

	//初始化中断控制器
	InitInterruptController(&InterruptController, INTC_DEVICE_ID);

	//初始化与MPU6500连接的IIC接口
	IicInit(&IicInstance, IICAXI_0_DEVICE_ID, IICAXI_0_INT_ID, MPU6500_IIC_ADDR, &InterruptController);

	//初始化定时器
	InitTimer(&TimerInstance, TIMER_0_DEVICE_ID, TIMER_0_INT_ID, &InterruptController, TIMER_0_LOAD_VALUE);

	//初始化摄像头串口
	InitUartCam();

	//初始化与pc通信的uart
	InitUartPc();

	//初始化舵机
    xil_printf("Init the servos...\r\n");
	InitServo();
    xil_printf("Init the servos done\r\n");
    sleep(3);

	//初始化MPU6500
	xil_printf("Init the mpu 6500...\r\n");
    AHRS_HardWareinit(&IicInstance);
    xil_printf("Init the mpu 6500 done\r\n");

	return XST_SUCCESS;
}

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr)
{

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the ARM processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			XScuGicInstancePtr);

	/*
	 * Enable interrupts
	 */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_ALL);

	return XST_SUCCESS;
}

int InitInterruptController(XScuGic *XScuGicInstancePtr, u16 DeviceId) {
	int Status;
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	static XScuGic_Config *GicConfig;    /* The configuration parameters of the controller */
	GicConfig = XScuGic_LookupConfig(DeviceId);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(XScuGicInstancePtr, GicConfig,
					GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built
	 * correctly
	 */
	Status = XScuGic_SelfTest(XScuGicInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the Interrupt System
	 */
	Status = SetUpInterruptSystem(XScuGicInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

void AT24C_test() {
	int Index;
	static u8 WriteBuffer[TEST_BUFFER_SIZE];
	static u8 ReadBuffer[TEST_BUFFER_SIZE];

    for(Index = 0; Index < TEST_BUFFER_SIZE; Index++) {
    	WriteBuffer[Index] = Index;
    	ReadBuffer[Index] = 0;
    }

    sleep(1);

    xil_printf("\r\nWrite Data...\r\n");
    IicWriteData(&IicInstance, 0x00, WriteBuffer, TEST_BUFFER_SIZE);
    xil_printf("Write Done\r\n");

    sleep(1);

    xil_printf("\r\nRead Data...\r\n");
    IicReadData(&IicInstance, 0x00, ReadBuffer, TEST_BUFFER_SIZE);
    xil_printf("Read Done\r\n");

    xil_printf("\r\nRead Data:\n\r");
    for(Index = 0; Index < TEST_BUFFER_SIZE; Index++) {
    	xil_printf(" %d,", ReadBuffer[Index]);
    }
    xil_printf("\r\nRead Data End\n\r");


    xil_printf("\r\nCompare Data...\n\r");
    for(Index = 0; Index < TEST_BUFFER_SIZE; Index++) {
//    	xil_printf(" %d,", ReadBuffer[Index]);
    	if(ReadBuffer[Index] != WriteBuffer[Index]) {
    		xil_printf("Compare error!!!\n\r");
    		break;
    	}
    	else if(Index == TEST_BUFFER_SIZE-1) {
    		xil_printf("Compare pass\n\r");
    	}
    }
    xil_printf("Compare End\n\r");
}

void InitServo(void) {
	XServo_Config *ServoConfigPtr;
//    初始化Servo_pwm
    ServoConfigPtr = XServo_LookupConfig(XPAR_SERVO_0_DEVICE_ID);
    XServo_CfgInitialize(&Servo, ServoConfigPtr, ServoConfigPtr->BaseAddress);

//    //设置初始位置 90
//    XServo_SetPWM(&Servo, 1, 40000);
//    XServo_SetPWM(&Servo, 2, 40000);

//    Servo_test();

    //设置初始位置 90
    XServo_SetPWM(&Servo, 1, 100000);
    XServo_SetPWM(&Servo, 2, 100000);
}

void Servo_test() {
	for(int i = 0; i < 200; i+=20) {
	    XServo_SetPWM(&Servo, 1, i*1000);
	    XServo_SetPWM(&Servo, 2, i*1000);
	    sleep(1);
	}
	sleep(2);
}
