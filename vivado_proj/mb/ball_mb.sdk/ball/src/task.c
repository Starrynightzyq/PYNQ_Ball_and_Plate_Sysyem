/*
 * task.c
 *
 *  Created on: 2018年9月5日
 *      Author: admin
 */

#include "task.h"

u8 taskEnd = 0;

extern aparPID X, Y;	//定义在pid.c
extern _SetValue_s_ SV;	//定义在pid.c
extern u16 X_NOW;	//定义在pid.c里
extern u16 Y_NOW;
extern XServo Servo;	//定义在mian.c

static u32 angle = 0;
static u8 flag_test = 0;

void task1(void) {
	PID();
	Set_PWM();
	if (X_NOW > SV.X - 8 && X_NOW < SV.X + 8 && Y_NOW > SV.Y - 8
			&& Y_NOW < SV.Y + 8) {
		taskEnd++;
		if (taskEnd == 30) {
			//taskFlag = 0;
//			XServo_SetPWM(&Servo, 1, SV.X_PWM);  //设置水平
//			XServo_SetPWM(&Servo, 2, SV.Y_PWM);
		}
	} else {
		taskEnd = 0;
	}
}

void task1_init(void) {
	X.kp = 0.20;   //6 10 0.2 0.2 20 40
	Y.kp = 0.20;
	X.ki = 0.04;   ///调整去6 0 18.8
	Y.ki = 0.04;
	X.kd = 1.08;	//1.05
	Y.kd = 1.08;

	X.e_I = 0;
	Y.e_I = 0;

	SV.X = 160;  //修改区目标 XY  118 179  244 136  离我近的舵机控制
	SV.Y = 120;  //
	SV.X_PWM = 100;
	SV.Y_PWM = 100;
}

void task_test_servo(void) {
	if(flag_test == 0) {
		if(angle >= 150000) {
			flag_test = 1;
		}
		else {
			angle += 10000;
		}
	}
	else {
		if(angle <= 40000) {
			flag_test = 0;
		}
		else {
			angle -= 10000;
		}
	}
	XServo_SetPWM(&Servo, 1, angle);
	XServo_SetPWM(&Servo, 2, angle);
}
