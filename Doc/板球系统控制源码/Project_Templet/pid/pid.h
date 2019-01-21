#ifndef __PID_
#define __PID_

class Pid
{
public:
	double Set;                 //定义设定值
	double Actual;              //定义实际值
	double Kp, Ki, Kd;            //定义比例、积分、微分系数
	double err;                 //定义偏差值
	double err_last;            //定义上一个偏差值
	double err_last2;            //定义上一个偏差值

	double pidout;				 //定义输出的比例系数
	double Pout, Iout, Dout;      //定义各分量输出
	double sumout;				//累计输出
	double maxout;
	double minout;
	Pid(	double _Set, 
			double _Kp, 
			double _Ki, 
			double _Kd, 
			double _maxout, 
			double _minout);
	void	cale(double inpuvale, double & outvalue);
private:

};

#endif // !__PID_
