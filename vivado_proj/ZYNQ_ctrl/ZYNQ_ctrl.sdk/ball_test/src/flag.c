/*
 * flag.c
 *
 *  Created on: 2018年12月29日
 *      Author: admin
 */
#include "flag.h"

void InitFlag(flag *FlagInstance) {
	FlagInstance->timer_1000Hz = false;
	FlagInstance->timer_500Hz = false;
	FlagInstance->timer_250Hz = false;
	FlagInstance->timer_200Hz = false;
	FlagInstance->timer_40Hz = false;
	FlagInstance->timer_25Hz = false;
	FlagInstance->timer_1Hz = false;
	FlagInstance->uart_cam_recv = false;
	FlagInstance->uart_pc_recv = false;
	FlagInstance->report_pid = false;
	FlagInstance->save_pid = false;
	FlagInstance->pid_mode = MODE_SINGLE;
}
