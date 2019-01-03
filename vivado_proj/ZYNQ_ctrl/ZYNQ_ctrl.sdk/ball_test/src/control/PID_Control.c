/*
 * PID_Control.c
 *
 *  Created on: 2018年5月18日
 *      Author: Xiluna Tech
 */

#include "PID_Control.h"

const float PID_Unit[11][3]=
{
      /* P            I           D    */
     { -500,          0,          5,    },//Pitch
     {  500 ,         0,         -5,    },//Roll
     {  0.05,        0.00012,    -0.0003,    },//Yaw
     {  0.013,       0.0004,      0.0005,    },//PitchRate
     {  0.013,       0.0004,      0.0005,    },//RollRate
     {  1.25,          0,          0,    },//Height
     {  79,          0.09,       14, },//HeightV
     { -0.135,          0,          0,    },//PointX
     { -0.135,          0,          0, },//PointY
     {  7.6,          0.025,       1.3, },//PointVX
     {  7.6,          0.025,       1.3, },//PointVY
};

/******* pitch roll height adrc 参数初始化 ********/
void PID_Init(Pid *PITCH_PARA,Pid *ROLL_PARA,Pid *YAW_PARA,Pid *PITCH_RATE,Pid *ROLL_RATE,
                  Pid *HEIGHT_PARA,Pid *HEIGHTV_PARA,Pid *PointX,Pid *PointY,Pid *PointVX,Pid *PointVY)
{
    //pitch
    PITCH_PARA->Kp = PID_Unit[0][0];
    PITCH_PARA->Ki = PID_Unit[0][1];
    PITCH_PARA->Kd = PID_Unit[0][2];
    //roll
    ROLL_PARA->Kp = PID_Unit[1][0];
    ROLL_PARA->Ki = PID_Unit[1][1];
    ROLL_PARA->Kd = PID_Unit[1][2];
    //yaw
    YAW_PARA->Kp = PID_Unit[2][0];
    YAW_PARA->Ki = PID_Unit[2][1];
    YAW_PARA->Kd = PID_Unit[2][2];
    //pitchrate
    PITCH_RATE->Kp = PID_Unit[3][0];
    PITCH_RATE->Ki = PID_Unit[3][1];
    PITCH_RATE->Kd = PID_Unit[3][2];
    //rollrate
    ROLL_RATE->Kp = PID_Unit[4][0];
    ROLL_RATE->Ki = PID_Unit[4][1];
    ROLL_RATE->Kd = PID_Unit[4][2];
    //height
    HEIGHT_PARA->Kp = PID_Unit[5][0];
    HEIGHT_PARA->Ki = PID_Unit[5][1];
    HEIGHT_PARA->Kd = PID_Unit[5][2];
    //heightv
    HEIGHTV_PARA->Kp = PID_Unit[6][0];
    HEIGHTV_PARA->Ki = PID_Unit[6][1];
    HEIGHTV_PARA->Kd = PID_Unit[6][2];
    //PointX
    PointX->Kp = PID_Unit[7][0];
    PointX->Ki = PID_Unit[7][1];
    PointX->Kd = PID_Unit[7][2];
    //PointY
    PointY->Kp = PID_Unit[8][0];
    PointY->Ki = PID_Unit[8][1];
    PointY->Kd = PID_Unit[8][2];
    //PointVX
    PointVX->Kp = PID_Unit[9][0];
    PointVX->Ki = PID_Unit[9][1];
    PointVX->Kd = PID_Unit[9][2];
    //PointVY
    PointVY->Kp = PID_Unit[10][0];
    PointVY->Ki = PID_Unit[10][1];
    PointVY->Kd = PID_Unit[10][2];
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


