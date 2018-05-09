;Sleep mode - Win+Shift+S
#Esc::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 1)
Return
;Shutdown mode with Hotkey - Win+Shift+P (P, like PowerDown)
#!Esc::Shutdown, 1
Return

!q::
WinClose, A
Return
