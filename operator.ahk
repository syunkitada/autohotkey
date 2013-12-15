
operate(motion) {
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
                operate(pre_operator_motion)
            } if (motion = "/") {
                Send ^f
            } else if (motion = "$") {
                end()
            } else if (motion = "0") {
                home()
            } else if (motion = "a") {
                Send {Right}
                reset_all()
            } else if (motion = "b") {
                backward_word()
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
            } else if (motion = "h") {
                left()
            } else if (motion = "i") {
                reset_all()
            } else if (motion = "j") {
                down()
            } else if (motion = "k") {
                up()
            } else if (motion = "l") {
                right()
            } else if (motion = "m") {
                pageup()
            } else if (motion = "n") {
                pagedown()
            } else if (motion = "o") {
                Send {End}{Enter}
                reset_all()
            } else if (motion = "p") {
                paste(null, null, null, null)
                reset_visual()  
            } else if (motion = "+p") {
                if is_terminal() {
                    Send ^y
                } else {
                    Send {Up}
                    paste(null, null, null, null)
                    reset_visual()  
                }
            } else if (motion = "r") {
                set_operator("r")
            } else if (motion = "s") {
                Send {RButton}
                Send v
            } else if (motion = "u") {
                pageup()
            } else if (motion = "v") {
                switch_visual()
            } else if (motion = "w") {
                forward_word()
            } else if (motion = "x") {
                delete()
            } else if (motion = "+x") {
                backspace()
            } else if (motion = "y") {
                if is_visual() {
                    copy(null)
                    reset_visual()           
                } else {
                    set_operator("y")
                }
            }
        }  
    }
    reset_operator_count()
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
        backspace()
    } else if (motion = "l") {
        delete()    
    } if (motion = "w") {
        delete_backward_word()
    }
    Return
}

op_copy(motion) {
    set_visual()
    if (motion = "w") {
        forward_word()
    } else if (motion = "b") {
        backward_word()
    } else if (motion = "0") {
        home()
    } else if (motion = "$") {
        end()
    } else if (motion = "y") {
        Send {Home}
        end()
    }
    copy(null)
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
    delete()
    Send %motion%
}
