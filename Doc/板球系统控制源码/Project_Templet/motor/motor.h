#ifndef   __MOTORCONTROL
#define  __MOTORCONTROL

#include "./driver/serial.h"
#include <iostream>

#define P1_mid 1420
#define P2_mid 1510

class Motor {

public:

	Motor(Serial & serialport, std::string motorid, short midpwm );
	bool is_open(void);
	bool setpwm(short pwm);
	bool addpwm(short pwm);
	short getpwm(void);
private:
	std::string	 _motorid;	
	Serial *	_controlport;
	std::string _delaycount;
	short		_pwmcount;
	short		_maxpwm;
	short		_minpwm;
	short		_midpwm;
};

#endif // !__MOTORCONTROL
