/*
 * kalman.c
 *
 *  Created on: 2018年8月26日
 *      Author: admin
 */

//*-------------------------------------------------------------------------------------------------------------*/
/*
        Q:过程噪声，Q增大，动态响应变快，收敛稳定性变坏
        R:测量噪声，R增大，动态响应变慢，收敛稳定性变好
*/

#include "kalman.h"

/* 卡尔曼滤波处理 */

u32 KalmanFilter(Kalman *InstancePtr,double ResrcData)
{

    InstancePtr->R = KALMAN_R;
    InstancePtr->Q = KALMAN_Q;

    InstancePtr->x_mid = InstancePtr->x_last;					//x_last=x(k-1|k-1),x_mid=x(k|k-1)
    InstancePtr->p_mid = InstancePtr->p_last + InstancePtr->Q;	//p_mid=p(k|k-1),p_last=p(k-1|k-1),Q=噪声

    /*
     *  卡尔曼滤波的五个重要公式
     */
    InstancePtr->kg=InstancePtr->p_mid/(InstancePtr->p_mid+InstancePtr->R);                 //kg为kalman filter，R 为噪声
    InstancePtr->x_now=InstancePtr->x_mid+(InstancePtr->kg)*(ResrcData-InstancePtr->x_mid);   //估计出的最优值
    InstancePtr->p_now=(1-InstancePtr->kg)*(InstancePtr->p_mid);                 //最优值对应的covariance
    InstancePtr->p_last = InstancePtr->p_now;                     //更新covariance 值
    InstancePtr->x_last = InstancePtr->x_now;                     //更新系统状态值


    return (u32)InstancePtr->x_now;

}
