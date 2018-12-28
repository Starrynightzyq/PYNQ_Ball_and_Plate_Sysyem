
#ifndef SERVO_H
#define SERVO_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define SERVO_S_AXI_SLV_REG0_OFFSET 0
#define SERVO_S_AXI_SLV_REG1_OFFSET 4
#define SERVO_S_AXI_SLV_REG2_OFFSET 8
#define SERVO_S_AXI_SLV_REG3_OFFSET 12
#define SERVO_CHAN_OFFSET 4


/**************************** Type Definitions *****************************/
typedef struct {
	u16 DeviceId;		/* Unique ID  of device */
	UINTPTR BaseAddress;	/* Device base address */
} XServo_Config;

typedef struct {
	UINTPTR BaseAddress;	/* Device base address */
	u32 IsReady;		/* Device is initialized and ready */
} XServo;
/**
 *
 * Write a value to a SERVO register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the SERVOdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void SERVO_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define SERVO_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a SERVO register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the SERVO device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 SERVO_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define SERVO_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the SERVO instance to be worked on.
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
XStatus SERVO_Reg_SelfTest(void * baseaddr_p);

XServo_Config *XServo_LookupConfig(u16 DeviceId);

int XServo_CfgInitialize(XServo * InstancePtr, XServo_Config * Config,
                         UINTPTR EffectiveAddr);

void XServo_SetPWM(XServo * InstancePtr, unsigned Channel, u32 Data);

u32 XServo_GetPWM(XServo * InstancePtr, unsigned Channel);
#endif // SERVO_H
