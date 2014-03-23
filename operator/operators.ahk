op_delete(command) {
	if (command = "0") {
		delete_backward_line()
	} else if (command = "$") {
		delete_forward_line()
	} else if (command = "b") {
		delete_backward_word()
	} else if (command = "d") {
		delete_current_line()
	} else if (command = "h") {
		delete_left_char()
	} else if (command = "l") {
		delete_right_char()
	} if (command = "w") {
		delete_forward_word()
	}
	Return
}

op_copy(command) {
	set_visual()
	if (command = "w") {
		move_forward_word()
	} else if (command = "b") {
		move_backward_word()
	} else if (command = "0") {
		move_home()
	} else if (command = "$") {
		move_end()
	} else if (command = "y") {
		Send {Home}
		move_end()
	}
	copy()
	reset_visual()
	Return
}

op_find(command) {
	clipsaved := clipboard
	Loop, 10 {
		Send {Right}
		Send +{Right}
		Send ^c
		Send {Left}
		clip = %clipboard%
		if (clip = command) {
			break
		}
	}
	clipboard := clipsaved 
}

op_replace(command) {
	delete_right_char()
	Send %command%
}
