/*
 * pid.c
 *
 *  Created on: 2018年9月5日
 *      Author: admin
 */

#include "pid.h"

extern XServo Servo;	//定义在mian.c
_SetValue_s_ SV = { 0 };	//setpoint value
_PID_PwmOutput_s_ PwmOutPut = { 0 };
aparPID X = { 0 }, Y = { 0 };
int Motor_X_PWM, Motor_Y_PWM;                   //最终PWM输出值

//--------------------------------------------------------------------------------
//    下面数据变量用于处理坐标定位

u16 X_MAX = 0, X_MIN = Wide, X_NOW = 0, X_MIN_LSAT = 0, X_MAX_LSAT = 0; //X轴上面的数据范围为:0~Wide
u16 Y_MAX = 0, Y_MIN = Height, Y_NOW = 0, Y_MIN_LSAT = 0, Y_MAX_LSAT = 0; //Y轴上面的数据范围为：0~Height

//积分分离PID算法 且PID是不一样的
void PID(void) {
//	static float kp1=0.5,ki1=0.155,kd1=0.2;				//X轴PID系数
//	static float kp2=0.5,ki2=0.155,kd2=0.2;				//Y轴PID系数
//	static float e_X[2],e_Y[2];						//前后两次偏差

	static u8 flag_Y = 0, flag_X = 0;					//分离积分标志位
	if ((X_NOW > Wide) || ((Y_NOW > Height)))
	//如果小球的坐标不属于像素范围内时,退出程序，不进行PID运算
			{
		PwmOutPut.pwm_Y = 0;  //差值PWM附0
		PwmOutPut.pwm_X = 0;  //不进行控制
		return;
	}
	//计算X轴和Y轴偏差
	X.err[0] = (double)(SV.X - X_NOW);   //XY位置目标和实际差值  setpoint value -  controlled value
	Y.err[0] = (double)(SV.Y - Y_NOW);

	//printf("e_X:%f\r\n\r\n",e_X[0]);					//打印当前偏差

	//===========================Y轴PID运算========================================
	//积分分离, 以便在偏差较大时可以快速的减缩偏差，在偏差较小的时候，才加入积分，消除误差
	if (Y.err[0] >= 50.0 || Y.err[0] <= -50.0) //偏差像素点之间50个点左右
	{
		flag_Y = 0;    //不进行积分运算标志位
	} else {
		flag_Y = 1;   //进行积分运算标志位
		Y.e_I += Y.err[0]; //加入积分     error integral
	}

	//积分限幅  处理积分饱和现象
	if (Y.e_I > 600)
		Y.e_I = 600;
	if (Y.e_I < -600)
		Y.e_I = -600;

	//确切的微分没有

	//位置式PID
	PwmOutPut.pwm_Y = Y.kp * Y.err[0] + flag_Y * Y.ki * Y.e_I
			+ Y.kd * (Y.err[0] - Y.err[1]);
	//control value = p * error(0) + 积分标志位 * i * 积分误差 + d * （现在偏差-过去偏差）

	//===========================X轴PID运算============================================
	//积分分离,以便在偏差较大时可以快速的减缩偏差，在
	//偏差较小的时候，才加入积分，消除误差
	if (X.err[0] >= 50.0 || X.err[0] <= -50.0)
	//偏差进行判断操作
			{
		flag_X = 0;
	} else {
		flag_X = 1;
		X.e_I += X.err[0];
	}

	//积分限幅
	if (X.e_I > 600)
		X.e_I = 600;
	if (X.e_I < -600)
		X.e_I = -600;

	//位置式PID
	PwmOutPut.pwm_X = X.kp * X.err[0] + flag_X * X.ki * X.e_I
			+ X.kd * (X.err[0] - X.err[1]);

	//=======================================================================================
	//记录本次偏差
	Y.err[1] = Y.err[0];								//用本次偏差值代替上次偏差
	X.err[1] = X.err[0];								//用本次偏差值代替上次偏差

	//OCS_displayData(X_NOW,X.err[0],Y.err[0],X.e_I);
//	X_NOW = PwmOutPut.pwm_X;
//	Y_NOW = PwmOutPut.pwm_Y;
}

//0-200000
void Set_PWM(void) {
	static u32 PWM_Max = 180;   //执行器在该系统可操作最大行程最大值
	static u32 PWM_Min = 20;
	static u32 PWM_Max_Y = 180;
	static u32 PWM_Min_Y = 15;

	int pwm_x_out;
	int pwm_y_out;

	if(PwmOutPut.pwm_X <= -(SV.X_PWM)) {
		pwm_x_out = -(SV.X_PWM);
	}
	else {
		pwm_x_out = PwmOutPut.pwm_X;
	}
	if(PwmOutPut.pwm_Y <= -(SV.Y_PWM)) {
		pwm_y_out = -(SV.Y_PWM);
	}
	else {
		pwm_y_out = PwmOutPut.pwm_Y;
	}

	Motor_X_PWM = SV.X_PWM + pwm_x_out; //位置式PID  输出电机pwm
	Motor_Y_PWM = SV.Y_PWM + pwm_y_out;
	if (Motor_X_PWM > PWM_Max) //控制信号输出限制幅值，保护执行器
	{
		Motor_X_PWM = PWM_Max;
	} else if (Motor_X_PWM < PWM_Min) {
		Motor_X_PWM = PWM_Min;
	}
	if (Motor_Y_PWM > PWM_Max_Y) {
		Motor_Y_PWM = PWM_Max_Y;
	} else if (Motor_Y_PWM < PWM_Min_Y) {
		Motor_Y_PWM = PWM_Min_Y;
	}

	XServo_SetPWM(&Servo, 1, Motor_X_PWM*1000);  //离我附近的是这个坐标轴
	XServo_SetPWM(&Servo, 2, Motor_Y_PWM*1000);
//	xil_printf("xout0:%d\tyout:%d\t", PwmOutPut.pwm_X, PwmOutPut.pwm_Y);
//	xil_printf("xout:%d\tyout:%d\t", pwm_x_out, pwm_y_out);
//	xil_printf("xpwm:%d\typwm:%d\r\n", Motor_X_PWM, Motor_Y_PWM);
}
