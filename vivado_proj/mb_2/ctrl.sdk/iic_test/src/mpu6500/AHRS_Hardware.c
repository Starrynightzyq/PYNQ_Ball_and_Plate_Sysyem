/*
 * AHRS_Hardware.c
 *
 *  Created on: 2018��12��27��
 *      Author: admin
 */

#include "AHRS_Hardware.h"

#include "stdio.h"

extern DroneRTInfo RT_Info;
extern OffsetInfo OffsetData;

// asin
float safe_asin(float v)
{
    if (isnan(v)) {
        return 0.0f;
    }
    if (v >= 1.0f) {
        return PI/2;
    }
    if (v <= -1.0f) {
        return -PI/2;
    }
    return asin(v);
}

void AHRS_HardWareinit(XIic *IicMpu6500){
    MPU6500_initialize(IicMpu6500); //mpu6500�Ĵ�������
    DELAY_US(1000*100);
    MPU6500_Init_Offset();
    DELAY_US(1000*100);
//    LSM303_Initial();   //lsm303�Ĵ�������
//    DELAY_US(1000*100);
}

void IMU_getValues(float * values)
{
    int16_t accgyroval[9] = {0};
    int i;
    MPU6500_readGyro_Acc(&accgyroval[3],&accgyroval[0]);
//    LSM303_readMag(&accgyroval[6]);	//����������

#ifdef DEBUG_ORI
    xil_printf("acc: %d %d %d, gyro: %d %d %d\r\n",
    		accgyroval[0], accgyroval[1], accgyroval[2], accgyroval[3], accgyroval[4], accgyroval[5]);
#endif

    for(i = 0; i<6; i++){
        //ת��Ϊm/s^2
        if(i < 3){
            values[i] = ((float) accgyroval[i]) / 16384.0;//(����/�ֱ���): 4/65536 = 1/16384 ת��Ϊm/s^2
        }
        //ת��Ϊrad/s
        else{
            values[i] = ((float) accgyroval[i]) / 16.384;//(����/�ֱ���): 4000/65536 = 1/16.384 ת��Ϊ��/s
        }

#ifdef DEBUG
        xil_printf("%d ", values[i]*1000);
#endif

    }

#ifdef DEBUG
    xil_printf("\r\n");
//    float pi = 3.14159;
//    char str[10];
//    sprintf(str, "%f", pi);
//    xil_printf("3.14159 = %f\r\n", pi);
#endif

    values[6] = (float)accgyroval[6] /32768 *4 ;	//����������
    values[7] = (float)accgyroval[7] /32768 *4 ;
    values[8] = (float)accgyroval[8] /32768 *4 ;

}


volatile float RDrone_R[3][3];
float Accel_Src[3];
void IMU_getInfo()
{
    static float q[4];
    static float getValue[9];
//    static float acc_x,acc_y,acc_z;
    static float q0q0,q0q1,q0q2,q0q3,q1q1,q1q2,q1q3,q2q2,q2q3,q3q3;
    IMU_getValues(getValue);
    MahonyAHRSupdate(getValue[3]* PI/180, getValue[4]* PI/180, getValue[5]* PI/180,
                               getValue[0], getValue[1], getValue[2],0,0,0);
    q[0] = q0;
    q[1] = q1;
    q[2] = q2;
    q[3] = q3;
    //ʹ�þ����ʱ����Կ���ʹ��
    q0q0 = q[0]*q[0];
    q0q1 = q[0]*q[1];
    q0q2 = q[0]*q[2];
    q0q3 = q[0]*q[3];
    q1q1 = q[1]*q[1];
    q1q2 = q[1]*q[2];
    q1q3 = q[1]*q[3];
    q2q2 = q[2]*q[2];
    q2q3 = q[2]*q[3];
    q3q3 = q[3]*q[3];

    RDrone_R[0][0] = q0q0 + q1q1 - q2q2 - q3q3;
    RDrone_R[0][1] = 2.0 * (q1q2 + q0q3);
    RDrone_R[0][2] = 2.0 * (q1q3 - q0q2);
    RDrone_R[1][0] = 2.0 * (q1q2 - q0q3);
    RDrone_R[1][1] = q0q0 - q1q1 + q2q2 - q3q3;
    RDrone_R[1][2] = 2.0 * (q2q3 + q0q1);
    RDrone_R[2][0] = 2.0 * (q1q3 + q0q2);
    RDrone_R[2][1] = 2.0 * (q2q3 - q0q1);
    RDrone_R[2][2] = q0q0 - q1q1 - q2q2 + q3q3;

    //���ٶ�����
    Accel_Src[0] = getValue[0];
    Accel_Src[1] = getValue[1];
    Accel_Src[2] = getValue[2];

    //�ڻ������ý��ٶ�����
    RT_Info.rateRoll=getValue[3] * 100;
    RT_Info.ratePitch=getValue[4] * 100;
    RT_Info.rateYaw=getValue[5] * 100;

   //ԭʼ���ٶ�����
    RT_Info.GyroX = getValue[3] - OffsetData.GyroX ;
    RT_Info.GyroY = getValue[4] - OffsetData.GyroY ;
    RT_Info.GyroZ = getValue[5] - OffsetData.GyroZ ;

    //ԭʼ����������
     RT_Info.MagX = getValue[6]  ;
     RT_Info.MagY = getValue[7]  ;
     RT_Info.MagZ = getValue[8]  ;

    //��������ϵ�µļ��ٶ�
    RT_Info.accXaxis = ((q0q0 + q1q1 - q2q2 - q3q3)*getValue[0] + (2.f * (q1q2 - q0q3))*getValue[1]  +   (2.f * (q1q3 + q0q2))*getValue[2])  ;
    RT_Info.accYaxis = ((2.f * (q1q2 + q0q3))*getValue[0]  + (q0q0 - q1q1 + q2q2 - q3q3)*getValue[1] +   (2.f * (q2q3 - q0q1))*getValue[2]);
    RT_Info.accZaxis =  ((2.f * (q1q3 - q0q2))*getValue[0]   + (2.f * (q2q3 + q0q1))*getValue[1]        +   (q0q0 - q1q1 - q2q2 + q3q3)*getValue[2] - 9.797f);//ת��Ϊʵ�ʼ��ٶ�
    //�Ƕ�����
    RT_Info.Roll = (atan2(2.0*(q0q1 + q2q3),
                       1 - 2.0*(q1q1 + q2q2)))* 180/PI;
    RT_Info.Pitch = -safe_asin(2.0*(q0q2 - q1q3))* 180/PI;

    RT_Info.Yaw = -atan2(2.0*q1q2 + 2.0*q0q3, -2.0*q2q2 - 2.0*q3q3 + 1) * 180/PI; // yaw

#ifdef DEBUG
//    xil_printf("Roll: %lf , Pitch: %lf , Yaw: %lf\r\n", RT_Info.Roll, RT_Info.Pitch, RT_Info.Yaw);
//    xil_printf("Accel_1: %d , Accel_2: %d , Accel_3: %d\r\n", Accel_Src[0], Accel_Src[1], Accel_Src[1]);
//    xil_printf("GyroX: %f , GyroY: %f , GyroZ: %f\r\n", RT_Info.GyroX, RT_Info.GyroY, RT_Info.GyroZ);
#endif
}

