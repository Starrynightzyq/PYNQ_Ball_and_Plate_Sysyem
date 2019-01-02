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
#define lowpass_filter  7.9577e-3

//归一化参数设置
typedef struct
{

    double parameter;//参数

}normalized;


//PID算法参数
typedef struct
{
    //参数
    float Kp;           //比例参数
    float Ki;           //积分参数
    float Kd;           //微分参数
    //状态
    double error;                 //偏差
    double lasterror;             //上一次的偏差
    double differential;
    double differentialFliter;
    double pOut;         //比例值
    double iOut;         //积分值
    double dOut;         //微分值
    double value;        //PID输出值
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
    float X_1;
    float Y_1;
    u16 X_PWM;           //给定X轴PWM
    u16 Y_PWM;           //给定Y轴PWM
} _SetValue_s_;

//PID运算后输出的PWM
typedef struct _PID_PwmOutput_s_ {
    int pwm_X;							//X轴的数据
    int pwm_Y;							//Y轴的数据
    int pwm_X_1;
    int pwm_Y_1;
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
