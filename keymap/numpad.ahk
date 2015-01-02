NumpadHome::
	MouseGetPos, x0, y0
	MouseMove, x0 - 150, y0 - 150
	Return

NumpadUp::
	MouseGetPos, x0, y0
	MouseMove, x0, y0 - 250
	Return

NumpadPgUp::
	MouseGetPos, x0, y0
	MouseMove, x0 + 150, y0 - 150
	Return

NumpadLeft::
	MouseGetPos, x0, y0
	MouseMove, x0 - 250, y0
	Return

NumpadRight::
	MouseGetPos, x0, y0
	MouseMove, x0 + 250, y0
	Return

NumpadEnd::
	MouseGetPos, x0, y0
	MouseMove, x0 - 150, y0 + 150
	Return

NumpadDown::
	MouseGetPos, x0, y0
	MouseMove, x0, y0 + 250
	Return

NumpadPgDn::
	MouseGetPos, x0, y0
	MouseMove, x0 + 150, y0 + 150
	Return

NumpadClear::
	MouseClick
	Return

NumpadIns::
	Return
