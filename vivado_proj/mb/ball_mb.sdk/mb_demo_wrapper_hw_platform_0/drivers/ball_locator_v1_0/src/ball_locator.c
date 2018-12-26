

/***************************** Include Files *******************************/
#include "ball_locator.h"

/************************** Function Definitions ***************************/

XBall_Config XBall_ConfigTable[XPAR_BALL_LOCATOR_NUM_INSTANCES] =
{
	{
		XPAR_BALL_LOCATOR_0_DEVICE_ID,
		XPAR_BALL_LOCATOR_0_S_AXI_BASEADDR
	}
};

XBall_Config *XBall_LookupConfig(u16 DeviceId)
{
	XBall_Config *CfgPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_BALL_LOCATOR_NUM_INSTANCES; Index++) {
		if (XBall_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XBall_ConfigTable[Index];
			break;
		}
	}

	return CfgPtr;
}

int XBall_CfgInitialize(XBall * InstancePtr, XBall_Config * Config,
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

void XBall_WriteThreshold(XBall * InstancePtr, u32 mask) {
	BALL_LOCATOR_mWriteReg(InstancePtr->BaseAddress, BALL_LOCATOR_S_AXI_SLV_REG0_OFFSET, mask);
}

void XBall_ReadCoords(XBall * InstancePtr, u32 *coordx, u32 *coordy) {
	u32 data_reg1;
	data_reg1 = BALL_LOCATOR_mReadReg(InstancePtr->BaseAddress, BALL_LOCATOR_S_AXI_SLV_REG1_OFFSET);
	*coordy = data_reg1 & 0x0fff;
	*coordx = (data_reg1 >> 16) & 0x0fff;
}
