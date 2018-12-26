

/***************************** Include Files *******************************/
#include "servo.h"

/************************** Function Definitions ***************************/

XServo_Config XServo_ConfigTable[XPAR_SERVO_NUM_INSTANCES] =
{
	{
		XPAR_SERVO_0_DEVICE_ID,
		XPAR_SERVO_0_S_AXI_BASEADDR
	}
};

XServo_Config *XServo_LookupConfig(u16 DeviceId)
{
	XServo_Config *CfgPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_SERVO_NUM_INSTANCES; Index++) {
		if (XServo_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XServo_ConfigTable[Index];
			break;
		}
	}

	return CfgPtr;
}

int XServo_CfgInitialize(XServo * InstancePtr, XServo_Config * Config,
                         UINTPTR EffectiveAddr)
{
	/* Assert arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);

	/* Set some default values. */
	InstancePtr->BaseAddress = EffectiveAddr;


	/*
	 * Indicate the instance is now ready to use, initialized without error
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
	return (XST_SUCCESS);
}

//0 - 200000 -> 0.5ms - 2.5ms -> 0 - 180
void XServo_SetPWM(XServo * InstancePtr, unsigned Channel, u32 Data) {
	SERVO_mWriteReg(InstancePtr->BaseAddress, (Channel - 1) * SERVO_CHAN_OFFSET, Data);
}

u32 XServo_GetPWM(XServo * InstancePtr, unsigned Channel) {
	u32 Data;
	Data = SERVO_mReadReg(InstancePtr->BaseAddress, (Channel - 1) * SERVO_CHAN_OFFSET);
	return Data;
}

