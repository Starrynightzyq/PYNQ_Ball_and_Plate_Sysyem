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
#include "xiic.h"
#include "xintc.h"
#include "sleep.h"

#include "./iic_my/iic_my.h"
#include "./camera/camera.h"
#include "./mpu6500/AHRS_Hardware.h"

#define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
#define IIC_DEVICE_ID	XPAR_IIC_0_DEVICE_ID
#define IIC_INTR_ID		XPAR_INTC_0_IIC_0_VEC_ID
//#define IIC_CAM_DEVICE_ID 	XPAR_IIC_1_DEVICE_ID
//#define IIC_CAM_INTR_ID		XPAR_INTC_0_IIC_1_VEC_ID

//#define AT24C02_IIC_ADDR 		(0xA0 >> 1)  /*AT24C02  address*/
//#define OV7725_IIC_ADDR			(0x42 >> 1)  /* The 8 bit IIC Slave address. */
#define MPU6500_IIC_ADDR		0x68	 /*The 7 bit MPU6500 address*/

XIic IicInstance;	/* The instance of the mpu6500 IIC device. */
XIntc IntcInstance;	/* The instance of the Interrupt control device. */
XIic IicCamInstance;


//全局变量
DroneRTInfo RT_Info;
OffsetInfo OffsetData;

int Init_System();
void AT24C_test();
void MPU6500_test();

#define TEST_BUFFER_SIZE 10

int main()
{
    init_platform();

    Init_System();

    print("Hello World\n\r");

//    Camera_Init(&IicCamInstance);

    MPU6500_test();

//    print("AT24C Test ...\n\r");

//    AT24C_test();

    cleanup_platform();
    return 0;
}

int Init_System() {
	int Status;
	/*
	 * Initialize the interrupt controller driver so that it's ready to use.
	 */
	Status = XIntc_Initialize(&IntcInstance, INTC_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	IicInit(&IicInstance, IIC_DEVICE_ID, IIC_INTR_ID, MPU6500_IIC_ADDR, &IntcInstance);
//	IicInit(&IicCamInstance, IIC_CAM_DEVICE_ID, IIC_CAM_INTR_ID, OV7725_IIC_ADDR, &IntcInstance);

	/*
	 * Start the interrupt controller so interrupts are enabled for all
	 * devices that cause interrupts.
	 */
	Status = XIntc_Start(&IntcInstance, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Initialize the exception table and register the interrupt
	 * controller handler with the exception table
	 */
	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)XIntc_InterruptHandler, &IntcInstance);

	/* Enable non-critical exceptions */
	Xil_ExceptionEnable();

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

void MPU6500_test() {

	xil_printf("Init the mpu 6500\r\n");
    AHRS_HardWareinit(&IicInstance);

    xil_printf("Start read the mpu 6500\r\n");
    while(1) {
    	IMU_getInfo();
    	sleep(1);
    }
}
