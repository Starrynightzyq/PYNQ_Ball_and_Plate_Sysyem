#include<iostream>
#include<opencv2/core.hpp>
#include<opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>  
#include "camera/camera.h"
#include "ball/ball.h"
#include "motor/motor.h"
#include "pid/pid.h"
#include "gamepad/gamepad.h"

using namespace cv;
using namespace std;

/*声明*/
void updatatime(void);
void changecontrolmode(void);
DWORD WINAPI gamepaddata(LPVOID lpParameter);
void calecriclepos(void);

/*pid初始化*/
double kp = 0.053, ki = 0.003 /*0.009*/, kd = 0.1/*1.5*/, pmax = 20, pmin = -20;
double skp = 45, ski = 0, skd = 20, smax = 500, smin = -500;
double rkp = 0.125, rki = 0.1, rkd = 0, rmax = 150, rmin = -150;
Pid	Rpid{ 100,rkp,rki,rkd,rmax,rmin };
Pid	Xspeedpid{ 5,	skp,ski,skd,smax,smin };
Pid Yspeedpid{ 0,skp,ski,skd,smax,smin };
Pid xpid{ 200,kp,ki,kd,pmax,pmin };
Pid ypid{ 200,kp ,ki,kd,smax,smin };

/*各位置点初始化*/
Point finepos(200, 200);
Point centerpos(200, 200);
Point redpos(200,200);
Point gamepadpos(200, 200);

/*小球参数K1\k2为像素坐标转化因子，x\y为小球实时坐标（单位mm）*/
double k1=1, k2=1;
double x = 200, y = 200;

/*手柄控制模式*/
enum  movemode  {redposcontrol,gamepadcontrol,staycenter,automove,spinmode} ;
enum movemode myballcontrol= staycenter;

Mat frame;
int main(void)
{
	/*舵机控制初始化*/
	Serial	motorserial("COM7", 115200);
	Motor	motor2(motorserial, "001", P2_mid), motor1(motorserial, "000", P1_mid);
	if (motor2.is_open() == false)
	{
		cout << "motor2 open false" << endl;
	}
	if (motor1.is_open() == false)
	{
		cout << "motor1 open false" << endl;
	}
	/*usb摄像头初始化*/
	MyCamera my_camera(LOCAL_CAP);
	if (my_camera.IsOpen())
	{
		cout << "my_camera open success!" << endl;
	}
	else
	{
		cout << "my_camera open false!" << endl;
	}
	my_camera.PrintBroadPosition();
	my_camera.PrintExchangeValue();
	my_camera.GetExchangeValue(k1, k2);
	/*小球对象初始化*/
	BoardBallControl ball(k1, k2);
	ball.exchange_value_x = k1;
	ball.exchange_value_y = k2;
	/*多线程获取手柄数据*/
	HANDLE onethr= CreateThread(NULL, 0, gamepaddata, NULL, 0, NULL);

	while (1)
	{
		my_camera.GetImgData(frame);
		if (ball.GetBallPosition(frame, x, y) == true)
		{

			double x_speed, y_speed;
			double outpwm1 = 0, outpwm2 = 0;
			ball.GetBallSpeed(x_speed, y_speed);
			/*更新位置外环pid设定值*/
			xpid.Set = finepos.x;
			ypid.Set = finepos.y;

			/*防止积分过饱和*/
			double xkimax = 1, ykimax=1;
			if (xpid.err_last2*xpid.Ki >= xkimax)xpid.err_last2 = xkimax / xpid.Ki;
			if (xpid.err_last2*xpid.Ki <= -xkimax)xpid.err_last2 = -xkimax / xpid.Ki;
			if (ypid.err_last2*ypid.Ki >= ykimax)ypid.err_last2 = ykimax / ypid.Ki;
			if (ypid.err_last2*ypid.Ki <= -ykimax)ypid.err_last2 = -ykimax / ypid.Ki;

			/*积分分离*/
			 if(abs(x- finepos.x) > 10)xpid.err_last2 = 0;
			if (abs(y - finepos.y) > 10)ypid.err_last2 = 0;
			/*位置pid算法*/
			xpid.cale(x, Xspeedpid.Set);
			ypid.cale(y, Yspeedpid.Set);
			/*速度pid算法*/
			Xspeedpid.cale(x_speed, outpwm1);
			Yspeedpid.cale(y_speed, outpwm2);
			/*执行*/
			motor1.setpwm(P1_mid - (short)outpwm1);
			motor2.setpwm(P2_mid - (short)outpwm2);
			/*打印调试信息*/
			ball.PrintBallPosition();
			ball.PrintBallSpeed();
			cout << "Xerr= " << xpid.err_last2 << "Yerr= " << ypid.err_last2 << " ";
			cout << "Xout= " << Xspeedpid.Set << "Yout= " << Yspeedpid.Set << " ";
			cout << "pwm1= " << outpwm1 << "pwm2= " << outpwm2 << " ";

			/*图片标记小球坐标*/
			char str[10];
			sprintf_s(str, "[%d,%d]", (int)(x ), (int)(y));
			putText(frame, str, Point((int)(x / k1)+20, (int)(y / k2)+20), FONT_HERSHEY_PLAIN, 1, CV_RGB(255, 255, 255), 2, 5, 0);
		}
		else
		{
			motor2.setpwm(P2_mid);
			motor1.setpwm(P1_mid);
			xpid.err_last2 = ypid.err_last2 = Yspeedpid.err_last2= Xspeedpid.err_last2=0;
			cout << "no ball" << endl;
		}
		/*更新红点左边*/
		my_camera.GetRedPos(redpos);
		/*画出设置点*/
		circle(frame, Point((int)(finepos.x / k1) + 8, (int)(finepos.y / k1) + 8), 5, CV_RGB(0, 0, 255), 5, 8, 0);
		char str[10];
		sprintf_s(str, "[%d,%d]", finepos.x, finepos.y);
		putText(frame, str, Point((int)(finepos.x / k1) + 8,(int )(finepos.y / k1) + 8), FONT_HERSHEY_PLAIN, 1, CV_RGB(0, 0, 255), 2, 5, 0);

		/*更新控制模式*/
		changecontrolmode();
		imshow("show1", frame);	
		waitKey(1);
	}
	return 0;
}

/*计算运算周期*/
void updatatime(void)
{
	static time_t lasttime = clock();
	time_t newtime = clock();
	cout << "time= " << newtime - lasttime;
	lasttime = newtime;
}


/*多线程更新手柄键值*/
DWORD WINAPI gamepaddata(LPVOID lpParameter)
{
	Gamepad gamepad;
	Gamepad::padnum keyval;
	while (1)
	{
		Sleep(300);
		gamepad.updatakeyval();
		gamepad.Getnum(keyval);
		if (keyval == Gamepad::noval)
		{
			continue;
		}
		int step = 50;
		switch (keyval)
		{
			case Gamepad::Up:
				gamepadpos.y += step; break;
			case Gamepad::Dwon:
				gamepadpos.y -= step; break;
			case Gamepad::Right:
				gamepadpos.x += step; break;
			case Gamepad::Left:
				gamepadpos.x -= step; break;
			case Gamepad::key1:
				cout << "staycenter mode"   << endl; myballcontrol = staycenter; break;
			case Gamepad::key2:
				cout << "redposcontrol mode" << endl; myballcontrol = redposcontrol; break;
			case Gamepad::key3:
				cout << "gamepadpos mode" << endl; myballcontrol = gamepadcontrol; gamepadpos = Point(200, 200); break;
			case Gamepad::key4:
				cout << "automove mode" << endl; myballcontrol = automove; break;
			case Gamepad::key5:
				cout << "spin mode" << endl; myballcontrol = spinmode; break;
		}
		int limit = 100;
		if (gamepadpos.x >= 400 - limit)gamepadpos.x = 400 - limit;
		if (gamepadpos.x <= limit)gamepadpos.x = limit;
		if (gamepadpos.y >= 400 - limit)gamepadpos.y = 400 - limit;
		if (gamepadpos.y <= limit)gamepadpos.y = limit;
		cout << "keyval=" << (int)keyval << endl;
		xpid.err_last2 = ypid.err_last2 = 0;
	}
	return 0;
}


void changecontrolmode(void)
{
	char str[20];
	switch (myballcontrol)
	{
	case staycenter:					/*中心稳定模式*/
		finepos = Point(200, 200);
		break;
	case	redposcontrol:				/*红点跟踪模式*/
		finepos = redpos;
		sprintf_s(str, "[%d,%d]", redpos.x, redpos.y);
		putText(frame, str, Point((int)(redpos.x / k1) + 8, (int)(redpos.y / k2) + 8), FONT_HERSHEY_PLAIN, 1, CV_RGB(255, 0, 0), 2, 5, 0);
		break;
	case gamepadcontrol:			/*手柄控制模式*/
		finepos = gamepadpos;
		sprintf_s(str, "[%d,%d]", gamepadpos.x, gamepadpos.y);
		putText(frame, str, Point((int)(gamepadpos.x / k1) + 8, (int)(gamepadpos.y / k2) + 8), FONT_HERSHEY_PLAIN, 1, CV_RGB(0, 255, 0), 2, 5, 0);
		break;	
	case spinmode:					/*圆周运动模式*/
		calecriclepos();
		break;
	case automove:					/*正方形运动模式*/
		static Point autopos[4] = { {100,100,},{300,100},{300,300},{100,300} };
		static char autocount = 0;
		static time_t lasttime = clock();
		if (clock() - lasttime >= 2 * 1000)
		{
			autocount++;
			if (autocount >= 4)autocount = 0;
			finepos = autopos[autocount];
			lasttime = clock();
		}
		break;
	}
	static double backupKi = xpid.Ki;
	(myballcontrol == spinmode) ? xpid.Ki = ypid.Ki = 0 : xpid.Ki = ypid.Ki=backupKi; /*圆周运动不需内环积分*/
}


double xcriclecos[360] = {
0.99985,0.99939,0.99863,0.99756,0.99619,0.99452,0.99255,0.99027,0.98769,0.98481,
0.98163,0.97815,0.97437,0.97030,0.96593,0.96126,0.95630,0.95106,0.94552,0.93969,
0.93358,0.92718,0.92050,0.91355,0.90631,0.89879,0.89101,0.88295,0.87462,0.86603,
0.85717,0.84805,0.83867,0.82904,0.81915,0.80902,0.79864,0.78801,0.77715,0.76604,
0.75471,0.74314,0.73135,0.71934,0.70711,0.69466,0.68200,0.66913,0.65606,0.64279,
0.62932,0.61566,0.60182,0.58779,0.57358,0.55919,0.54464,0.52992,0.51504,0.50000,
0.48481,0.46947,0.45399,0.43837,0.42262,0.40674,0.39073,0.37461,0.35837,0.34202,
0.32557,0.30902,0.29237,0.27564,0.25882,0.24192,0.22495,0.20791,0.19081,0.17365,
0.15643,0.13917,0.12187,0.10453,0.08716,0.06976,0.05234,0.03490,0.01745,0.00000,
-0.01745,-0.03490,-0.05234,-0.06976,-0.08716,-0.10453,-0.12187,-0.13917,-0.15643,-0.17365,
-0.19081,-0.20791,-0.22495,-0.24192,-0.25882,-0.27564,-0.29237,-0.30902,-0.32557,-0.34202,
-0.35837,-0.37461,-0.39073,-0.40674,-0.42262,-0.43837,-0.45399,-0.46947,-0.48481,-0.50000,
-0.51504,-0.52992,-0.54464,-0.55919,-0.57358,-0.58779,-0.60182,-0.61566,-0.62932,-0.64279,
-0.65606,-0.66913,-0.68200,-0.69466,-0.70711,-0.71934,-0.73135,-0.74314,-0.75471,-0.76604,
-0.77715,-0.78801,-0.79864,-0.80902,-0.81915,-0.82904,-0.83867,-0.84805,-0.85717,-0.86603,
-0.87462,-0.88295,-0.89101,-0.89879,-0.90631,-0.91355,-0.92050,-0.92718,-0.93358,-0.93969,
-0.94552,-0.95106,-0.95630,-0.96126,-0.96593,-0.97030,-0.97437,-0.97815,-0.98163,-0.98481,
-0.98769,-0.99027,-0.99255,-0.99452,-0.99619,-0.99756,-0.99863,-0.99939,-0.99985,-1.00000,
-0.99985,-0.99939,-0.99863,-0.99756,-0.99619,-0.99452,-0.99255,-0.99027,-0.98769,-0.98481,
-0.98163,-0.97815,-0.97437,-0.97030,-0.96593,-0.96126,-0.95630,-0.95106,-0.94552,-0.93969,
-0.93358,-0.92718,-0.92050,-0.91355,-0.90631,-0.89879,-0.89101,-0.88295,-0.87462,-0.86603,
-0.85717,-0.84805,-0.83867,-0.82904,-0.81915,-0.80902,-0.79864,-0.78801,-0.77715,-0.76604,
-0.75471,-0.74314,-0.73135,-0.71934,-0.70711,-0.69466,-0.68200,-0.66913,-0.65606,-0.64279,
-0.62932,-0.61566,-0.60182,-0.58779,-0.57358,-0.55919,-0.54464,-0.52992,-0.51504,-0.50000,
-0.48481,-0.46947,-0.45399,-0.43837,-0.42262,-0.40674,-0.39073,-0.37461,-0.35837,-0.34202,
-0.32557,-0.30902,-0.29237,-0.27564,-0.25882,-0.24192,-0.22495,-0.20791,-0.19081,-0.17365,
-0.15643,-0.13917,-0.12187,-0.10453,-0.08716,-0.06976,-0.05234,-0.03490,-0.01745,-0.00000,
0.01745,0.03490,0.05234,0.06976,0.08716,0.10453,0.12187,0.13917,0.15643,0.17365,
0.19081,0.20791,0.22495,0.24192,0.25882,0.27564,0.29237,0.30902,0.32557,0.34202,
0.35837,0.37461,0.39073,0.40674,0.42262,0.43837,0.45399,0.46947,0.48481,0.50000,
0.51504,0.52992,0.54464,0.55919,0.57358,0.58779,0.60182,0.61566,0.62932,0.64279,
0.65606,0.66913,0.68200,0.69466,0.70711,0.71934,0.73135,0.74314,0.75471,0.76604,
0.77715,0.78801,0.79864,0.80902,0.81915,0.82904,0.83867,0.84805,0.85717,0.86603,
0.87462,0.88295,0.89101,0.89879,0.90631,0.91355,0.92050,0.92718,0.93358,0.93969,
0.94552,0.95106,0.95630,0.96126,0.96593,0.97030,0.97437,0.97815,0.98163,0.98481,
0.98769,0.99027,0.99255,0.99452,0.99619,0.99756,0.99863,0.99939,0.99985,1.00000,
};

double ycriclesin[360] = {
0.01745,0.03490,0.05234,0.06976,0.08716,0.10453,0.12187,0.13917,0.15643,0.17365,
0.19081,0.20791,0.22495,0.24192,0.25882,0.27564,0.29237,0.30902,0.32557,0.34202,
0.35837,0.37461,0.39073,0.40674,0.42262,0.43837,0.45399,0.46947,0.48481,0.50000,
0.51504,0.52992,0.54464,0.55919,0.57358,0.58779,0.60182,0.61566,0.62932,0.64279,
0.65606,0.66913,0.68200,0.69466,0.70711,0.71934,0.73135,0.74314,0.75471,0.76604,
0.77715,0.78801,0.79864,0.80902,0.81915,0.82904,0.83867,0.84805,0.85717,0.86603,
0.87462,0.88295,0.89101,0.89879,0.90631,0.91355,0.92050,0.92718,0.93358,0.93969,
0.94552,0.95106,0.95630,0.96126,0.96593,0.97030,0.97437,0.97815,0.98163,0.98481,
0.98769,0.99027,0.99255,0.99452,0.99619,0.99756,0.99863,0.99939,0.99985,1.00000,
0.99985,0.99939,0.99863,0.99756,0.99619,0.99452,0.99255,0.99027,0.98769,0.98481,
0.98163,0.97815,0.97437,0.97030,0.96593,0.96126,0.95630,0.95106,0.94552,0.93969,
0.93358,0.92718,0.92050,0.91355,0.90631,0.89879,0.89101,0.88295,0.87462,0.86603,
0.85717,0.84805,0.83867,0.82904,0.81915,0.80902,0.79864,0.78801,0.77715,0.76604,
0.75471,0.74314,0.73135,0.71934,0.70711,0.69466,0.68200,0.66913,0.65606,0.64279,
0.62932,0.61566,0.60182,0.58779,0.57358,0.55919,0.54464,0.52992,0.51504,0.50000,
0.48481,0.46947,0.45399,0.43837,0.42262,0.40674,0.39073,0.37461,0.35837,0.34202,
0.32557,0.30902,0.29237,0.27564,0.25882,0.24192,0.22495,0.20791,0.19081,0.17365,
0.15643,0.13917,0.12187,0.10453,0.08716,0.06976,0.05234,0.03490,0.01745,0.00000,
-0.01745,-0.03490,-0.05234,-0.06976,-0.08716,-0.10453,-0.12187,-0.13917,-0.15643,-0.17365,
-0.19081,-0.20791,-0.22495,-0.24192,-0.25882,-0.27564,-0.29237,-0.30902,-0.32557,-0.34202,
-0.35837,-0.37461,-0.39073,-0.40674,-0.42262,-0.43837,-0.45399,-0.46947,-0.48481,-0.50000,
-0.51504,-0.52992,-0.54464,-0.55919,-0.57358,-0.58779,-0.60182,-0.61566,-0.62932,-0.64279,
-0.65606,-0.66913,-0.68200,-0.69466,-0.70711,-0.71934,-0.73135,-0.74314,-0.75471,-0.76604,
-0.77715,-0.78801,-0.79864,-0.80902,-0.81915,-0.82904,-0.83867,-0.84805,-0.85717,-0.86603,
-0.87462,-0.88295,-0.89101,-0.89879,-0.90631,-0.91355,-0.92050,-0.92718,-0.93358,-0.93969,
-0.94552,-0.95106,-0.95630,-0.96126,-0.96593,-0.97030,-0.97437,-0.97815,-0.98163,-0.98481,
-0.98769,-0.99027,-0.99255,-0.99452,-0.99619,-0.99756,-0.99863,-0.99939,-0.99985,-1.00000,
-0.99985,-0.99939,-0.99863,-0.99756,-0.99619,-0.99452,-0.99255,-0.99027,-0.98769,-0.98481,
-0.98163,-0.97815,-0.97437,-0.97030,-0.96593,-0.96126,-0.95630,-0.95106,-0.94552,-0.93969,
-0.93358,-0.92718,-0.92050,-0.91355,-0.90631,-0.89879,-0.89101,-0.88295,-0.87462,-0.86603,
-0.85717,-0.84805,-0.83867,-0.82904,-0.81915,-0.80902,-0.79864,-0.78801,-0.77715,-0.76604,
-0.75471,-0.74314,-0.73135,-0.71934,-0.70711,-0.69466,-0.68200,-0.66913,-0.65606,-0.64279,
-0.62932,-0.61566,-0.60182,-0.58779,-0.57358,-0.55919,-0.54464,-0.52992,-0.51504,-0.50000,
-0.48481,-0.46947,-0.45399,-0.43837,-0.42262,-0.40674,-0.39073,-0.37461,-0.35837,-0.34202,
-0.32557,-0.30902,-0.29237,-0.27564,-0.25882,-0.24192,-0.22495,-0.20791,-0.19081,-0.17365,
-0.15643,-0.13917,-0.12187,-0.10453,-0.08716,-0.06976,-0.05234,-0.03490,-0.01745,-0.00000,

};

#define cycle (double)3			/*周期*/

void calecriclepos(void)
{
	double rf = sqrt((x - (double)(centerpos.x))*(x - (double)(centerpos.x)) + (y - (double)(centerpos.y))*(y - (double)(centerpos.y)));

	static double outradiu = 1;
	static int criclecount = 0;
	if (criclecount >= 360)criclecount = 0;

	/*防止积分过饱和*/
	double Rkimax = 0.5;
	if (Rpid.err_last2*Rpid.Ki >= Rkimax)Rpid.err_last2 = Rkimax / Rpid.Ki;
	if (Rpid.err_last2*Rpid.Ki <= -Rkimax)Rpid.err_last2 = -Rkimax / Rpid.Ki;
	/*积分分离*/
	if (abs(Rpid.Set - rf) > 10)Rpid.err_last2 = 0;

	double temp = 0;
	Rpid.cale(rf, temp);

	outradiu += temp;
	if (outradiu >= 150)outradiu = 150;
	if (outradiu <= 0)outradiu = 1;
	xpid.Set = xcriclecos[criclecount] * outradiu + (double)centerpos.x;
	ypid.Set = ycriclesin[criclecount] * outradiu + (double)centerpos.y;
	finepos.x = (int)xpid.Set;
	finepos.y = (int)ypid.Set;
	criclecount += 5;//调节一次步进的角度，控制圆周运动速度
}
