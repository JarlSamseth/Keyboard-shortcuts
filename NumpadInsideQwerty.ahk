;#If GetKeyState("CapsLock", "T") ; True if CapsLock is ON, false otherwise.
;a::b
;
;#If not GetKeyState("CapsLock", "T") ;
;a::a

;#If GetKeyState("CapsLock", "T") ; True if CapsLock is ON, false otherwise.

#If (GetKeyState("NumLock", "T") and GetKeyState("CapsLock", "T"))  ; True if NumLock is toggled ON, false otherwise.
a::1
s::2
d::3
f::4
g::5
h::6
j::7
k::8
l::9
�::0 ; REmember to set Encoding to ANSI in Notepad++ when writing ��� in autohotkey
m::SendRaw + 
<^>!8::
send, (
<^>!9::
send, )
; p� noen tastatur, slik som HP, er Numpaden lagt inn i qwerty-tastaturet (over tastene mjk�luiop7890) med F10 som NumLock toggle-tast. De endres derfor til mitt numpadInsideQwerty-oppsett:
NumpadAdd::SendRaw -
NumpadDot::SendRaw .
;+NumpadDot::SendRaw :
NumpadDel::SendRaw :   ; NumpadDel er lik shift + NumpadDot
Numpad0::+
Numpad1::7
Numpad2::8
Numpad3::9
Numpad5::/
NumpadSub::0
Numpad4::*
NumpadMult::p
Return 
;Merk: Beh�ver ikke stille disse tastene tilbake. N�r NumLock og CapsLock er toggled on, blir denne lista med key values brukt. Men ikke n�r den er skrudd av. Autohotkey fungerer ikke slik at key::value parene blir installert idet #If er true, hvilket hadde f�rt til at de ble gjeldende ogs� n�r #If ble false igjen, men at denne lista blir sjekket n�r #If er true. F�lgende liste med tilbakestillinger er derfor overfl�dig.
;#If (not (GetKeyState("NumLock", "T") and GetKeyState("CapsLock", "T"))) ; True if NumLock is toggled ON, false otherwise.
;a::a
;s::s
;d::d
;f::f
;g::g
;h::h
;k::k
;�::�
;l::l
;m::m
;<^>!k::send, (
;<^>!l::send, )
;Return