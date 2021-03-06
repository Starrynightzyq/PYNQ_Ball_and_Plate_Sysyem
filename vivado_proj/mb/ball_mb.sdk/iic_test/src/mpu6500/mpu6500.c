/*
 * mpu6500.c
 *
 *  Created on: 2018年12月27日
 *      Author: admin
 */
#include "mpu6500.h"

static XIic *IicMpu6500;

#define Buf_SIZE  10

int16_t MPU6500_FIFO[7][Buf_SIZE];
static int16_t Gx_offset=0,Gy_offset=0,Gz_offset=0;
static u8 Wr_Index = 0;

static void MPU6500_NewVal(int16_t* buf,int16_t val) {
    buf[Wr_Index] = val;
}

static int16_t MPU6500_GetAvg(int16_t* buf)
{
    int i;
    int32_t sum = 0;
    for(i=0;i<Buf_SIZE;i++){
        sum += buf[i];
    }
    sum = sum / Buf_SIZE;
    return (int16_t)sum;
}

static void MPU6500_readRegs(u8 reg, u8 length, u8 *data) {
	IicReadData(IicMpu6500, reg, data, length);
}

static void MPU6500_writeReg(u8 reg, u8 data) {
    IicWriteData(IicMpu6500, reg, &data, 1);
}


static void MPU6500_Set_Iic(XIic *IicInstancePtr) {
	IicMpu6500 = IicInstancePtr;
}

void MPU6500_initialize(XIic *IicInstancePtr){
	MPU6500_Set_Iic(IicInstancePtr);						//设置IIC控制器

    MPU6500_writeReg(MPU6500_RA_PWR_MGMT_1,0x80);           // 复位
    DELAY_US(1000*110);
    MPU6500_writeReg(MPU6500_RA_SIGNAL_PATH_RESET,0x07);
    DELAY_US(1000*110);
    MPU6500_writeReg(MPU6500_RA_PWR_MGMT_1,0x00);           // 使用内部20M时钟
    DELAY_US(5000);
    MPU6500_writeReg(MPU6500_RA_ACCEL_CONFIG,0x00);         // +-2G accel
    DELAY_US(5000);
    MPU6500_writeReg(MPU6500_RA_FF_THR,0x02);               // 加计低通滤波器
    DELAY_US(5000);
    MPU6500_writeReg(MPU6500_RA_GYRO_CONFIG,0x18);          // +-2000 gyro
    DELAY_US(5000);
    MPU6500_writeReg(MPU6500_RA_PWR_MGMT_2,0x00);
    DELAY_US(5000);
}

void MPU6500_readGyro_Acc(int16_t *gyro,int16_t *acc){
    static u8 buf[14];
    static int16_t gx,gy,gz;
    static int16_t ax,ay,az;
//    MPU6500_CSL();
    MPU6500_readRegs(MPU6500_RA_ACCEL_XOUT_H,14,buf);
//    MPU6500_CSH();
    //acc
    MPU6500_NewVal(&MPU6500_FIFO[0][0],(int16_t)(((int16_t)buf[0]) << 8 | buf[1]));
    MPU6500_NewVal(&MPU6500_FIFO[1][0],(int16_t)(((int16_t)buf[2]) << 8 | buf[3]));
    MPU6500_NewVal(&MPU6500_FIFO[2][0],(int16_t)(((int16_t)buf[4]) << 8 | buf[5]));
    //temp
    MPU6500_NewVal(&MPU6500_FIFO[3][0],(int16_t)(((int16_t)buf[6]) << 8 | buf[7]));
    //gyro
    MPU6500_NewVal(&MPU6500_FIFO[4][0],(int16_t)(((int16_t)buf[8]) << 8 | buf[9]));
    MPU6500_NewVal(&MPU6500_FIFO[5][0],(int16_t)(((int16_t)buf[10]) << 8 | buf[11]));
    MPU6500_NewVal(&MPU6500_FIFO[6][0],(int16_t)(((int16_t)buf[12]) << 8 | buf[13]));

    Wr_Index = (Wr_Index + 1) % Buf_SIZE;

    gx =  MPU6500_GetAvg(&MPU6500_FIFO[4][0]);
    gy =  MPU6500_GetAvg(&MPU6500_FIFO[5][0]);
    gz =  MPU6500_GetAvg(&MPU6500_FIFO[6][0]);

    gyro[0] = gx - Gx_offset;   //gyro
    gyro[1] = gy - Gy_offset;
    gyro[2] = gz - Gz_offset;

    ax = MPU6500_GetAvg(&MPU6500_FIFO[0][0]);
    ay = MPU6500_GetAvg(&MPU6500_FIFO[1][0]);
    az = MPU6500_GetAvg(&MPU6500_FIFO[2][0]);

    acc[0] = ax;                //acc
    acc[1] = ay;
    acc[2] = az;
}


void MPU6500_Init_Offset(void)
{
    unsigned int i;
    int16_t temp[3],temp2[3];
    int32_t tempgx=0,tempgy=0,tempgz=0;
    Gx_offset=0;
    Gy_offset=0;
    Gz_offset=0;

    for(i=0;i<5000;i++){
        DELAY_US(500);
        MPU6500_readGyro_Acc(temp,temp2);
        tempgx += temp[0];
        tempgy += temp[1];
        tempgz += temp[2];

    }
    Gx_offset=tempgx/5000;
    Gy_offset=tempgy/5000;
    Gz_offset=tempgz/5000;
}


