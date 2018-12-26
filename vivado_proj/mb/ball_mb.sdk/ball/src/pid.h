/*
 * pid.h
 *
 *  Created on: 2018��9��5��
 *      Author: admin
 */

#ifndef SRC_PID_H_
#define SRC_PID_H_

#include "xil_types.h"
#include "servo.h"
#include "math.h"

#define Wide       256  //x����  ���ڶ���ͼ�񴰿ڴ�С��   �޸�ʱ����ֱ���޸ĸ�ֵ�Ϳ���ʵ�ֹ���
#define Height     240	//Y����  ���ڶ���ͼ�񴰿ڴ�С��   �޸�ʱ����ֱ���޸ĸ�ֵ�Ϳ���ʵ�ֹ���

typedef struct
{
	double kp, ki, kd;   //���������֣�΢��
	double err[2]; //��ǰƫ���һ��ƫ��
	double e_I;    ///ƫ����ֽ��
}aparPID;

////�����־λ
//typedef struct {
//    volatile uint16_t task1_flag:	1;
//    volatile uint16_t task2_flag:	1;
//    volatile uint16_t task3_flag:	1;
//    volatile uint16_t task4_flag:	1;
//    volatile uint16_t task5_flag:	1;
//    volatile uint16_t Other_Task:	11;
//} TaskMask_s_;

//����λ�úͳ�ʼ����
typedef struct {
    u16 X;               //�趨X���λ��
    u16 Y;               //�趨Y���λ��
    int X_PWM;           //����X��PWM
    int Y_PWM;           //����Y��PWM
} _SetValue_s_;

//PID����������PWM
typedef struct _PID_PwmOutput_s_ {
    int pwm_X;							//X�������
    int pwm_Y;							//Y�������
} _PID_PwmOutput_s_;


//enum PWM {
//    PWM_Min = 1020,
//    PWM_Max_X = 2470,
//    PWM_Min_X = 820,
//    PWM_Mid_X = 1610,
//    PWM_Max_Y = 2410,
//    PWM_Min_Y = 500,
//    PWM_Mid_Y = 1440,
//};

void PID (void);	//���ַ���PID�㷨 ��PID�ǲ�һ����
void Set_PWM(void);	//�趨PWM���޷�


#endif /* SRC_PID_H_ */
