#ifndef __BALLCONTROL_H
#define __BALLCONTROL_H                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

#include<opencv2/core.hpp>
#include<opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>    
#include<Windows.h>
#include<string>


#define THRESH_BINARY_C_VALUE    180		//二值化(比较值)
#define THRESH_BINARY_H_VALUE    255		//二值化（最大值）
#define mindiameter		(double)7.0		//5
#define maxdiameter		(double)11.5//15
/*
距离单位：mm
速度单位：mm/s
*/
using namespace cv;
using namespace std;


class BoardBallControl
{
public:
	BoardBallControl(double &k1, double &k2); //K1为x的转换系数，K2为y的转换系数
	bool GetBallState();    //获取小球状态
	bool GetBallPosition(Mat &frame2, double &x, double &y);    //获取小球当前坐标/*已经过裁剪二值化处理后*/
	bool GetBallSpeed(double &x_speed,double &y_speed);    //获取小球当前速度
	bool PrintBallPosition();    //打印小球当前坐标
	bool PrintBallSpeed();    //打印小球当前速度
	double exchange_value_x;		//x方向转化系数
	double exchange_value_y;		//y方向转化系数
private:
	bool ball_state ;    //小球是否存在
	double position_x;  //小球当前坐标
	double position_y;
	double _x_speed;
	double _y_speed;

	time_t lasttime;
};

#endif
