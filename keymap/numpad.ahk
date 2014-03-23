NumpadLeft::
	MouseGetPos, x0, y0
	MouseMove, x0 - 100, y0
	Return

NumpadIns & NumpadLeft::
	MouseGetPos, x0, y0
	MouseMove, x0 - 10, y0
	Return

NumpadRight::
	MouseGetPos, x0, y0
	MouseMove, x0 + 100, y0
	Return

NumpadIns & NumpadRight::
	MouseGetPos, x0, y0
	MouseMove, x0 + 10, y0
	Return

NumpadUp::
	MouseGetPos, x0, y0
	MouseMove, x0, y0 - 100
	Return

NumpadIns & NumpadUp::
	MouseGetPos, x0, y0
	MouseMove, x0, y0 - 10
	Return

NumpadDown::
	MouseGetPos, x0, y0
	MouseMove, x0, y0 + 100
	Return

NumpadIns & NumpadDown::
	MouseGetPos, x0, y0
	MouseMove, x0, y0 + 10
	Return

NumpadClear::
	MouseClick
	Return

NumpadIns::
	Return

