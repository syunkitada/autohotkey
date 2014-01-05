operate(command, is_check_browsing=1) {
	if bypass() {
		Return 0
	}

	if append_colon(command) {
		Return 1
	}

	if is_check_browsing and !is_browsing() {
		Return 0
	}

    global operator
    global operator_count
    global pre_operator
    global pre_operator_command
    global pre_operator_count

    if (command != ".") {
        pre_operator = %operator%
        pre_operator_command = %command%
        pre_operator_count = %operator_count%
    }

    Loop %operator_count% {
        if (operator) {
            if (operator = "c") {
                op_delete(command)
                reset_all()
            } else if (operator = "d") {
                op_delete(command)
            } else if (operator = "f") {
                op_find(command)
            } else if (operator = "g") {
                Send ^{Home}
            } else if (operator = "r") {
                op_replace(command)
            } else if (operator = "y") {
                op_copy(command)
            }
            reset_operator()
        } else {
            if (command = ".") {
                operator = %pre_operator%
                operator_count = %pre_operator_count%
                operate(pre_operator_command, 0)
            } if (command = "/") {
                Send ^f
            } else if (command = "$") {
                move_end()
            } else if (command = ";") {
                move_home()
            } else if (command = ":") {
                move_end()
            } else if (command = "0") {
                move_home()
            } else if (command = "a") {
                Send {Right}
                reset_all()
			} else if (command = "+a") {
				move_end()
				reset_all()
            } else if (command = "b") {
                move_backward_word()
            } else if (command = "c") {
                set_operator("c")
            } else if (command = "d") {
                set_operator("d")
            } else if (command = "+d") {
                op_delete("$")
            } else if (command = "f") {
                set_operator("f")
            } else if (command = "g") {
                set_operator("g")
            } else if (command = "+g") {
				Send ^{End}
            } else if (command = "h") {
                move_left()
            } else if (command = "i") {
                reset_all()
            } else if (command = "+i") {
				move_home()
				reset_browsing()
            } else if (command = "j") {
                move_down()
            } else if (command = "k") {
                move_up()
            } else if (command = "l") {
                move_right()
            } else if (command = "m") {
                move_pageup()
            } else if (command = "n") {
                move_pagedown()
            } else if (command = "o") {
                Send {End}{Enter}
                reset_all()
            } else if (command = "+o") {
				Send {Home}{Enter}{Up} 
				reset_browsing()
            } else if (command = "p") {
                paste()
                reset_visual()  
            } else if (command = "+p") {
                if is_terminal() {
                    Send ^y
                } else {
                    Send {Up}
                    paste()
                    reset_visual()  
                }
            } else if (command = "r") {
                set_operator("r")
            } else if (command = "s") {
                Send {RButton}
                Send v
            } else if (command = "u") {
                move_pageup()
            } else if (command = "v") {
                switch_visual()
            } else if (command = "w") {
                move_forward_word()
            } else if (command = "x") {
                delete_right_char()
            } else if (command = "+x") {
                delete_left_char()
            } else if (command = "y") {
                if is_visual() {
                    copy()
                    reset_visual()           
                } else {
                    set_operator("y")
                }
            } else if (command = "+y") {
				Send +{End}
				Sleep, 5
				Send ^c
				reset_visual()
			}
        }  
    }
    reset_operator_count()

	Return 1
}

