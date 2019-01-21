#ifndef __CAMERA_H
#define __CAMERA_H

#include<opencv2/core.hpp>
#include<opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>  
#include<Windows.h>
#include<string>

using namespace cv;
using namespace std;

#define LOCAL_CAP      0		//本地摄像头
#define USB_CAP        1		//USB外置摄像头
#define CAP_HEIGHT     1920		//帧高度
#define CAP_WIDTH      1080		//帧宽度
#define CAP_FPS        120		//帧率
#define REAL_HEIGHT   400.0		//板子实际长(mm)
#define REAL_WIDTH    395.0		//板子实际宽
#define Redpos_limt		100
class MyCamera
{
public:
	MyCamera(int cap);		// 打开摄像头，初始化参数，初始化平板
	bool IsOpen();		// 判断上述操作
	void GetImgData(Mat &frame);		// 获取一副图像并灰度,裁剪窗口，二值化
	void GetExchangeValue(double &k1, double &k2);		//获取转换系数
	void PrintBroadPosition();		//打印平板初始化坐标
	void PrintExchangeValue();		//打印转换系数
	void ScanfRedPos(Mat &frame);	//处理红点
	void GetRedPos(Point &pos);		//获取红点坐标
private:
	VideoCapture capture;     
	Point redpos;						//红点中心
	Point redbegin;
	Point redend;
	Point broad_position1;		//保存初始化平板参数
	Point broad_position2;
	double exchange_value_x;		//x方向转化系数
	double exchange_value_y;		//y方向转化系数
};
#endif

