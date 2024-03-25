; i dont know how to make the error symbols look clean and nice, so they look a bit buggy against a black backround, if you know how to fix the issue please attempt to contact and inform me how to
#NoTrayIcon
Loop 20 {
	sleep 10
    FullPath := A_ScriptFullPath
    RandomX := Random(0, 1919)
    RandomY := Random(0, 1079)
	
	ErrorSpamGui := "MyGui" A_Index ; i found about A_Index from chatgpt, yes its embarrassing that i could not figure it out myself.
	ErrorSpamGui := Gui() ; most the gui was made using easy autogui, i kinda just tweaked the size, and name of the gui
	ErrorSpamGui.Opt("-MinimizeBox -MaximizeBox -SysMenu +AlwaysOnTop -Caption +Owner")
    ErrorSpamGui.Add("Picture", "x0 y0 w32 h32", "C:\Users\user\AppData\Local\Temp\error.ico")
    ErrorSpamGui.OnEvent('Close', (*) => ExitApp())
	ErrorSpamGui.Title := "ERROR"
    ErrorSpamGui.Show("x" RandomX "y" RandomY " w32 h32")
	RandomTime := Random("45000","60000")
	SetTimer hid, RandomTime
	hid() ; i was planning to use ErrorSpamGui.hide instead of reload but it only affected one target
	{
		Reload
	}
}