/*
 * task.c
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */
#include "task.h"

extern flag FlagInstance;
extern aparPID X, Y ,Angle_x ,Angle_y;	//定义在pid.c
extern _PID_PwmOutput_s_ PwmOutPut;     //定义在pid.c
extern normalized PIDALL ,PWMALL;               //定义在pid.c
extern _SetValue_s_ SV;                 //定义在pid.c
//extern Wide;                            //定义在pid.c
//extern Height;                          //定义在pid.c

extern BallInfo Ball_Info ;             //定义在helloworld.c
extern DroneRTInfo RT_Info;             //定义在helloworld.c
u16 X_NOW_1=0 , Y_NOW_1=0 , Angle_X_NOW_1=0 , Angle_Y_NOW_1=0;    //PID前归一化后的参数
/*
//500 Hz
void MPU6500_Task() {
    if(FlagInstance.timer_500Hz) {
    	FlagInstance.timer_500Hz = 0;
    	IMU_getInfo();
    }
}*/


void task1_init(void) {
	//外环参数
	X.Kp = 0.16;   //6 10 0.2 0.2 20 40
	Y.Kp = 0.16;
	X.Ki = 0.01;   ///调整去6 0 18.8
	Y.Ki = 0.01;
	X.Kd = 1.15;	//1.05
	Y.Kd = 1.15;
	//内环参数
	Angle_x.Kp = 0;
	Angle_y.Kp = 0;
	Angle_x.Ki = 0;
	Angle_y.Ki = 0;
	Angle_x.Kd = 0;
	Angle_y.Kd = 0;
    //归一化参数
     PIDALL.parameter = 1 ;
     PWMALL.parameter = 1 ;
    //X轴Y轴位置以及PWM
	SV.X = 160;  //修改区目标 XY  118 179  244 136  离我近的舵机控制
	SV.Y = 120;  //
	SV.X_PWM = 100;
	SV.Y_PWM = 100;
}

//定时器触发任务
void TimerTask(void) {
	if(FlagInstance.timer_500Hz) {    /* 内环PID输出的数直接归一化为PWM的输入 */
		IMU_getInfo(); /* 姿态解算 */
		Angle_X_NOW_1=RT_Info.Roll*PIDALL.parameter;  /*参数归一化 */
		Angle_Y_NOW_1=RT_Info.Pitch*PIDALL.parameter;
        PwmOutPut.angle_X = PID_Control(&Angle_x,PwmOutPut.pwm_X,Angle_X_NOW_1,0.005,80);
        PwmOutPut.angle_Y = PID_Control(&Angle_y,PwmOutPut.pwm_Y,Angle_Y_NOW_1,0.005,80);
		FlagInstance.timer_500Hz = 0;
	}

	if(FlagInstance.timer_250Hz) {

		FlagInstance.timer_250Hz = 0;
	}

	if(FlagInstance.timer_200Hz) {

		FlagInstance.timer_200Hz = 0;
	}

	if(FlagInstance.timer_40Hz) {	/* 向上位机发送数据 */

		FlagInstance.timer_40Hz = 0;
	}

	if(FlagInstance.timer_25Hz) {	  /* 外环PID输出的数据直接作为内环的输入*/
		X_NOW_1=Ball_Info.x*PIDALL.parameter; /*参数归一化 */
		Y_NOW_1=Ball_Info.y*PIDALL.parameter;
	    if ((Ball_Info.x > Wide) || ((Ball_Info.y > Height))){   /*如果小球的坐标不属于像素范围内时,退出程序，不进行PID运算*/
		  	    PwmOutPut.pwm_Y = 0;   /*差值PWM附0*/
			    PwmOutPut.pwm_X = 0;   /*不进行控制*/
			    return;
		}
	    else{

	           PwmOutPut.pwm_X = PID_Control(&X,SV.X,X_NOW_1,0.005,80);
	           PwmOutPut.pwm_Y = PID_Control(&Y,SV.Y,Y_NOW_1,0.005,80);

	    }
		FlagInstance.timer_25Hz = 0;
	}

	if(FlagInstance.timer_1Hz) {	/*  */
		IMU_printInfo();
		FlagInstance.timer_1Hz = 0;
	}

}

//外部中断触发任务
void ExIntrTask(void) {
	if(FlagInstance.uart_cam_recv) { /* uart1 cam 中断触发 */
		RecvUartCam();
		FlagInstance.uart_cam_recv = 0;
	}
}
