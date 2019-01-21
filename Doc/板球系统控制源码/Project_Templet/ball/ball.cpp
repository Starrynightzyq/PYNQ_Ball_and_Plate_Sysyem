#include "ball.h"
#include <cstdio>
BoardBallControl::BoardBallControl(double &k1, double &k2)
{
	ball_state=false;    //С���Ƿ����
	position_x =0;    //С��ǰ����
	position_y = 0;
	_x_speed = 0;
	_y_speed = 0;
	exchange_value_x = k1;		//x����ת��ϵ��
	exchange_value_y = k2;		//y����ת��ϵ��
	lasttime = clock();
}

/* ����GetBallPosition()�ж� */
bool BoardBallControl::GetBallState()
{
	return ball_state;
}

/* ���һ��С����ҹ���
	����Բ��
	λ�ø�ֵ
	���ؽṹ��
*/
bool BoardBallControl::GetBallPosition(Mat &frame2, double &x,double &y)
{
	Mat frame;
	cvtColor(frame2, frame, COLOR_RGB2GRAY);		//��ɫͼ��ҶȻ�
	threshold(frame, frame, THRESH_BINARY_C_VALUE, THRESH_BINARY_H_VALUE, CV_THRESH_BINARY);		//��ֵ��
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
				if ((double)(j - begin)*exchange_value_x <= mindiameter || ((double)(j - begin)*exchange_value_x >= maxdiameter))//������ɨ����һ��
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

				cout << "�뾶=" << radiu << " ";
				//if (fabs(x - position_x) <= 3)x = position_x;
				//if (fabs(y - position_y) <= 3)y = position_y;
				time_t newtime = clock();
				double time = (double)newtime - lasttime;
				/*����ÿ������ʱ�䶼���Ϊ0.5s*/
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