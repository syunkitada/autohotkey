;マウス関連の関数群です。
; 関数名はすべてmouse_で始まります。

mouse_move_to_monitor(num) {
	num := __get_target_monitor(num)
	SysGet, OutputVar, MonitorWorkArea, %num%
	x := (OutputVarLeft + OutputVarRight) / 2
	y := OutputVarBottom / 2
	CoordMode,Mouse,Screen
	DllCall("SetCursorPos", UInt,x, UInt,y)
	MouseMove, x, y
	Return
}

mouse_move_up(len) {
	MouseGetPos, x0, y0
	MouseMove, x0, y0 - len
	Return
}

mouse_move_down(len) {
	MouseGetPos, x0, y0
	MouseMove, x0, y0 + len
	Return
}

mouse_move_left(len) {
	MouseGetPos, x0, y0
	MouseMove, x0 - len, y0
	Return
}

mouse_move_right(len) {
	MouseGetPos, x0, y0
	MouseMove, x0 + len, y0
	Return
}
