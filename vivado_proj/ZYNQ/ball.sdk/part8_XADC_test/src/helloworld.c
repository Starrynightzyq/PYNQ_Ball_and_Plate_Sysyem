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
#include "xadcps.h"
#include "xil_types.h"
#include "sleep.h"

#define XPAR_AXI_XADC_0_DEVICE_ID 0


static XAdcPs XADCMonInst;

int main()
{

  XAdcPs_Config *ConfigPtr;
  XAdcPs *XADCInstPtr = &XADCMonInst;

  //status of initialisation
  int Status_ADC;

  //temperature readings
  u32 TempRawData;
  float TempData;

  //Vcc Int readings
  u32 VccIntRawData;
  float VccIntData;

  //Vcc Aux readings
  u32 VccAuxRawData;
  float VccAuxData;

  //Vbram readings
  u32 VBramRawData;
  float VBramData;

  //VccPInt readings
  u32 VccPIntRawData;
  float VccPIntData;

  //VccPAux readings
  u32 VccPAuxRawData;
  float VccPAuxData;

  //Vddr readings
  u32 VDDRRawData;
  float VDDRData;

  init_platform();

  printf("Hello World! \n\r");

  //XADC initilization

  //look up the configuration of the XADC to be initialized
  ConfigPtr = XAdcPs_LookupConfig(XPAR_AXI_XADC_0_DEVICE_ID);
  if (ConfigPtr == NULL) {
    return XST_FAILURE;
  }

  //use the information previously obtained and stored within the configuration pointer
  Status_ADC = XAdcPs_CfgInitialize(XADCInstPtr, ConfigPtr, ConfigPtr->BaseAddress);
  if (XST_SUCCESS != Status_ADC) {
    print("ADC INIT FAILED\n\r");
    return XST_FAILURE;
  }

  //self test
  Status_ADC = XAdcPs_SelfTest(XADCInstPtr);
  if (Status_ADC != XST_SUCCESS) {
    return XST_FAILURE;
  }

  //stop sequencer
  //通过将其设置为单个通道来停止顺控程序执行其当前操作
  XAdcPs_SetSequencerMode(XADCInstPtr, XADCPS_SEQ_MODE_SINGCHAN);

  //disable alarms
  //禁用可能设置的任何警报
  XAdcPs_SetAlarmEnables(XADCInstPtr, 0x0);

  //configure sequencer to just sample internal on chip parameters
  //以所需顺序重新启动顺控程序
  XAdcPs_SetSeqInputMode(XADCInstPtr, XADCPS_SEQ_MODE_SAFE);

  //configure the channel enables we want to monitor
  //配置我想要采样的通道的启用
  XAdcPs_SetSeqChEnables(XADCInstPtr, XADCPS_CH_TEMP | XADCPS_CH_VCCINT | XADCPS_CH_VCCAUX | XADCPS_CH_VBRAM | XADCPS_CH_VCCPINT |
                         XADCPS_CH_VCCPAUX | XADCPS_CH_VCCPDRO);

  while (1) {
    TempRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_TEMP);	//从XADC读取样本
    TempData = XAdcPs_RawToTemperature(TempRawData);				//将原始XADC值转换为它们的实际温度当量
    printf("Raw Temp %lu Real Temp %f \n\r", TempRawData, TempData);

    VccIntRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VCCINT);
    VccIntData = XAdcPs_RawToVoltage(VccIntRawData);				//将原始XADC值转换为它们的实际电压当量
    printf("Raw VccInt %lu Real VccInt %f \n\r", VccIntRawData, VccIntData);

    VccAuxRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VCCAUX);
    VccAuxData = XAdcPs_RawToVoltage(VccAuxRawData);
    printf("Raw VccAux %lu Real VccAux %f \n\r", VccAuxRawData, VccAuxData);

    //    VrefPRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VREFP);
    //    VrefPData = XAdcPs_RawToVoltage(VrefPRawData);
    //    printf("Raw VRefP %lu Real VRefP %f \n\r", VrefPRawData, VrefPData);

    //    VrefNRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VREFN);
    //    VrefNData = XAdcPs_RawToVoltage(VrefNRawData);
    //   printf("Raw VRefN %lu Real VRefN %f \n\r", VrefNRawData, VrefNData);

    VBramRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VBRAM);
    VBramData = XAdcPs_RawToVoltage(VBramRawData);
    printf("Raw VccBram %lu Real VccBram %f \n\r", VBramRawData, VBramData);

    VccPIntRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VCCPINT);
    VccPIntData = XAdcPs_RawToVoltage(VccPIntRawData);
    printf("Raw VccPInt %lu Real VccPInt %f \n\r", VccPIntRawData, VccPIntData);

    VccPAuxRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VCCPAUX);
    VccPAuxData = XAdcPs_RawToVoltage(VccPAuxRawData);
    printf("Raw VccPAux %lu Real VccPAux %f \n\r", VccPAuxRawData, VccPAuxData);

    VDDRRawData = XAdcPs_GetAdcData(XADCInstPtr, XADCPS_CH_VCCPDRO);
    VDDRData = XAdcPs_RawToVoltage(VDDRRawData);
    printf("Raw VccDDR %lu Real VccDDR %f \n\r", VDDRRawData, VDDRData);

    usleep(5000000);
  }

  return 0;
}

