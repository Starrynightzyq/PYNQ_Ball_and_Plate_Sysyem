/*
 * task.c
 *
 *  Created on: 2019年1月2日
 *      Author: admin
 */
#include "task.h"

extern flag FlagInstance;
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
		IMU_getInfo();					/* 姿态解算 */
										/* 内环PID */
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

	if(FlagInstance.timer_25Hz) {	/* 外环PID */

		FlagInstance.timer_25Hz = 0;
	}

	if(FlagInstance.timer_1Hz) {	/* 外环PID */
		IMU_printInfo();
		FlagInstance.timer_1Hz = 0;
	}

}

void ExIntrTask(void) {
	if(FlagInstance.uart_cam_recv) { /* uart1 cam 中断触发 */
		RecvUartCam();
		FlagInstance.uart_cam_recv = 0;
	}
}
