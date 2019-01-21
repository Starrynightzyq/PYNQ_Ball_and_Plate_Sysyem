#include "motor.h"
#include <iostream>
#include <sstream> 
#include <cstdlib>
using namespace std;
Motor::Motor(Serial & serialport, string motorid, short midpwm) {
	_controlport = &serialport;
	_motorid = motorid;
	_midpwm = midpwm;
	_pwmcount = _midpwm;
	stringstream tempstring;
	string midpwm_str;
	tempstring << _midpwm;
	tempstring >> midpwm_str;
	string	command = "#" + _motorid + "P" + midpwm_str + "T0000!";
	cout << "init_command=  " << command << "len= " << command.length() << endl;
	_minpwm = 500;
	_maxpwm = 2500;
	_controlport->writeToPort(command.c_str(), command.length(), 0);
}

bool Motor::is_open(void) {
	string pwmcount;
	stringstream tempstring;
	tempstring << _pwmcount;
	tempstring >> pwmcount;
	string command = "#" + _motorid + "P" + pwmcount + "T0000!";
	cout << "isopen_command=" << command << endl;
	return _controlport->writeToPort(command.c_str(), command.length(), 0);
}


bool Motor::setpwm(short pwm) {
	_pwmcount = pwm;
	if (_pwmcount <= _minpwm)_pwmcount = _minpwm;
	if (_pwmcount >= _maxpwm)_pwmcount = _maxpwm;
	string pwmcount;
	stringstream tempstring;
	tempstring << _pwmcount;
	tempstring >> pwmcount;
	if (pwmcount.length() <= 4)
		pwmcount = '0' + pwmcount;
	string command = "#" + _motorid + "P" + pwmcount + "T0000!";
	return _controlport->writeToPort(command.c_str(), command.length(), 0);
}
bool Motor::addpwm(short pwm) {
	_pwmcount += pwm;
	if (_pwmcount <= _minpwm)_pwmcount = _minpwm;
	if (_pwmcount >= _maxpwm)_pwmcount = _maxpwm;
	string pwmcount;
	stringstream tempstring;
	tempstring << _pwmcount;
	tempstring >> pwmcount;
	string command = "#" + _motorid + "P" + pwmcount + "T0000!";
	return _controlport->writeToPort(command.c_str(), command.length() + 3, 500);
}
short Motor::getpwm(void) {
	return _pwmcount;
}

