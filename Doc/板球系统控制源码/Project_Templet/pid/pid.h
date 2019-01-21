#ifndef __PID_
#define __PID_

class Pid
{
public:
	double Set;                 //�����趨ֵ
	double Actual;              //����ʵ��ֵ
	double Kp, Ki, Kd;            //������������֡�΢��ϵ��
	double err;                 //����ƫ��ֵ
	double err_last;            //������һ��ƫ��ֵ
	double err_last2;            //������һ��ƫ��ֵ

	double pidout;				 //��������ı���ϵ��
	double Pout, Iout, Dout;      //������������
	double sumout;				//�ۼ����
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
