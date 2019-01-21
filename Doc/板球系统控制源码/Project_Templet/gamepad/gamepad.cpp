#include "gamepad.h"
#include <windows.h>


void  Gamepad::Getnum(enum padnum & keyval)
{
	keyval = _lastkeynum;
}

bool Gamepad::bJoyStickCanUse()
{
	JOYCAPS jc;
	if (0 >= joyGetNumDevs())//判断系统支持的手柄数目
		return false;
	if (JOYERR_NOERROR != joyGetDevCaps(JOYSTICKID1, &jc, sizeof(jc)))//判断ID1手柄是否可以使用
		return false;
	uiXmid = (jc.wXmin + jc.wXmax) / 2;//x轴的中间位置
	uiYmid = (jc.wYmin + jc.wYmax) / 2;//y轴的中间位置
	uiLeft = (uiXmid + jc.wXmin) / 2;//左转的阀值
	uiRight = (uiXmid + jc.wXmax) / 2;//右转的阀值
	uiUp = (uiYmid + jc.wYmax) / 2;//爬升的阀值
	uiDown = (uiYmid + jc.wYmin) / 2;//下滑的阀值
	return true;
}

void Gamepad::updatakeyval(void)
{
	JOYINFOEX jiex;
	if (!bJoyStickCanUse())
		return ;
	jiex.dwFlags = JOY_RETURNALL;
	if (JOYERR_NOERROR != joyGetPosEx(JOYSTICKID1, &jiex))
		return;
	if (jiex.dwXpos <= uiLeft)
	{
		Sleep(50);
		_lastkeynum = Left;
		return;
	}
	if (jiex.dwXpos >= uiRight)
	{
		Sleep(50);
		_lastkeynum = Right;
		return;
	}
	if (jiex.dwYpos <= uiDown)
	{
		Sleep(50);
		_lastkeynum = Dwon;
		return;
	}
	if (jiex.dwYpos >= uiUp)
	{
		Sleep(50);
		_lastkeynum = Up;
		return;
	}
	if (jiex.dwButtonNumber > 0)
	{
		for (int i = 0; i < 32; ++i)
		{
			if (jiex.dwButtons&(1 << i))
			{
				Sleep(50);
				_lastkeynum = (enum padnum) i;
				return;
			}
		}
	}
	_lastkeynum = noval;
	Sleep(150);
}




