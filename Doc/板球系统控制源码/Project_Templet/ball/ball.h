#ifndef __BALLCONTROL_H
#define __BALLCONTROL_H                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

#include<opencv2/core.hpp>
#include<opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>    
#include<Windows.h>
#include<string>


#define THRESH_BINARY_C_VALUE    180		//��ֵ��(�Ƚ�ֵ)
#define THRESH_BINARY_H_VALUE    255		//��ֵ�������ֵ��
#define mindiameter		(double)7.0		//5
#define maxdiameter		(double)11.5//15
/*
���뵥λ��mm
�ٶȵ�λ��mm/s
*/
using namespace cv;
using namespace std;


class BoardBallControl
{
public:
	BoardBallControl(double &k1, double &k2); //K1Ϊx��ת��ϵ����K2Ϊy��ת��ϵ��
	bool GetBallState();    //��ȡС��״̬
	bool GetBallPosition(Mat &frame2, double &x, double &y);    //��ȡС��ǰ����/*�Ѿ����ü���ֵ�������*/
	bool GetBallSpeed(double &x_speed,double &y_speed);    //��ȡС��ǰ�ٶ�
	bool PrintBallPosition();    //��ӡС��ǰ����
	bool PrintBallSpeed();    //��ӡС��ǰ�ٶ�
	double exchange_value_x;		//x����ת��ϵ��
	double exchange_value_y;		//y����ת��ϵ��
private:
	bool ball_state ;    //С���Ƿ����
	double position_x;  //С��ǰ����
	double position_y;
	double _x_speed;
	double _y_speed;

	time_t lasttime;
};

#endif
