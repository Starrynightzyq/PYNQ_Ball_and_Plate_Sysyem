#ifndef __OV5640_H__
#define __OV5640_H__
#include "xil_types.h"
struct reginfo
{
    u16 reg;
    u8 val;
};

struct reginfo_8
{
    u8 reg;
    u8 val;
};

#define SEQUENCE_INIT        0x00
#define SEQUENCE_NORMAL      0x01

#define SEQUENCE_PROPERTY    0xFFFD
#define SEQUENCE_WAIT_MS     0xFFFE
#define SEQUENCE_END	     0xFFFF
#define SEQUENCE_8_PROPERTY    0xFD
#define SEQUENCE_8_WAIT_MS     0xFE
#define SEQUENCE_8_END	     0xFF
#define IIC_DEVICE_ID	XPAR_XIICPS_0_DEVICE_ID
int sensor_init();
#endif
