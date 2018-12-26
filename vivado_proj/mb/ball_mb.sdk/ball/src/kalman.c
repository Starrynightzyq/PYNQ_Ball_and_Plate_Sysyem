/*
 * kalman.c
 *
 *  Created on: 2018��8��26��
 *      Author: admin
 */

//*-------------------------------------------------------------------------------------------------------------*/
/*
        Q:����������Q���󣬶�̬��Ӧ��죬�����ȶ��Ա仵
        R:����������R���󣬶�̬��Ӧ�����������ȶ��Ա��
*/

#include "kalman.h"

/* �������˲����� */

u32 KalmanFilter(Kalman *InstancePtr,double ResrcData)
{

    InstancePtr->R = KALMAN_R;
    InstancePtr->Q = KALMAN_Q;

    InstancePtr->x_mid = InstancePtr->x_last;					//x_last=x(k-1|k-1),x_mid=x(k|k-1)
    InstancePtr->p_mid = InstancePtr->p_last + InstancePtr->Q;	//p_mid=p(k|k-1),p_last=p(k-1|k-1),Q=����

    /*
     *  �������˲��������Ҫ��ʽ
     */
    InstancePtr->kg=InstancePtr->p_mid/(InstancePtr->p_mid+InstancePtr->R);                 //kgΪkalman filter��R Ϊ����
    InstancePtr->x_now=InstancePtr->x_mid+(InstancePtr->kg)*(ResrcData-InstancePtr->x_mid);   //���Ƴ�������ֵ
    InstancePtr->p_now=(1-InstancePtr->kg)*(InstancePtr->p_mid);                 //����ֵ��Ӧ��covariance
    InstancePtr->p_last = InstancePtr->p_now;                     //����covariance ֵ
    InstancePtr->x_last = InstancePtr->x_now;                     //����ϵͳ״ֵ̬


    return (u32)InstancePtr->x_now;

}
