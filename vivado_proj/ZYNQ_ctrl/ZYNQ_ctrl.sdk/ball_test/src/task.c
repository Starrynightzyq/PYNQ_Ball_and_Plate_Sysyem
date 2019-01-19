/*
 * task.c
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */
#include "task.h"

extern flag FlagInstance;
extern _Pid_Out Pid_Out;		//PID输出数据
extern BallInfo Ball_Info;		//小球位置数据
/*
//500 Hz
void MPU6500_Task() {
    if(FlagInstance.timer_500Hz) {
    	FlagInstance.timer_500Hz = 0;
    	IMU_getInfo();
    }
}*/

void TimerTask(void) {
	if(FlagInstance.timer_500Hz) {

		IMU_getInfo();					// 姿态解算
										// 内环PID
		if(FlagInstance.pid_mode == MODE_SINGLE) {
			Angle_Control(180, 180);
		}
		else if(FlagInstance.pid_mode == MODE_DUAL) {
			Angle_Control(Pid_Out.position_x_o+180, Pid_Out.position_y_o+180);
		}


		FlagInstance.timer_500Hz = 0;
	}

	if(FlagInstance.timer_250Hz) {

		FlagInstance.timer_250Hz = 0;
	}

	if(FlagInstance.timer_200Hz) {

		FlagInstance.timer_200Hz = 0;
	}

	if(FlagInstance.timer_40Hz) {	/* 40HZ */


		if(FlagInstance.pid_mode == MODE_DUAL) {
			Position_Control(120, 160);
		}


		FlagInstance.timer_40Hz = 0;
	}

	if(FlagInstance.timer_25Hz) {	/* 25HZ */

		FlagInstance.timer_25Hz = 0;
	}

	if(FlagInstance.timer_1Hz) {	/* 1HZ */

		xil_printf("o:%d,%d\r\n", (int)Pid_Out.position_x_o, (int)Pid_Out.position_y_o);

//		xil_printf("ball:%d,%d\r\n", Ball_Info.x, Ball_Info.y);

		Print_PWM();
		IMU_printInfo();

		FlagInstance.timer_1Hz = 0;

	}

}

void ExIntrTask(void) {
	if(FlagInstance.uart_cam_recv) { /* uart1 cam 中断触发 */
		RecvUartCam();
		FlagInstance.uart_cam_recv = 0;
	}

	if(FlagInstance.uart_pc_recv) { /* uart1 cam 中断触发 */
		Receive_PcData();
		FlagInstance.uart_pc_recv = 0;
	}
}
