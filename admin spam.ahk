#NoTrayIcon
; slightly modified code that wasn't made by me, what i added is: "AdminBeg:", "Goto AdminBeg" and finally "sleep 12000"(line 4):
AdminBeg:
sleep 12000
#SingleInstance Force
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
  try
  {
    if A_IsCompiled
      Run '*RunAs "' A_ScriptFullPath '" /restart'
    else
      Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
  }
}
Goto AdminBeg