/*
 * iic_my.h
 *
 *  Created on: 2018年12月26日
 *      Author: admin
 */

#ifndef SRC_IIC_MY_IIC_MY_H_
#define SRC_IIC_MY_IIC_MY_H_

#include "xiic.h"
#include "xil_exception.h"
#include "xintc.h"

//#define AT24C02 			0x50  /*AT24C02  address*/
//#define OV7725				0x21  /* The 7 bit IIC Slave address. */
//#define SLAVE_ADDRESS 		OV7725	/* The 7 bit IIC Slave address. */

void Iic_SendHandler(XIic *InstancePtr);
void Iic_ReceiveHandler(XIic *InstancePtr);
void Iic_StatusHandler(XIic *InstancePtr, int Event);
int iic_setup_interrupt(XIic *IicInstancePtr, u8 Iic_Intc_Id, XIntc *IntcInstancePtr);

int IicInit(XIic *IicInstancePtr, u16 Iic_Dev_Id, u8 Iic_Intc_Id, int Slave_Address, XIntc *IntcInstancePtr);
int IicWriteData(XIic *InstancePtr, u8 reg, u8 *WriteBuffer, u16 ByteCount);
int IicReadData(XIic *InstancePtr, u8 reg, u8 *ReadBuffer, u16 ByteCount);

#endif /* SRC_IIC_MY_IIC_MY_H_ */
