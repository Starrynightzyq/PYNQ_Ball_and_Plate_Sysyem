/*
 * camera.c
 *
 *  Created on: 2018Äê12ÔÂ24ÈÕ
 *      Author: admin
 */

#include "camera.h"
#include "xgpio.h"
#include "xparameters.h"
//==============================================================================

#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID

static XIicPs Iic;
static XGpio Gpio_Cmos;

int InitCamera()
{
	int Status, result;
	XIicPs_Config *I2C_Config;	/**< configuration information for the device */

	I2C_Config = XIicPs_LookupConfig(IIC_DEVICE_ID);
	if(I2C_Config == NULL){
		xil_printf("Error: XIicPs_LookupConfig()\n");
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Iic, I2C_Config, I2C_Config->BaseAddress);
	if(Status != XST_SUCCESS){
		xil_printf("Error: XIicPs_CfgInitialize()\n");
		return XST_FAILURE;
	}

	Status = XIicPs_SelfTest(&Iic);
	if(Status != XST_SUCCESS){
		xil_printf("Error: XIicPs_SelfTest()\n");
		return XST_FAILURE;
	}

	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);
	xil_printf("I2C configuration done.\n");


	/* Initialize the GPIO driver. If an error occurs then exit */
	Status = XGpio_Initialize(&Gpio_Cmos, XPAR_AXI_GPIO_CMOS_DEVICE_ID);
	if (Status != XST_SUCCESS)
	{
		xil_printf("XGPIO Init failed\n\r");
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test on the GPIO.  This is a minimal test and only
	 * verifies that there is not any bus error when reading the data
	 * register
	 */
	XGpio_SelfTest(&Gpio_Cmos);

	/*
	 * Setup direction registers, and ensure reset_capture is low
	 */
	XGpio_SetDataDirection(&Gpio_Cmos, 1, 0); //Set 1 channel as output
	XGpio_DiscreteWrite(&Gpio_Cmos, 1, 0);		//reset pl cmos receiver

	xil_printf("Soft Rest OV7670.\n");
	result = WriteReg(REG_COM7, COM7_RESET);
	if(result != XST_SUCCESS){
		xil_printf("Error: OV767 RESET\n");
		return XST_FAILURE;
	}
	usleep(300*1000);

	return XST_SUCCESS;
}


void StartCamera(void) {
	XGpio_DiscreteWrite(&Gpio_Cmos, 1, 1);		//stop reset pl cmos receiver
}


int WriteReg(u8 reg, u8 value)
{
	int Status;
	u8 buff[2];

	buff[0] = reg;
	buff[1] = value;

	Status = XIicPs_MasterSendPolled(&Iic, buff, 2, OV7670ADDR);

	if(Status != XST_SUCCESS){
		xil_printf("WriteReg:I2C Write Fail\n");
		return XST_FAILURE;
	}
	// Wait until bus is idle to start another transfer.
	while(XIicPs_BusIsBusy(&Iic)){
		/* NOP */
	}

	usleep(30*1000);	// wait 30ms

	return XST_SUCCESS;
}


int ReadReg(u8 reg)
{
	u8 buff[2];

	buff[0] = reg;
	unsigned int status;
	status = XIicPs_MasterSendPolled(&Iic, buff, 1, OV7670ADDR);
	while(XIicPs_BusIsBusy(&Iic)){
		/* NOP */
	}

	status = XIicPs_MasterRecvPolled(&Iic, buff, 1, OV7670ADDR);
	while(XIicPs_BusIsBusy(&Iic)){
		/* NOP */
	}

	return buff[0];
}


void DumpReg(void)
{
	int i;

    xil_printf("AD : +0 +1 +2 +3 +4 +5 +6 +7 +8 +9 +A +B +C +D +E +F") ;
    for (i=0; i < OV7670_REGMAX; i++) {
        int data ;
        data = ReadReg(i) ; // READ REG
        if ((i & 0x0F) == 0) {
            xil_printf("\n%02X : ", i) ;
        }
        xil_printf("%02X ",data) ;
    }
    xil_printf("\n") ;

}


void InitOV7725Base(void) {
     WriteReg(0x0c, 0xd0);
     WriteReg(0x11, 0x00);
     WriteReg(0x12, 0x06);
}

