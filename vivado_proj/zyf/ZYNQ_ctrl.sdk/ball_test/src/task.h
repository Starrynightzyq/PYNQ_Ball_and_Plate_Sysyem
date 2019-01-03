/*
 * task.h
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */

#ifndef SRC_TASK_H_
#define SRC_TASK_H_

#include "flag.h"
#include "./mpu6500/AHRS_Hardware.h"
#include "uart_cam.h"
#include "pid.h"

//void MPU6500_Task();
void TimerTask(void);

void ExIntrTask(void);

#endif /* SRC_TASK_H_ */
