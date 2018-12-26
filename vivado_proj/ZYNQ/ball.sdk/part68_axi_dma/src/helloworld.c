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
#include "xaxidma.h"
#include "xsysmon.h"

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR	XPAR_AXIDMA_0_BASEADDR

#define RX_BUFFER_BASE	(0x00100000)
#define MAX_PKT_LEN		0x40

#define SYSMON_DEV_ID	XPAR_SYSMON_0_DEVICE_ID

XSysMon SysMonInst;
XAxiDma AxiDmaInst;

int main()
{
	XAxiDma_Config *AxiDmaCfgPtr;
	XSysMon_Config *SysMonCfgPtr;

	int Status;
	int i;
	u8 *RxBufferPtr;
	u32 value;
	u32 addr;
	u16 TempData;
	int Temp;
	int reset_done;

    init_platform();

    print("Hello World\n\r");

    SysMonCfgPtr = XSysMon_LookupConfig(SYSMON_DEV_ID);
    Status = XSysMon_CfgInitialize(&SysMonInst, SysMonCfgPtr,
    		SysMonCfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		printf("Initialization sysmon failed %d\r\n", Status);
		return XST_FAILURE;
	}

    AxiDmaCfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    Status = XAxiDma_CfgInitialize(&AxiDmaInst, AxiDmaCfgPtr);
	if (Status != XST_SUCCESS) {
		printf("Initialization axiDMA failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/*
	 * 配置XADC
	 * 将音序器模式设置为安全
	 * 根据需要设置/禁用警报
	 * 设置Sequencer Channel启用
	 * 设置ADC时钟分频器
	 * 将Sequencer模式设置为所需的模式
	 */
	XSysMon_SetSequencerMode(&SysMonInst, XSM_SEQ_MODE_SAFE);
	XSysMon_SetAlarmEnables(&SysMonInst, 0x0);
	XSysMon_SetSeqChEnables(&SysMonInst, XSM_SEQ_CH_TEMP);
	XSysMon_SetAdcClkDivisor(&SysMonInst, 32);
	XSysMon_SetSequencerMode(&SysMonInst, XSM_SEQ_MODE_CONTINPASS);
	TempData = XSysMon_GetAdcData(&SysMonInst, XSM_CH_TEMP);
	Temp = XSysMon_RawToTemperature(TempData);

	xil_printf("%u \r\n", TempData);
	xil_printf("%d \r\n", Temp);

	/*
	 *
	 */
	XSysMon_SetSequencerMode(&SysMonInst, XSM_SEQ_MODE_SINGCHAN);
	XSysMon_SetSingleChParams(&SysMonInst, XSM_CH_VPVN,
			FALSE, FALSE, FALSE);

	RxBufferPtr = (u8 *)RX_BUFFER_BASE;

	addr = (u32)RX_BUFFER_BASE;

	//Disable interrupts, we use polling mode

	XAxiDma_Reset(&AxiDmaInst);
	reset_done = XAxiDma_ResetIsDone(&AxiDmaInst);

	while(reset_done != 1);

	XAxiDma_IntrDisable(&AxiDmaInst, XAXIDMA_IRQ_ALL_MASK,
			XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDmaInst, XAXIDMA_IRQ_ALL_MASK,
			XAXIDMA_DMA_TO_DEVICE);

	Xil_Out32(0x60000000, 0x00000040);

	Status = XAxiDma_SimpleTransfer(&AxiDmaInst,
			(u32)RX_BUFFER_BASE,
			0x100,
			XAXIDMA_DEVICE_TO_DMA);
	if (Status != XST_SUCCESS) {
			xil_printf("XFER failed %d\r\n", Status);
			return XST_FAILURE;

	}
	xil_printf("AXI DMA Example From XADC to On Chip Memory nearly Completed\n\r");

	//Wait
	while(XAxiDma_Busy(&AxiDmaInst, XAXIDMA_DEVICE_TO_DMA));

	xil_printf("AXI DMA Example From XADC to On Chip Memory Completed\n\r");


    cleanup_platform();
    return 0;
}
