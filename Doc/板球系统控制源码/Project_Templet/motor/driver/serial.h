#ifndef    __SERIAL_H
#define	__SERIAL_H

#include<Windows.h>
#include<string>

class Serial

{

public:

	struct SerialOptions{
		std::string serialname;
		DWORD BaudRate;
		DWORD ByteSize;
		DWORD Parity;
		DWORD StopBits;	
	};
	Serial(std::string comname,DWORD BaudRate);
	struct SerialOptions serialoptions;
	
	static const SerialOptions defaultoptions;
	bool is_open();
	bool openPort();   //打开串口

	int readFromPort(void* buff, DWORD size,unsigned int timeout); //从串口读数据

	bool writeToPort(const void* buff,DWORD size,unsigned int timeout);//写数据到串口

	bool closePort();   //关闭串口

private:

	DCB _serialoptions;
	bool serialstatus;
	HANDLE _hcom;  //串口句柄

};

#endif
