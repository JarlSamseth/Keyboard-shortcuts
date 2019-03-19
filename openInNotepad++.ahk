;This code presumes that notepad++.exe has been added to path in environment variables -> system variables
F4::  ; F4 opens the marked file in a Notepad++.
Clipboard =
Send ^c
ClipWait 1
    Run Notepad++ "%clipboard%"
return



^LButton:: ; Ctrl + left mousebutton opens the one or many marked files, in a Notepad++ tab.
	if (A_PriorHotkey <> "^LButton" or A_TimeSincePriorHotkey > 400)
	{
	;not double click
	return
	}
Clipboard =
Send ^c
ClipWait 1
    Run Notepad++ "%clipboard%"
return
