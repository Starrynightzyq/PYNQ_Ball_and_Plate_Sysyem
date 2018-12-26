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

/* Include Files */
//#include <stdio.h>
//#include "xparameters.h"
#include "xgpio.h"
//#include "xstatus.h"
#include "xil_printf.h"
#include "sleep.h"

/* Definitions */
#define GPIO_DEVICE_ID  XPAR_AXI_GPIO_0_DEVICE_ID	/* GPIO device that LEDs are connected to */
#define LED 0xC3									/* Initial LED value - XX0000XX */
#define LED_CHANNEL 1								/* GPIO port for LEDs */
#define BTN_CHANNEL 2								/* GPIO port for LEDs */

XGpio Gpio;											/* GPIO Device driver instance */

int main(void){

//	int led = LED;
	u32 btn = 0x00;

	XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);

	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x00);
	XGpio_SetDataDirection(&Gpio, BTN_CHANNEL, 0xFF);

	while (1) {
		btn = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL);

		/* Write output to the LEDs. */
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, btn);
//
//		xil_printf("led is %x\r\n",btn);
//
//		usleep(500000);
	}

	return 0;
}

