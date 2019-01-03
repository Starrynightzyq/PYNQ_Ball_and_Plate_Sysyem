/*
 * pid.c
 *
 *  Created on: 2019年1月2日
 *      Author: ZYF
 */



#include "pid.h"

extern XServo Servo;	//定义在mian.c

_SetValue_s_ SV = { 0 };	//setpoint value

_PID_PwmOutput_s_ PwmOutPut = { 0 };

aparPID X = { 0 } , Y = { 0 } , Angle_x = { 0 } , Angle_y = { 0 };

normalized PIDALL = { 0 }, PWMALL = { 0 };

int Motor_X_PWM, Motor_Y_PWM;


/*限幅函数*/
float Limits_data(float LimitsData,float LimitsUp,float LimitsDown)
{
    if(LimitsData > LimitsUp)
    {
        LimitsData = LimitsUp;
    }
    if(LimitsData < LimitsDown)
    {
        LimitsData = LimitsDown;
    }
    return LimitsData;
}

//PID算法控制
float PID_Control(aparPID *PID, float expect_PID, float feedback_PID, float PIDtime,float Integrallimiter){

    PID->error = expect_PID - feedback_PID;
    PID->differential = (PID->error - PID->lasterror)/PIDtime;

    PID->differential = PID->differentialFliter + (PIDtime / (lowpass_filter + PIDtime)) * (PID->differential - PID->differentialFliter);

    PID->differentialFliter = PID->differential;

    PID->lasterror = PID->error;


    PID->pOut = PID->Kp * PID->error;
    PID->iOut += PID->Ki * PID->error;
    PID->dOut = PID->Kd * PID->differential;

    PID->iOut = Limits_data(PID->iOut,Integrallimiter,-Integrallimiter);

    PID->value = PID->pOut + PID->iOut + PID->dOut;

    return PID->value;
}

//PWM输出

void Set_PWM(void) {
	static u32 PWM_Max = 170;   //执行器在该系统可操作最大行程最大值
	static u32 PWM_Min = 20;
	static u32 PWM_Max_Y = 170;
	static u32 PWM_Min_Y = 15;

	int pwm_x_out;
	int pwm_y_out;
	//参数归一化
	PwmOutPut.angle_X_1 = PwmOutPut.angle_X * PWMALL.parameter;
	PwmOutPut.angle_Y_1 = PwmOutPut.angle_X * PWMALL.parameter;

	if(PwmOutPut.angle_X_1 <= -(SV.X_PWM)) {
		pwm_x_out = -(SV.X_PWM);
	}
	else {
		pwm_x_out = PwmOutPut.angle_X_1;
	}
	if(PwmOutPut.angle_Y_1 <= -(SV.Y_PWM)) {
		pwm_y_out = -(SV.Y_PWM);
	}
	else {
		pwm_y_out = PwmOutPut.angle_Y_1;
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





}





