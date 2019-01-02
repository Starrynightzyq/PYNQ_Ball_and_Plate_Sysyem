/*
 * task.c
 *
 *  Created on: 2018��9��5��
 *      Author: admin
 */

#include "task.h"

u8 taskEnd = 0;

extern aparPID X, Y;	//������pid.c
extern _SetValue_s_ SV;	//������pid.c
extern u16 X_NOW;	//������pid.c��
extern u16 Y_NOW;
extern XServo Servo;	//������mian.c
extern normalized PIDALL , PWMALL ;       //��һ������

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
//			XServo_SetPWM(&Servo, 1, SV.X_PWM);  //����ˮƽ
//			XServo_SetPWM(&Servo, 2, SV.Y_PWM);
		}
	} else {
		taskEnd = 0;
	}
}

void task1_init(void) {
	X.Kp = 0.01;   //6 10 0.2 0.2 20 40
	Y.Kp = 0.01;
	X.Ki = 0.01;   ///����ȥ6 0 18.8
	Y.Ki = 0.01;
	X.Kd = 1.15;	//1.05
	Y.Kd = 1.15;

	//��һ������
	PIDALL.parameter = 0.01;
	PWMALL.parameter = 0.01;

	SV.X = 160;  //�޸���Ŀ�� XY  118 179  244 136  ���ҽ��Ķ������
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