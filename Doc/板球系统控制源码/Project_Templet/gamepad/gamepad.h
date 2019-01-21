#pragma once
#include "dinput.h"
#include "dinputd.h"

#include "joystickapi.h"
#pragma comment(lib,"dxguid.lib")
#pragma comment(lib,"dinput8.lib")
#pragma comment(lib, "winmm.lib")


class Gamepad
{
public:
	enum padnum{key1,key2,key3,key4, key5,key6,key7,key8,key9,key10, noval, Up, Dwon, Right, Left};
	void Getnum(enum padnum &keyval);
	 bool bJoyStickCanUse();
	 void  updatakeyval(void);
	 bool sta;
private:
	HANDLE HOne;
	 enum padnum _lastkeynum;
	 UINT uiXmid, uiYmid, uiLeft, uiRight, uiUp, uiDown;
};
