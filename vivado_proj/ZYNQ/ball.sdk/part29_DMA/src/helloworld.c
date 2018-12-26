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
#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xdmaps.h"

#define DMA_DEVICE_ID 	XPAR_XDMAPS_1_DEVICE_ID
#define INTC_DEVICE_ID 	XPAR_SCUGIC_SINGLE_DEVICE_ID
#define DMA_FAULT_INTR 	XPAR_XDMAPS_0_FAULT_INTR
#define DMA_DONE_INTR_0	XPAR_XDMAPS_0_DONE_INTR_0
#define DMA_LENGTH		1024

XDmaPs DmaInstance;
XScuGic GicInstance;

static int Src[DMA_LENGTH];
static int Dst[DMA_LENGTH];

void XDma_Config(u16 DeviceId);
void SetupInterrupt(XScuGic *GicPtr, XDmaPs *DmaPtr);
void DmaISR(uint Channel, XDmaPs_Cmd *DmaCmd, void *CallbackRef);

int main()
{
    init_platform();

    print("Hello World\n\r");

    XDma_Config(DMA_DEVICE_ID);

    cleanup_platform();
    return 0;
}

void XDma_Config(u16 DeviceId) {
	int Index;
	uint Channel = 0;
	volatile int Checked[XDMAPS_CHANNELS_PER_DEV];

	XDmaPs_Config *DmaCfg;
	XDmaPs *DmaInst = &DmaInstance;
	XDmaPs_Cmd DmaCmd;

	memset(&DmaCmd, 0, sizeof(XDmaPs_Cmd));

	DmaCmd.ChanCtrl.SrcBurstSize = 4;
	DmaCmd.ChanCtrl.SrcBurstLen = 4;
	DmaCmd.ChanCtrl.SrcInc = 1;
	DmaCmd.ChanCtrl.DstBurstSize = 4;
	DmaCmd.ChanCtrl.DstBurstLen = 4;
	DmaCmd.ChanCtrl.DstInc = 1;
	DmaCmd.BD.SrcAddr = (u32) Src;
	DmaCmd.BD.DstAddr = (u32) Dst;
	DmaCmd.BD.Length = DMA_LENGTH * sizeof(int);

	//³õÊ¼»¯DMA¿ØÖÆÆ÷
	DmaCfg = XDmaPs_LookupConfig(DeviceId);
	XDmaPs_CfgInitialize(DmaInst, DmaCfg, DmaCfg->BaseAddress);
	SetupInterrupt(&GicInstance, DmaInst);

	//Initialize source
	for(Index = 0; Index < DMA_LENGTH; Index++) {
		Src[Index] = DMA_LENGTH - Index;
	}

	//Clear destination
	for(Index = 0; Index < DMA_LENGTH; Index++) {
		Dst[Index] = 0;
	}

	Checked[Channel] = 0;

	//Set the Done interrupt handler
	XDmaPs_SetDoneHandler(DmaInst, Channel, DmaISR,
			(void *)(Checked + Channel));
	XDmaPs_Start(DmaInst, Channel, &DmaCmd, 0);
	XDmaPs_Print_DmaProg(&DmaCmd);
}

void SetupInterrupt(XScuGic *GicPtr, XDmaPs *DmaPtr) {
	XScuGic_Config *GicConfig;

	Xil_ExceptionInit();

	GicConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);

	XScuGic_CfgInitialize(GicPtr, GicConfig, GicConfig->CpuBaseAddress);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_InterruptHandler)XScuGic_InterruptHandler,
			GicPtr);

	XScuGic_Connect(GicPtr, DMA_FAULT_INTR,
			(Xil_InterruptHandler)XDmaPs_FaultISR,
			(void *)DmaPtr);

	XScuGic_Connect(GicPtr, DMA_DONE_INTR_0,
			(Xil_InterruptHandler)XDmaPs_DoneISR_0,
			(void *)DmaPtr);

	XScuGic_Enable(GicPtr, DMA_DONE_INTR_0);

	Xil_ExceptionEnable();
}

void DmaISR(uint Channel, XDmaPs_Cmd *DmaCmd, void *CallbackRef) {
	//done handler
	volatile int *Checked = (volatile int *)CallbackRef;
	int Index;
	int Status = 1;
	int *Src;
	int *Dst;

	Src = (int *)DmaCmd->BD.SrcAddr;
	Dst = (int *)DmaCmd->BD.DstAddr;

	//DMA successful
	//compare the src and dst buffer
	for(Index = 0; Index < DMA_LENGTH; Index++) {
		if((Src[Index] != Dst[Index] ||
				Dst[Index] != DMA_LENGTH - Index)) {
			Status = -XST_FAILURE;
		}
	}

	*Checked = Status;
	xil_printf("DMA passed\r\n");
}
