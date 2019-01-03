/*
 * camera.h
 *
 *  Created on: 2018��12��26��
 *      Author: admin
 */

#ifndef SRC_CAMERA_CAMERA_H_
#define SRC_CAMERA_CAMERA_H_

#include "xiic.h"
#include "../iic_my/iic_my.h"

#define SEQUENCE_END	     0xFF

struct reginfo
{
    u8 reg;
    u8 val;
};

int Camera_Init(XIic *IicInstancePtr);

#endif /* SRC_CAMERA_CAMERA_H_ */
