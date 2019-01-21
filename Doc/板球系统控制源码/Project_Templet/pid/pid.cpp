#include "pid.h"
#include <iostream>
#include <cstdio>
using namespace std;
Pid::Pid(double _Set, double _Kp, double _Ki, double _Kd, double _maxout, double _minout)
{
	Set = _Set;
	Kp = _Kp;
	Ki = _Ki;
	Kd = _Kd;
	err_last2 = err_last = err = 0;
	sumout = 1500;
	maxout = _maxout;
	minout = _minout;
}

void Pid::cale(double inpuvale,double &outvalue)
{
	Actual = inpuvale;
	err = Set - Actual;
	Pout = Kp*err;
	Iout = Ki*err_last2;
	Dout = Kd*(err - err_last);
	pidout = Pout + Iout+Dout;
	err_last = err;
	err_last2 += err;

	if (pidout >= maxout) {
		pidout = maxout;
	}
	if (pidout <= minout) {
		pidout = minout;
	}
	outvalue = pidout;
}


