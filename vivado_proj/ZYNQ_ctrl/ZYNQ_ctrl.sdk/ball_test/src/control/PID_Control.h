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

void PID_Init(Pid *PITCH_PARA,Pid *ROLL_PARA,Pid *YAW_PARA,Pid *PITCH_RATE,Pid *ROLL_RATE,
                  Pid *HEIGHT_PARA,Pid *HEIGHTV_PARA,Pid *PointX,Pid *PointY,Pid *PointVX,Pid *PointVY);
float PID_Control(Pid *PID, float expect_PID, float feedback_PID, float PIDtime,float Integrallimiter);

#endif /* CONTROL_PID_CONTROL_H_ */
