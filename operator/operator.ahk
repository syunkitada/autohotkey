operate(motion, is_check_browsing=1) {
	if bypass() {
		Return 0
	}

	if append_colon(motion) {
		Return 1
	}

	if is_check_browsing and !is_browsing() {
		Return 0
	}

    global operator
    global operator_count
    global pre_operator
    global pre_operator_motion
    global pre_operator_count

    if (motion != ".") {
        pre_operator = %operator%
        pre_operator_motion = %motion%
        pre_operator_count = %operator_count%
    }

    Loop %operator_count% {
        if (operator) {
            if (operator = "c") {
                op_delete(motion)
                reset_all()
            } else if (operator = "d") {
                op_delete(motion)
            } else if (operator = "f") {
                op_find(motion)
            } else if (operator = "g") {
                Send ^{Home}
            } else if (operator = "r") {
                op_replace(motion)
            } else if (operator = "y") {
                op_copy(motion)
            }
            reset_operator()
        } else {
            if (motion = ".") {
                operator = %pre_operator%
                operator_count = %pre_operator_count%
                operate(pre_operator_motion, 0)
            } if (motion = "/") {
                Send ^f
            } else if (motion = "$") {
                move_end()
            } else if (motion = ":") {
                set_colon()
            } else if (motion = "0") {
                move_home()
            } else if (motion = "a") {
                Send {Right}
                reset_all()
			} else if (motion = "+a") {
				move_end()
				reset_all()
            } else if (motion = "b") {
                move_backward_word()
            } else if (motion = "c") {
                set_operator("c")
            } else if (motion = "d") {
                set_operator("d")
            } else if (motion = "+d") {
                op_delete("$")
            } else if (motion = "f") {
                set_operator("f")
            } else if (motion = "g") {
                set_operator("g")
            } else if (motion = "+g") {
				Send ^{End}
            } else if (motion = "h") {
                move_left()
            } else if (motion = "i") {
                reset_all()
            } else if (motion = "+i") {
				move_home()
				reset_browsing()
            } else if (motion = "j") {
                move_down()
            } else if (motion = "k") {
                move_up()
            } else if (motion = "l") {
                move_right()
            } else if (motion = "m") {
                move_pageup()
            } else if (motion = "n") {
                move_pagedown()
            } else if (motion = "o") {
                Send {End}{Enter}
                reset_all()
            } else if (motion = "+o") {
				Send {Home}{Enter}{Up} 
				reset_browsing()
            } else if (motion = "p") {
                paste()
                reset_visual()  
            } else if (motion = "+p") {
                if is_terminal() {
                    Send ^y
                } else {
                    Send {Up}
                    paste()
                    reset_visual()  
                }
            } else if (motion = "r") {
                set_operator("r")
            } else if (motion = "s") {
                Send {RButton}
                Send v
            } else if (motion = "u") {
                move_pageup()
            } else if (motion = "v") {
                switch_visual()
            } else if (motion = "w") {
                move_forward_word()
            } else if (motion = "x") {
                delete_right_char()
            } else if (motion = "+x") {
                delete_left_char()
            } else if (motion = "y") {
                if is_visual() {
                    copy()
                    reset_visual()           
                } else {
                    set_operator("y")
                }
            } else if (motion = "+y") {
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

op_delete(motion) {
    if (motion = "0") {
        delete_forward_line()
    } else if (motion = "$") {
        delete_backward_line()
    } else if (motion = "b") {
        delete_forward_word()
    } else if (motion = "d") {
        delete_current_line()    
    } else if (motion = "h") {
        delete_left_char()
    } else if (motion = "l") {
        delete_right_char()    
    } if (motion = "w") {
        delete_backward_word()
    }
    Return
}

op_copy(motion) {
    set_visual()
    if (motion = "w") {
        move_forward_word()
    } else if (motion = "b") {
        move_backward_word()
    } else if (motion = "0") {
        move_home()
    } else if (motion = "$") {
        move_end()
    } else if (motion = "y") {
        Send {Home}
        move_end()
    }
    copy()
    reset_visual()
    Return
}

op_find(motion) {
    clipsaved := clipboard
    Loop, 10 {
        Send {Right}
        Send +{Right}
        Send ^c
        Send {Left}
        clip = %clipboard%
        if (clip = motion) {
            break
        }
    }
    clipboard := clipsaved 
}

op_replace(motion) {
    delete_right_char()
    Send %motion%
}
