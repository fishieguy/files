#NoTrayIcon
OutsidePath := A_ScriptDir
exception := 0
if A_IsCompiled || exception = 1
{
	loop
	{
		sleep 50
		if ProcessExist("virus.exe") { ; i am aware this is not the most efficient way to detect if something has been closed
			;i have no need for code here
		}
		else
		{
			msgbox("its cloose","cheese",0+64+4096)
			ProcessClose "error spam.exe"
			ProcessClose "admin spam.exe"
			ProcessClose "typing mess.exe"
			ProcessClose "random click.exe"
			ProcessClose "random mousemove.exe"
			ExitApp
		}
	}
} ; everything below this point is unnecessary can can be put in the detection code above and there is no need to check if it is compiled or not
else
{
	{
		loop
		{
			sleep 50
			if ProcessExist(OutsidePath "\virus.ahk") { ; i do not know how to fix this line
				;i have no need for code here
			}
			else
			{
				ProcessClose "AutoHotkey64.exe"
				ExitApp
			}
		}
	}
}