#include "ball.h"
#include <cstdio>
BoardBallControl::BoardBallControl(double &k1, double &k2)
{
	ball_state=false;    //小球是否存在
	position_x =0;    //小球当前坐标
	position_y = 0;
	_x_speed = 0;
	_y_speed = 0;
	exchange_value_x = k1;		//x方向转化系数
	exchange_value_y = k2;		//y方向转化系数
	lasttime = clock();
}

/* 调用GetBallPosition()判断 */
bool BoardBallControl::GetBallState()
{
	return ball_state;
}

/* 完成一次小球查找工作
	查找圆心
	位置赋值
	返回结构体
*/
bool BoardBallControl::GetBallPosition(Mat &frame2, double &x,double &y)
{
	Mat frame;
	cvtColor(frame2, frame, COLOR_RGB2GRAY);		//彩色图像灰度化
	threshold(frame, frame, THRESH_BINARY_C_VALUE, THRESH_BINARY_H_VALUE, CV_THRESH_BINARY);		//二值化
	Point position;
	for (int i = 0; i < frame.rows - 1; i++)
	{
		unsigned char *data1 = frame.ptr<uchar>(i);
		for (int j = 0; j < frame.cols - 1; j++)
		{
			if (data1[j] >= 250) 
			{
				int begin = j;
				while (data1[j++] >= 250 && (j < frame.cols - 2));
				if ((double)(j - begin)*exchange_value_x <= mindiameter || ((double)(j - begin)*exchange_value_x >= maxdiameter))//不是球，扫描下一行
				{
					continue;
				}
				position.x = (j + begin)/2;
				position.y = i;
				double radiu = j - begin;
				radiu = exchange_value_x* radiu;
				ball_state = true;
				x  = (double)position.x*exchange_value_x;
				y  = (double)position.y *exchange_value_y;

				cout << "半径=" << radiu << " ";
				//if (fabs(x - position_x) <= 3)x = position_x;
				//if (fabs(y - position_y) <= 3)y = position_y;
				time_t newtime = clock();
				double time = (double)newtime - lasttime;
				/*假设每次运算时间都相等为0.5s*/
				time = 1;
				_x_speed = (x- position_x) /time;
				_y_speed= (y- position_y) /time;
				position_x = x;
				position_y = y;
				lasttime = newtime;
				return true;
			}
		}
	}
	ball_state = false;
	return false;
}



bool BoardBallControl::GetBallSpeed(double &x_speed, double &y_speed)
{
	if (ball_state == false)
		return false;
	x_speed = _x_speed;
	y_speed = _y_speed;
	return true;
}

bool BoardBallControl::PrintBallPosition()
{
	if (ball_state == false)
		return false;
	cout.setf(ios::fixed, ios::floatfield);
	cout <<setprecision(3)<<"Position: (x= " << position_x << " , " << "  y="<< position_y << ")" ;
	return true;
}

bool BoardBallControl::PrintBallSpeed()
{
	if (ball_state == false)
		return false;

	cout.setf(ios::fixed, ios::floatfield);
	cout << setprecision(2)<<"X-Speed: " << _x_speed << " mm/s" ;
	cout << setprecision(2)<<"Y-Speed: " << _y_speed << " mm/s" << endl;
	return true;

}