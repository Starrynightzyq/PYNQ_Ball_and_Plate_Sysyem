#ifndef __CAMERA_H
#define __CAMERA_H

#include<opencv2/core.hpp>
#include<opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>  
#include<Windows.h>
#include<string>

using namespace cv;
using namespace std;

#define LOCAL_CAP      0		//��������ͷ
#define USB_CAP        1		//USB��������ͷ
#define CAP_HEIGHT     1920		//֡�߶�
#define CAP_WIDTH      1080		//֡���
#define CAP_FPS        120		//֡��
#define REAL_HEIGHT   400.0		//����ʵ�ʳ�(mm)
#define REAL_WIDTH    395.0		//����ʵ�ʿ�
#define Redpos_limt		100
class MyCamera
{
public:
	MyCamera(int cap);		// ������ͷ����ʼ����������ʼ��ƽ��
	bool IsOpen();		// �ж���������
	void GetImgData(Mat &frame);		// ��ȡһ��ͼ�񲢻Ҷ�,�ü����ڣ���ֵ��
	void GetExchangeValue(double &k1, double &k2);		//��ȡת��ϵ��
	void PrintBroadPosition();		//��ӡƽ���ʼ������
	void PrintExchangeValue();		//��ӡת��ϵ��
	void ScanfRedPos(Mat &frame);	//������
	void GetRedPos(Point &pos);		//��ȡ�������
private:
	VideoCapture capture;     
	Point redpos;						//�������
	Point redbegin;
	Point redend;
	Point broad_position1;		//�����ʼ��ƽ�����
	Point broad_position2;
	double exchange_value_x;		//x����ת��ϵ��
	double exchange_value_y;		//y����ת��ϵ��
};
#endif

