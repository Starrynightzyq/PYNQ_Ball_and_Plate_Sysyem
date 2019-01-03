/*
 * pid.h
 *
 *  Created on: 2019年1月2日
 *      Author: ZYF
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
    double Kp;           //比例参数
    double Ki;           //积分参数
    double Kd;           //微分参数
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
    int angle_X;
    int angle_Y;
    int angle_X_1;
    int angle_Y_1;
} _PID_PwmOutput_s_;



void PID (void);
void Set_PWM(void);	//设定PWM，限幅


#endif /* SRC_PID_H_ */
