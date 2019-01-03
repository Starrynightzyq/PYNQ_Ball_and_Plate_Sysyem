/*
 * position_control.h
 *
 *  Created on: 2019年1月3日
 *      Author: admin
 */

#ifndef SRC_CONTROL_POSITION_CONTROL_H_
#define SRC_CONTROL_POSITION_CONTROL_H_

#include "../DronePara.h"
#include "PID_Control.h"
#include "servo.h"
#include "xil_types.h"
#include "stdio.h"

//执行器在该系统可操作最大行程最大值
#define PWM_MAX_X 160
#define PWM_MIN_X 40
#define PWM_MAX_Y 160
#define PWM_MIN_Y 40

//PWM输出
void Set_PWM(float pwm_x, float pwm_y);

//内环角度控制
void Angle_Control(float angle_x_target, float angle_y_target);
//外环位置控制
void Position_Control(u16 position_x_target, u16 position_y_target);
//打印PWM值
void Print_PWM();

#endif /* SRC_CONTROL_POSITION_CONTROL_H_ */
