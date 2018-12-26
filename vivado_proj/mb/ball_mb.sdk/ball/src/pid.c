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
int Motor_X_PWM, Motor_Y_PWM;                   //����PWM���ֵ

//--------------------------------------------------------------------------------
//    �������ݱ������ڴ������궨λ

u16 X_MAX = 0, X_MIN = Wide, X_NOW = 0, X_MIN_LSAT = 0, X_MAX_LSAT = 0; //X����������ݷ�ΧΪ:0~Wide
u16 Y_MAX = 0, Y_MIN = Height, Y_NOW = 0, Y_MIN_LSAT = 0, Y_MAX_LSAT = 0; //Y����������ݷ�ΧΪ��0~Height

//���ַ���PID�㷨 ��PID�ǲ�һ����
void PID(void) {
//	static float kp1=0.5,ki1=0.155,kd1=0.2;				//X��PIDϵ��
//	static float kp2=0.5,ki2=0.155,kd2=0.2;				//Y��PIDϵ��
//	static float e_X[2],e_Y[2];						//ǰ������ƫ��

	static u8 flag_Y = 0, flag_X = 0;					//������ֱ�־λ
	if ((X_NOW > Wide) || ((Y_NOW > Height)))
	//���С������겻�������ط�Χ��ʱ,�˳����򣬲�����PID����
			{
		PwmOutPut.pwm_Y = 0;  //��ֵPWM��0
		PwmOutPut.pwm_X = 0;  //�����п���
		return;
	}
	//����X���Y��ƫ��
	X.err[0] = (double)(SV.X - X_NOW);   //XYλ��Ŀ���ʵ�ʲ�ֵ  setpoint value -  controlled value
	Y.err[0] = (double)(SV.Y - Y_NOW);

	//printf("e_X:%f\r\n\r\n",e_X[0]);					//��ӡ��ǰƫ��

	//===========================Y��PID����========================================
	//���ַ���, �Ա���ƫ��ϴ�ʱ���Կ��ٵļ���ƫ���ƫ���С��ʱ�򣬲ż�����֣��������
	if (Y.err[0] >= 50.0 || Y.err[0] <= -50.0) //ƫ�����ص�֮��50��������
	{
		flag_Y = 0;    //�����л��������־λ
	} else {
		flag_Y = 1;   //���л��������־λ
		Y.e_I += Y.err[0]; //�������     error integral
	}

	//�����޷�  ������ֱ�������
	if (Y.e_I > 600)
		Y.e_I = 600;
	if (Y.e_I < -600)
		Y.e_I = -600;

	//ȷ�е�΢��û��

	//λ��ʽPID
	PwmOutPut.pwm_Y = Y.kp * Y.err[0] + flag_Y * Y.ki * Y.e_I
			+ Y.kd * (Y.err[0] - Y.err[1]);
	//control value = p * error(0) + ���ֱ�־λ * i * ������� + d * ������ƫ��-��ȥƫ�

	//===========================X��PID����============================================
	//���ַ���,�Ա���ƫ��ϴ�ʱ���Կ��ٵļ���ƫ���
	//ƫ���С��ʱ�򣬲ż�����֣��������
	if (X.err[0] >= 50.0 || X.err[0] <= -50.0)
	//ƫ������жϲ���
			{
		flag_X = 0;
	} else {
		flag_X = 1;
		X.e_I += X.err[0];
	}

	//�����޷�
	if (X.e_I > 600)
		X.e_I = 600;
	if (X.e_I < -600)
		X.e_I = -600;

	//λ��ʽPID
	PwmOutPut.pwm_X = X.kp * X.err[0] + flag_X * X.ki * X.e_I
			+ X.kd * (X.err[0] - X.err[1]);

	//=======================================================================================
	//��¼����ƫ��
	Y.err[1] = Y.err[0];								//�ñ���ƫ��ֵ�����ϴ�ƫ��
	X.err[1] = X.err[0];								//�ñ���ƫ��ֵ�����ϴ�ƫ��

	//OCS_displayData(X_NOW,X.err[0],Y.err[0],X.e_I);
//	X_NOW = PwmOutPut.pwm_X;
//	Y_NOW = PwmOutPut.pwm_Y;
}

//0-200000
void Set_PWM(void) {
	static u32 PWM_Max = 180;   //ִ�����ڸ�ϵͳ�ɲ�������г����ֵ
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

	Motor_X_PWM = SV.X_PWM + pwm_x_out; //λ��ʽPID  ������pwm
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
