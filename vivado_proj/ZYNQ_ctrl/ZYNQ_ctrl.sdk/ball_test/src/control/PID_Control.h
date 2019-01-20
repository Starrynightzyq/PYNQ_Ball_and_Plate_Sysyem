/*
 * PID_Control.h
 *
 *  Created on: 2018��5��18��
 *      Author: Xiluna Tech
 */

#ifndef CONTROL_PID_CONTROL_H_
#define CONTROL_PID_CONTROL_H_

#include "../DronePara.h"
#include "SimpleDigitalFiltering.h"
#include <math.h>

#define lowpass_filter  7.9577e-3

#define SYMBOL_ANGLE_X (-1.0)
#define SYMBOL_ANGLE_Y (1.0)
#define SYMBOL_POSITION_X (-1.0)
#define SYMBOL_POSITION_Y (1.0)

void PID_Init(Pid *ANGLE_X,Pid *ANGLE_Y,Pid *POSITION_X,Pid *POSITION_Y);
float PID_Control(Pid *PID, float expect_PID, float feedback_PID, float PIDtime,float Integrallimiter);

#endif /* CONTROL_PID_CONTROL_H_ */
