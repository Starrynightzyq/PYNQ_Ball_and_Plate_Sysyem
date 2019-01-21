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
	bool openPort();   //�򿪴���

	int readFromPort(void* buff, DWORD size,unsigned int timeout); //�Ӵ��ڶ�����

	bool writeToPort(const void* buff,DWORD size,unsigned int timeout);//д���ݵ�����

	bool closePort();   //�رմ���

private:

	DCB _serialoptions;
	bool serialstatus;
	HANDLE _hcom;  //���ھ��

};

#endif
