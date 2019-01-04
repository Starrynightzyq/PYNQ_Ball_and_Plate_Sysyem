/*
 * flag.h
 *
 *  Created on: 2018年12月29日
 *      Author: admin
 */

#ifndef SRC_FLAG_H_
#define SRC_FLAG_H_

#include "stdbool.h"
#include "xil_types.h"

#define MODE_SINGLE 0	//单级PID
#define MODE_DUAL	1	//串级PID

typedef struct {
	bool timer_1000Hz;	/*1 is timer count done*/
	bool timer_500Hz;
	bool timer_250Hz;	/* 400 HZ */
	bool timer_200Hz;	/* 400 HZ */
	bool timer_40Hz;
	bool timer_25Hz;
	bool timer_1Hz;
	bool uart_cam_recv;	/* uart 接收标志 */
	bool uart_pc_recv;	/* uart pc 接收标志 */
	bool report_pid;	/* 上传PID参数 */
	bool save_pid;		/* 保存PID参数到SD */
	u8 pid_mode;		/* pid mode */
} flag;

void InitFlag(flag *FlagInstance);

#endif /* SRC_FLAG_H_ */
