SetTitleMatchMode, 2
#IfWinActive Olympia

!n::
MouseGetPos, x, y
Send, x:%x% - y:%y%
return

F12:: Reload

!z:: ; SET MP
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {F6}
	Send, {Ctrl down}
	Click, 474, 427
	Send, {Ctrl up}{F6}
	MouseMove, x, y, 0
	
	return
}

!x:: ; SET HP
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {F6}
	Send, {Ctrl down}
	Click, 597, 426
	Send, {Ctrl up}{F6}
	MouseMove, x, y, 0
	
	return
}

!c:: ; SET DR - Alt + C
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {F6}
	Send, {Ctrl down}
	Click, 474, 490
	Send, {Ctrl up}{F6}
	MouseMove, x, y, 0
	
	return
}

!v:: ; SET MA - Alt + V
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {F6}
	Send, {Ctrl down}
	Click, 474, 568
	Send, {Ctrl up}{F6}
	MouseMove, x, y, 0
	
	return
}

!a:: ; Paralyze - Alt + A
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{4}{Ctrl up}
	Click, 525, 304
	MouseMove, x, y, 0
	return
}

!s:: ; Mas ice strike - Alt + s
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{8}{Ctrl up}
	Click, 551, 229
	MouseMove, x, y, 0
	return
}

F11::
IfNotEqual, A_IsPaused, 1
{
	;MouseClickDrag, Left, , , 611, 142, 50
	Click, down
	;Sleep, 100
	MouseMove, 611, 142, 10
	;Sleep, 100
	Click, up
	return
}


!b:: ; Pretend corpse skill
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {F8}
	Click, 568, 7, 3
	Send, {F8}
	MouseMove, x, y, 0
	return
}

!1:: ; Defense shield
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{2}{Ctrl up}
	Click, 536, 267
	MouseMove, x, y, 0
	return
}


!2:: ; Spike field
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{6}{Ctrl up}
	Click, 532, 268
	MouseMove, x, y, 0
	return
}

!4:: ; Invisibility
IfNotEqual, A_IsPaused, 1
{
	Send, {Ctrl down}{4}{Ctrl up}
	Click, 525, 251
	MouseMove, 399, 278, 0
	return
}

!3:: ; MIM
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{0}{Ctrl up}
	Click, 559, 232
	MouseMove, x, y, 0
	return
}


!q::
!6:: ; Berserk
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{6}{Ctrl up}
	Click, 512, 214
	MouseMove, x, y, 0
	return
}

!w::
!7:: ; Armor break
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{7}{Ctrl up}
	Click, 537, 269
	MouseMove, x, y, 0
	return
}

!f:: ; FOT
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{0}{Ctrl up}
	Click, 555, 253
	MouseMove, x, y, 0
	return
}


^MButton:: ; Haste
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{6}{Ctrl up}
	Click, 509, 251
	MouseMove, x, y, 0
	return
}

XButton1:: ; Firewall
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{5}{Ctrl up}
	Click, 525, 233
	MouseMove, x, y, 0
	return
}

XButton2:: ; Transfer criticals
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{1}{Ctrl up}
	Click, 547, 253
	MouseMove, x, y, 0
	return
}

MButton:: ; DT
IfNotEqual, A_IsPaused, 1
{
	MouseGetPos, x, y
	Send, {Ctrl down}{4}{Ctrl up}
	Click, 530, 286
	MouseMove, x, y, 0
	return
}

#IfWinNotActive Olympia
; pass