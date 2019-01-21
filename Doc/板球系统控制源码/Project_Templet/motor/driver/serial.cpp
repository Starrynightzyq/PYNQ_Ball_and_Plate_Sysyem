#include "serial.h"
#include <iostream>
using namespace std;

const Serial::SerialOptions Serial::defaultoptions=
{
	"COM10",
	115200,
	8,	
	NOPARITY,
	ONESTOPBIT,
};
 Serial::Serial(std::string comname,DWORD	BaudRate)
 {
	 serialoptions = defaultoptions;
	 serialoptions.serialname = comname;
	 serialoptions.BaudRate = BaudRate;
	 serialstatus = openPort();
}

bool Serial::openPort()
{
	std::string com_port ="\\\\.\\"+serialoptions.serialname;//´ò¿ª´°¿Ú24
   	_hcom = CreateFile
	(
		com_port.c_str(),
		GENERIC_READ|GENERIC_WRITE,
		0,
		NULL,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		NULL
	);
	if(_hcom==INVALID_HANDLE_VALUE)
	{
		std::cout<<"CreateFile false"<<endl;
		return false;
	}
	SetupComm(_hcom,8,8); 
	COMMTIMEOUTS TimeOuts;
	TimeOuts.ReadTotalTimeoutConstant=200;
	TimeOuts.WriteTotalTimeoutMultiplier=500;
	TimeOuts.WriteTotalTimeoutConstant=2000;
	if(SetCommTimeouts(_hcom,&TimeOuts)==false)
	{
		std::cout<<"SetCommTimeouts false"<<endl;
		return false;
	}
	
	if(GetCommState(_hcom,&_serialoptions)==false)
	{
		std::cout<<"GetCommState false"<<endl;
		return false;
	}
	
	_serialoptions.BaudRate=serialoptions.BaudRate;
	_serialoptions.ByteSize=serialoptions.ByteSize; 
	_serialoptions.Parity=serialoptions.Parity; 
	_serialoptions.StopBits=serialoptions.StopBits; 	
	if(SetCommState(_hcom,&_serialoptions)==false)
	{
		std::cout<<"SetCommState false"<<endl;
		return false;
	}	
	if(PurgeComm(_hcom,PURGE_TXCLEAR|PURGE_RXCLEAR)==false)
	{
		std::cout<<"PurgeComm false"<<endl;
		return false;
	}	
   	return true;
}

int Serial::readFromPort(void*buff,DWORD size,unsigned int timeout)
{
   COMMTIMEOUTS readCommTimeOuts;
   memset(&readCommTimeOuts, 0,sizeof(readCommTimeOuts));
   readCommTimeOuts.ReadTotalTimeoutConstant=timeout;
   SetCommTimeouts(_hcom,&readCommTimeOuts);
   DWORD dwReadBytes = 0;
   if (ReadFile(_hcom,buff,size, &dwReadBytes,NULL))
   {
		return dwReadBytes;
   }
   else
   {
		std::cout<<"ReadFile false"<<endl;
       	return -1;
   }
}

bool Serial::writeToPort(const void*buff,DWORD size,unsigned int timeout)
{
   COMMTIMEOUTS writeCommTimeOuts;
   memset(&writeCommTimeOuts, 0,sizeof(writeCommTimeOuts));
   writeCommTimeOuts.WriteTotalTimeoutConstant=timeout;
   SetCommTimeouts(_hcom,&writeCommTimeOuts);
   DWORD dwWriteBytes = 0;
   if (WriteFile(_hcom,buff,size, &dwWriteBytes,NULL))
   {
       	return true;
   }
   else
   {
		std::cout<<"ReadFile false"<<endl;
       	return false;
   }
}

bool Serial::closePort()
{
  	if (_hcom!= INVALID_HANDLE_VALUE)
	{
		return CloseHandle(_hcom);
    }
  	return false;
}


bool Serial::is_open() 
{
	return serialstatus;
}
