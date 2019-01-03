/*
 * position_control.c
 *
 *  Created on: 2019年1月3日
 *      Author: admin
 */
#include "position_control.h"

extern Pid Angle_x, Angle_y, Position_x, Position_y;	//Angle内环PID参数，Position外环PID参数
extern DroneRTInfo RT_Info;	//传感器数据
extern _Pid_Out Pid_Out;		//PID输出数据
extern XServo Servo;
extern BallInfo Ball_Info;		//小球位置数据

static u32 pwm_x_o, pwm_y_o = 0;

//PWM输出
void Set_PWM(float pwm_x, float pwm_y) {

	pwm_x += 100;
	pwm_y += 100;

	if (pwm_x > PWM_MAX_X) //控制信号输出限制幅值，保护执行器
	{
		pwm_x = PWM_MAX_X;
	} else if (pwm_x < PWM_MIN_X) {
		pwm_x = PWM_MIN_X;
	}
	if (pwm_y > PWM_MAX_Y) {
		pwm_y = PWM_MAX_Y;
	} else if (pwm_y < PWM_MIN_Y) {
		pwm_y = PWM_MIN_Y;
	}

	pwm_x_o = pwm_x;
	pwm_y_o = pwm_y;

	XServo_SetPWM(&Servo, 1, (u32)pwm_x*1000);  //离我附近的是这个坐标轴
	XServo_SetPWM(&Servo, 2, (u32)pwm_y*1000);
}

//内环角度控制
void Angle_Control(float angle_x_target, float angle_y_target) {
	Pid_Out.angle_x_o = PID_Control(&Angle_x, angle_x_target, RT_Info.Roll, 0.005, 80);
	Pid_Out.angle_y_o = PID_Control(&Angle_y, angle_y_target, RT_Info.Pitch, 0.005, 80);
	Set_PWM(Pid_Out.angle_x_o, Pid_Out.angle_y_o);
}

//外环位置控制
void Position_Control(u16 position_x_target, u16 position_y_target) {
	Pid_Out.position_x_o = PID_Control(&Position_x, (float)position_x_target, Ball_Info.x, 0.005, 80);
	Pid_Out.position_y_o = PID_Control(&Position_y, (float)position_y_target, Ball_Info.y, 0.005, 80);
}

//打印PWM值
void Print_PWM() {
//	char *str;
//	sprintf(str, "pid_o: %f %f", Pid_Out.angle_x_o, Pid_Out.angle_y_o);
//	puts(str);
//	printf("pid_o:%f %f ", Pid_Out.angle_x_o, Pid_Out.angle_y_o);
	xil_printf("PWM out: x = %d, y = %d\r\n", (u32)pwm_x_o, (u32)pwm_y_o);
}
