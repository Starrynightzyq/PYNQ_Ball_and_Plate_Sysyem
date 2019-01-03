/*
 * PID_Control.c
 *
 *  Created on: 2018��5��18��
 *      Author: Xiluna Tech
 */

#include "PID_Control.h"

const float PID_Unit[11][3]=
{
      /* P            I           D    */
     { 	-5,          0,          0,    },//Angle_x
     {  5,         0,         -0,    },//Angle_y
     {  0.05,        0.00012,    -0.0003,    },//Position_x
     {  0.013,       0.0004,      0.0005,    },//Position_y
};

/******* PID 参数初始化 ********/
void PID_Init(Pid *ANGLE_X,Pid *ANGLE_Y,Pid *POSITION_X,Pid *POSITION_Y)
{
    //Angle_x
	ANGLE_X->Kp = PID_Unit[0][0];
	ANGLE_X->Ki = PID_Unit[0][1];
	ANGLE_X->Kd = PID_Unit[0][2];
    //Angle_y
	ANGLE_Y->Kp = PID_Unit[1][0];
	ANGLE_Y->Ki = PID_Unit[1][1];
	ANGLE_Y->Kd = PID_Unit[1][2];
    //Position_x
	POSITION_X->Kp = PID_Unit[2][0];
	POSITION_X->Ki = PID_Unit[2][1];
	POSITION_X->Kd = PID_Unit[2][2];
    //Position_y
	POSITION_Y->Kp = PID_Unit[3][0];
	POSITION_Y->Ki = PID_Unit[3][1];
	POSITION_Y->Kd = PID_Unit[3][2];
}


float PID_Control(Pid *PID, float expect_PID, float feedback_PID, float PIDtime,float Integrallimiter){

    PID->error = expect_PID - feedback_PID;
    PID->differential = (PID->error - PID->lasterror)/PIDtime;

    PID->differential = PID->differentialFliter + (PIDtime / (lowpass_filter + PIDtime)) * (PID->differential - PID->differentialFliter);

    PID->differentialFliter = PID->differential;

    PID->lasterror = PID->error;


    PID->pOut = PID->Kp * PID->error;
    PID->iOut += PID->Ki * PID->error;
    PID->dOut = PID->Kd * PID->differential;

    PID->iOut = Limits_data(PID->iOut,Integrallimiter,-Integrallimiter);

    PID->value = PID->pOut + PID->iOut + PID->dOut;

    return PID->value;
}


