operate_mouse(command) {
	if !is_mouse() {
		Return 0
	}

	if (command = "") {
	} else if (command = "Space") {
		MouseClick, Left
	} else if (command = "Shift") {
		MouseClick, Right
	} else if (command = "Tab") {
		MouseClick, Middle
	}

	else if (command = "v") {
		MouseClick, Left,,,,, D
	} else if (command = "z") {
		paste()
		MouseClick, Left,,,,, U
	} else if (command = "x") {
		cut()
		MouseClick, Left,,,,, U
	} else if (command = "c") {
		copy()
		MouseClick, Left,,,,, U
	} else if (command = "b") {
		MouseClick, Left,,,,, U
	}

	else if (command = "1") {
		mouse_move_to_monitor(1)
	} else if (command = "2") {
		mouse_move_to_monitor(2)
	} else if (command = "3") {
		mouse_move_to_monitor(3)
	} else if (command = "4") {
		mouse_move_to_monitor(4)
	}

	else if (command = "q") {
		mouse_move_left(10)
	} else if (command = "w") {
		mouse_move_down(10)
	} else if (command = "e") {
		mouse_move_up(10)
	} else if (command = "r") {
		mouse_move_right(10)
	} else if (command = "t") {
		mouse_move_to_monitor(-1)
	}

	else if (command = "y") {
		mouse_move_left(50)
	} else if (command = "u") {
		mouse_move_down(50)
	} else if (command = "i") {
		mouse_move_up(50)
	} else if (command = "o") {
		mouse_move_right(50)
	}

	else if (command = "a") {
		mouse_move_left(100)
	} else if (command = "s") {
		mouse_move_down(100)
	} else if (command = "d") {
		mouse_move_up(100)
	} else if (command = "f") {
		mouse_move_right(100)
	} else if (command = "g") {
		mouse_move_to_monitor(0)
	}

	else if (command = "h") {
		mouse_move_left(300)
	} else if (command = "j") {
		mouse_move_down(300)
	} else if (command = "k") {
		mouse_move_up(300)
	} else if (command = "l") {
		mouse_move_right(300)
	}

	Return 1
}

