/*
 * flag.h
 *
 *  Created on: 2018年12月29日
 *      Author: admin
 */

#ifndef SRC_FLAG_H_
#define SRC_FLAG_H_

#include "stdbool.h"

typedef struct {
	bool timer_1000Hz;	/*1 is timer count done*/
	bool timer_500Hz;
	bool timer_250Hz;	/* 400 HZ */
	bool timer_200Hz;	/* 400 HZ */
	bool timer_40Hz;
	bool timer_25Hz;
} flag;

void InitFlag(flag *FlagInstance);

#endif /* SRC_FLAG_H_ */