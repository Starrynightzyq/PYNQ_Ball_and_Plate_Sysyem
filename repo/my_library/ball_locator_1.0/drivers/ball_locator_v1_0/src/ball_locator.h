
#ifndef BALL_LOCATOR_H
#define BALL_LOCATOR_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xil_io.h"

#define BALL_LOCATOR_S_AXI_SLV_REG0_OFFSET 0
#define BALL_LOCATOR_S_AXI_SLV_REG1_OFFSET 4
#define BALL_LOCATOR_S_AXI_SLV_REG2_OFFSET 8
#define BALL_LOCATOR_S_AXI_SLV_REG3_OFFSET 12

#define XPAR_BALL_LOCATOR_0_DEVICE_ID 0
#define XPAR_BALL_LOCATOR_NUM_INSTANCES 1

/**************************** Type Definitions *****************************/
typedef struct {
	u16 DeviceId;		/* Unique ID  of device */
	UINTPTR BaseAddress;	/* Device base address */
} XBall_Config;

typedef struct {
	UINTPTR BaseAddress;	/* Device base address */
	u32 IsReady;		/* Device is initialized and ready */
} XBall;

/**
 *
 * Write a value to a BALL_LOCATOR register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the BALL_LOCATORdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void BALL_LOCATOR_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define BALL_LOCATOR_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a BALL_LOCATOR register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the BALL_LOCATOR device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 BALL_LOCATOR_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define BALL_LOCATOR_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the BALL_LOCATOR instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus BALL_LOCATOR_Reg_SelfTest(void * baseaddr_p);
XBall_Config *XBall_LookupConfig(u16 DeviceId);
int XBall_CfgInitialize(XBall * InstancePtr, XBall_Config * Config,
                        UINTPTR EffectiveAddr);
void XBall_WriteThreshold(XBall * InstancePtr, u32 mask);
void XBall_ReadCoords(XBall * InstancePtr, u32 *coordx, u32 *coordy);
#endif // BALL_LOCATOR_H
