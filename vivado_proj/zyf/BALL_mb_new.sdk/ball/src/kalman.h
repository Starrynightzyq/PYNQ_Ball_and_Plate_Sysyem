/*
 * kalman.h
 *
 *  Created on: 2018Äê8ÔÂ26ÈÕ
 *      Author: admin
 */

#ifndef SRC_KALMAN_H_
#define SRC_KALMAN_H_

#include "xil_types.h"

#define KALMAN_Q 0.20

#define KALMAN_R 2.0

typedef struct {
    double R;
    double Q;

    double x_last;
    double x_mid;
    double x_now;

    double p_last;
    double p_mid ;
    double p_now;

    double kg;
}Kalman;


u32 KalmanFilter(Kalman *InstancePtr,double ResrcData);

#endif /* SRC_KALMAN_H_ */
