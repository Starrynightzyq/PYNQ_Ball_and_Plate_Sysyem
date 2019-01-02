/*
 * camera.c
 *
 *  Created on: 2018��12��26��
 *      Author: admin
 */

#include "camera.h"
#include "sleep.h"

static struct reginfo sensor_ov7725_init_data[] =
{
	{0x12, 0x80},	//Soft Rest OV Camera
	{0x1C, 0x7F},	//Manufacturer ID Byte - High (Read only)
	{0x1D, 0xA2},	//Manufacturer ID Byte - Low (Read only)
	{0x12, 0x80},	// BIT[7]-Reset all the Reg
	{0x3d, 0x03},	//DC offset for analog process
	{0x15, 0x02},	//COM10: href/vsync/pclk/data reverse(Vsync H valid)
	{0x17, 0x3f},	//VGA:	8'h22;	QVGA:	8'h3f;
	{0x18, 0x50},	//VGA:	8'ha4;	QVGA:	8'h50;
	{0x19, 0x03},	//VGA:	8'h07;	QVGA:	8'h03;
	{0x1a, 0x78},	//VGA:	8'hf0;	QVGA:	8'h78;
	{0x32, 0x00},	//HREF	/ 8'h80
	{0x29, 0xF0},	//VGA:	8'hA0;	QVGA:	8'hF0
	{0x2C, 0x78},	//VGA:	8'hF0;	QVGA:	8'h78
	{0x0d, 0x41},	//Bypass PLL
	{0x11, 0x01},	//CLKRC,Finternal clock = Finput clk*PLL multiplier/[(CLKRC[5:0]+1)*2] = 25MHz*4/[(x+1)*2]
					//00: 50fps, 01:25fps, 03:12.5fps	(50Hz Fliter)
	{0x12, 0x46},	//BIT[6]:	0:VGA; 1;QVGA
					//BIT[3:2]:	01:RGB565
					//VGA:	00:YUV; 01:Processed Bayer RGB; 10:RGB;	11:Bayer RAW; BIT[7]-Reset all the Reg
	{0x0C, 0xD0},	//COM3: Bit[7:6]:Vertical/Horizontal mirror image ON/OFF, Bit[0]:Color bar; Default:8'h10
	//DSP control
	{0x42, 0x7f},	//BLC Blue Channel Target Value, Default: 8'h80
	{0x4d, 0x09},	//BLC Red Channel Target Value, Default: 8'h80
	{0x63, 0xf0},	//AWB Control
	{0x64, 0xff},	//DSP_Ctrl1:
	{0x65, 0x00},	//DSP_Ctrl2:
	{0x66, 0x00},	//{COM3[4](0x0C), DSP_Ctrl3[7]}:00:YUYV;	01:YVYU;	[10:UYVY]	11:VYUY
	{0x67, 0x00},	//DSP_Ctrl4:00/01: YUV or RGB; 10: RAW8; 11: RAW10
	//AGC AEC AWB
	{0x13, 0xff},
	{0x0f, 0xc5},
	{0x14, 0x11},
	{0x22, 0x98},	//Banding Filt er Minimum AEC Value; Default: 8'h09
	{0x23, 0x03},	//Banding Filter Maximum Step
	{0x24, 0x40},	//AGC/AEC - Stable Operating Region (Upper Limit)
	{0x25, 0x30},	//AGC/AEC - Stable Operating Region (Lower Limit)
	{0x26, 0xa1},	//AGC/AEC Fast Mode Operating Region
	{0x2b, 0x9e},	//TaiWan: 8'h00:60Hz Filter; Mainland: 8'h9e:50Hz Filter
	{0x6b, 0xaa},	//AWB Control 3
	{0x13, 0xff},	//8'hff: AGC AEC AWB Enable; 8'hf0: AGC AEC AWB Disable;
	//matrix sharpness brightness contrast UV
	{0x90, 0x0a},
	{0x91, 0x01},
	{0x92, 0x01},
	{0x93, 0x01},
	{0x94, 0x5f},
	{0x95, 0x53},
	{0x96, 0x11},
	{0x97, 0x1a},
	{0x98, 0x3d},
	{0x99, 0x5a},
	{0x9a, 0x1e},
	{0x9b, 0x3f},	//Brightness
	{0x9c, 0x25},
	{0x9e, 0x81},
	{0xa6, 0x06},
	{0xa7, 0x65},
	{0xa8, 0x65},
	{0xa9, 0x80},
	{0xaa, 0x80},
	//Gamma correction
	{0x7e, 0x0c},
	{0x7f, 0x16},	//
	{0x80, 0x2a},
	{0x81, 0x4e},
	{0x82, 0x61},
	{0x83, 0x6f},
	{0x84, 0x7b},
	{0x85, 0x86},
	{0x86, 0x8e},
	{0x87, 0x97},
	{0x88, 0xa4},
	{0x89, 0xaf},
	{0x8a, 0xc5},
	{0x8b, 0xd7},
	{0x8c, 0xe8},
	{0x8d, 0x20},
	//Others
	{0x0e, 0x65},//night mode auto frame rate control
	{0x1C, 0x7F},

	{SEQUENCE_END, 0x00}
};

static struct reginfo sensor_original_init_data[] =
{
	{0x12, 0x80},
	{0x3d, 0x03},
	{0x15, 0x00},
	{0x17, 0x3f},
	{0x18, 0x50},
	{0x19, 0x03},
	{0x1a, 0x78},
	{0x32, 0x00},
	{0x29, 0x50},
	{0x2c, 0x78},
	{0x2a, 0x00},
	{0x11, 0x00},
	{0x12, 0x46},
	{0x0c, 0xd0},
	{0x42, 0x80},
	{0x4d, 0x0a},
	{0x63, 0xf0},
	{0x64, 0xff},
	{0x65, 0x00},
	{0x66, 0x00},
	{0x67, 0x00},
	{0x13, 0xf0},
	{0x0d, 0x41},
	{0x0f, 0xc5},
	{0x14, 0x11},
	{0x22, 0x7f},
	{0x23, 0x03},
	{0x24, 0x40},
	{0x25, 0x30},
	{0x26, 0xa1},
	{0x2b, 0x9e},
	{0x6b, 0xaa},
	{0x13, 0xff},
	{0x90, 0x0a},
	{0x91, 0x01},
	{0x92, 0x01},
	{0x93, 0x01},
	{0x94, 0x5f},
	{0x95, 0x53},
	{0x96, 0x11},
	{0x97, 0x1a},
	{0x98, 0x3d},
	{0x99, 0x5a},
	{0x9a, 0x1e},
	{0x9b, 0x15},
	{0x9c, 0x25},
	{0x9e, 0x81},
	{0xa6, 0x06},
	{0xa7, 0x65},
	{0xa8, 0x65},
	{0xa9, 0x80},
	{0xaa, 0x80},
	{0x7e, 0x0c},
	{0x7f, 0x16},
	{0x80, 0x2a},
	{0x81, 0x4e},
	{0x82, 0x61},
	{0x83, 0x6f},
	{0x84, 0x7b},
	{0x85, 0x86},
	{0x86, 0x8e},
	{0x87, 0x97},
	{0x88, 0xa4},
	{0x89, 0xaf},
	{0x8a, 0xc5},
	{0x8b, 0xd7},
	{0x8c, 0xe8},
	{0x8d, 0x20},

	{SEQUENCE_END, 0x00}
};

void Camera_Set_Reg(XIic *IicInstancePtr, struct reginfo *regarray) {
    int i = 1;
	IicWriteData(IicInstancePtr, regarray[0].reg, &(regarray[0].val), 1);
	usleep(200);
    while (regarray[i].reg != SEQUENCE_END) {
    	IicWriteData(IicInstancePtr, regarray[i].reg, &(regarray[i].val), 1);
		i++;
	}
}

int Camera_Init(XIic *IicInstancePtr)
{
	Camera_Set_Reg(IicInstancePtr,sensor_original_init_data);
	return 0;
}