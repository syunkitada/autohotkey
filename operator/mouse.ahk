operate_mouse(command) {
	if !is_mouse() {
		Return 0
	}

	if (command = "") {
	} else if (command = "1") {
		move_to_monitor(1)
	} else if (command = "2") {
		move_to_monitor(2)
	} else if (command = "3") {
		move_to_monitor(3)
	} else if (command = "4") {
		move_to_monitor(4)
	}

	else if (command = "q") {
		move_up_mouse(200)
	} else if (command = "w") {
		move_up_mouse(100)
	} else if (command = "e") {
		move_up_mouse(50)
	} else if (command = "r") {
		move_up_mouse(10)
	} else if (command = "a") {
		move_down_mouse(200)
	} else if (command = "s") {
		move_down_mouse(100)
	} else if (command = "d") {
		move_down_mouse(50)
	} else if (command = "f") {
		move_down_mouse(10)
	}
	
	else if (command = "h") {
		move_left_mouse(100)
	} else if (command = "j") {
		move_left_mouse(50)
	} else if (command = "k") {
		move_right_mouse(50)
	} else if (command = "l") {
		move_right_mouse(100)
	}
	

	Return 1
}

move_to_monitor(num) {
	SysGet, OutputVar, MonitorWorkArea, %num%
	x := (OutputVarLeft + OutputVarRight) / 2
	y := OutputVarBottom / 2
	CoordMode,Mouse,Screen
	DllCall("SetCursorPos", UInt,x, UInt,y)
	MouseMove, x, y
	Return
}

move_up_mouse(len) {
    MouseGetPos, x0, y0
    MouseMove, x0, y0 - len
	Return
}

move_down_mouse(len) {
    MouseGetPos, x0, y0
    MouseMove, x0, y0 + len
	Return
}

move_left_mouse(len) {
    MouseGetPos, x0, y0
    MouseMove, x0 - len, y0
	Return
}

move_right_mouse(len) {
    MouseGetPos, x0, y0
    MouseMove, x0 + len, y0
	Return
}
