/*
 * AHRS_Hardware.h
 *
 *  Created on: 2018Äê12ÔÂ27ÈÕ
 *      Author: admin
 */

#ifndef SRC_MPU6500_AHRS_HARDWARE_H_
#define SRC_MPU6500_AHRS_HARDWARE_H_

#include "mpu6500.h"
#include "MahonyAHRS.h"
#include "../DronePara.h"

#define DEBUG

#define PI 3.1415926

void AHRS_HardWareinit(XIic *IicMpu6500);
void IMU_getValues(float * values);
void IMU_getInfo(void);

extern volatile float RDrone_R[3][3];
extern float Accel_Src[3];

#endif /* SRC_MPU6500_AHRS_HARDWARE_H_ */
