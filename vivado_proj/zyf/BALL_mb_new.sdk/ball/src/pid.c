/*
 * pid.c
 *
 *  Created on: 2018��9��5��
 *      Author: admin
 */

#include "pid.h"

extern XServo Servo;	//������mian.c
_SetValue_s_ SV = { 0 };	//setpoint value
_PID_PwmOutput_s_ PwmOutPut = { 0 };
aparPID X = { 0 }, Y = { 0 };
int Motor_X_PWM, Motor_Y_PWM;                    //����PWM���ֵ
normalized PIDALL = { 0 }, PWMALL = { 0 };       //��һ������

//--------------------------------------------------------------------------------
//    �������ݱ������ڴ������궨λ

u16 X_MAX = 0, X_MIN = Wide, X_NOW = 0, X_MIN_LSAT = 0, X_MAX_LSAT = 0; //X����������ݷ�ΧΪ:0~Wide
u16 Y_MAX = 0, Y_MIN = Height, Y_NOW = 0, Y_MIN_LSAT = 0, Y_MAX_LSAT = 0; //Y����������ݷ�ΧΪ��0~Height

u16 X_NOW_1=0 , Y_NOW_1=0 ;    //PIDǰ��һ����Ĳ���

/*�޷�����*/
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

//PID�㷨����
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

//PID�㷨����

void PID(void) {

	//PIDǰ������һ��
	X_NOW_1=X_NOW*PIDALL.parameter;
	Y_NOW_1=Y_NOW*PIDALL.parameter;
	SV.X_1 = SV.X*PIDALL.parameter;
	SV.Y_1 = SV.Y*PIDALL.parameter;
    if ((X_NOW > Wide) || ((Y_NOW > Height))){	 //���С������겻�������ط�Χ��ʱ,�˳����򣬲�����PID����
	  	    PwmOutPut.pwm_Y = 0;  //��ֵPWM��0
		    PwmOutPut.pwm_X = 0;  //�����п���
		    return;
	}
    else{

           PwmOutPut.pwm_X = PID_Control(&X,SV.X_1,X_NOW_1,0.002,80);
           PwmOutPut.pwm_Y = PID_Control(&Y,SV.Y_1,Y_NOW_1,0.002,80);
       	   PwmOutPut.pwm_X_1 = PwmOutPut.pwm_X*PWMALL.parameter;            //��һ��
       	   PwmOutPut.pwm_Y_1 = PwmOutPut.pwm_Y*PWMALL.parameter;            //��һ��
    }


}

//0-200000
void Set_PWM(void) {
	static u32 PWM_Max = 170;   //ִ�����ڸ�ϵͳ�ɲ�������г����ֵ
	static u32 PWM_Min = 20;
	static u32 PWM_Max_Y = 170;
	static u32 PWM_Min_Y = 15;

	int pwm_x_out;
	int pwm_y_out;


	if(PwmOutPut.pwm_X_1 <= -(SV.X_PWM)) {
		pwm_x_out = -(SV.X_PWM);
	}
	else {
		pwm_x_out = PwmOutPut.pwm_X;
	}
	if(PwmOutPut.pwm_Y_1 <= -(SV.Y_PWM)) {
		pwm_y_out = -(SV.Y_PWM);
	}
	else {
		pwm_y_out = PwmOutPut.pwm_Y;
	}

	Motor_X_PWM = SV.X_PWM + pwm_x_out; //  ������pwm
	Motor_Y_PWM = SV.Y_PWM + pwm_y_out;
	if (Motor_X_PWM > PWM_Max) //�����ź�������Ʒ�ֵ������ִ����
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

	XServo_SetPWM(&Servo, 1, Motor_X_PWM*1000);  //���Ҹ����������������
	XServo_SetPWM(&Servo, 2, Motor_Y_PWM*1000);
//	xil_printf("xout0:%d\tyout:%d\t", PwmOutPut.pwm_X, PwmOutPut.pwm_Y);
//	xil_printf("xout:%d\tyout:%d\t", pwm_x_out, pwm_y_out);
//	xil_printf("xpwm:%d\typwm:%d\r\n", Motor_X_PWM, Motor_Y_PWM);
}