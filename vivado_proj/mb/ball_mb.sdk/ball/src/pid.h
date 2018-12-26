/*
 * pid.h
 *
 *  Created on: 2018年9月5日
 *      Author: admin
 */

#ifndef SRC_PID_H_
#define SRC_PID_H_

#include "xil_types.h"
#include "servo.h"
#include "math.h"

#define Wide       256  //x轴宽度  用于定义图像窗口大小的   修改时可以直接修改该值就可以实现功能
#define Height     240	//Y轴宽度  用于定义图像窗口大小的   修改时可以直接修改该值就可以实现功能

typedef struct
{
	double kp, ki, kd;   //比例，积分，微分
	double err[2]; //当前偏差、上一次偏差
	double e_I;    ///偏差积分结果
}aparPID;

////任务标志位
//typedef struct {
//    volatile uint16_t task1_flag:	1;
//    volatile uint16_t task2_flag:	1;
//    volatile uint16_t task3_flag:	1;
//    volatile uint16_t task4_flag:	1;
//    volatile uint16_t task5_flag:	1;
//    volatile uint16_t Other_Task:	11;
//} TaskMask_s_;

//给定位置和初始脉冲
typedef struct {
    u16 X;               //设定X轴的位置
    u16 Y;               //设定Y轴的位置
    int X_PWM;           //给定X轴PWM
    int Y_PWM;           //给定Y轴PWM
} _SetValue_s_;

//PID运算后输出的PWM
typedef struct _PID_PwmOutput_s_ {
    int pwm_X;							//X轴的数据
    int pwm_Y;							//Y轴的数据
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

void PID (void);	//积分分离PID算法 且PID是不一样的
void Set_PWM(void);	//设定PWM，限幅


#endif /* SRC_PID_H_ */
