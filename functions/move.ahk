; 移動関連の関数群です。
; 関数名はすべてmove_で始まります。

move_left(count=1) {
    if bypass() {
        Return 0
    }

    Loop, %count% {
        if is_visual() {
            Send +{Left}
        } else {
            Send {Left}
        }
    }
    Return 1
}

move_right(count=1) {
    if bypass() {
        Return 0
    }

    Loop, %count% {
        if is_visual() {
            Send +{Right}
        } else {
            Send {Right}
        }
    }
    Return 1
}

move_up(count=1) {
    if bypass() {
        Return 0
    }

    Loop, %count% {
        if is_visual() {
            if is_sendinput() {
                SendInput +{Up}
            } else if is_sendplay() {
                SendPlay +{Up}
            } else {
                Send +{Up}
            }
        } else {
            if is_sendinput() {
                SendInput {Up}
            } else if is_sendplay() {
                SendPlay {Up}
            } else {
                Send {Up}
            }
        }
    }
    Return 1
}

move_down(count=1) {
    if bypass() {
        Return 0
    }

    Loop, %count% {
        if is_visual() {
            if is_sendinput() {
                SendInput +{Down}
            } else if is_sendplay() {
                SendPlay +{Down}
            } else {
                Send +{Down}
            }
        } else {
            if is_sendinput() {
                SendInput {Down}
            } else if is_sendplay {
                SendPlay {Down}
            } else {
                Send {Down}
            }
        }
    }
    Return 1
}

move_home() {
    if bypass() {
        Return 0
    } else if is_visual() {
        Send +{Home}
    } else if is_terminal() {
        Send ^a
    } else {
        Send {Home}
    }
    Return 1
}

move_end() {
    if bypass() {
        Return 0
    } else if is_visual() {
        Send +{End}
    } else if is_terminal() {
        Send ^e
    } else {
        Send {End}
    }
    Return 1
}

move_half_pageup() {
    if bypass() {
        Return 0
    } else if is_eclipse() or is_vim() or is_terminal() {
        Send ^u
    } else {
        move_pageup()
    }
    Return 1
}

move_pageup() {
    if bypass() {
        Return 0
    } else if is_vim() or is_terminal() {
        Send ^b
    } else if is_visual() {
        Send +{PgUp}
    } else {
        Send {PgUp}
    }
    Return 1
}

move_pagedown() {
    if bypass() {
        Return 0
    } else if is_vim() or is_terminal() {
        Send ^f
    } else if is_visual() {
        Send +{PgDn}
    } else {
        Send {PgDn}
    }
    Return 1
}

move_half_pagedown() {
    if bypass() {
        Return 0
    } else if is_eclipse() or is_vim() or is_terminal() {
        Send ^d
    } else {
        move_pagedown()
    }
    Return 1
}

move_top() {
    if bypass() {
        Return 0
    } else if is_eclipse() or is_vim() {
        Send {Esc}gg
    } else {
        Send {Home}
    }
    Return 1
}

move_bottom() {
    if bypass() {
        Return 0
    } else if is_eclipse() or is_vim() {
        Send {Esc}+g
    } else {
        Send {End}
    }
    Return 1
}

move_backward_word() {
    if bypass() {
        Return 0
    } else if is_visual() {
        Send +^{Left}
    } else if is_vim() {
        escape()
            Send bi
    } else if is_terminal() {
        Send {Esc}
        Send b
    } else {
        Send ^{Left}
    }
    Return 1
}

move_forward_word() {
    if bypass() {
        Return 0
    } else if is_visual() {
        Send +^{Right}
    } else if is_vim() {
        escape()
            Send lwi
    } else if is_terminal() {
        Send {Esc}
        Send f
    } else {
        Send ^{Right}
    }
    Return 1
}

move_newline(num=1) {
    if bypass() {
        Return 0
    } else if is_terminal() or is_vim() {
        if (num = "1") {
            Send {Esc}o
        } else {
            Send {Esc}+o
        }
    } else {
        if (num = "1") {
            Send {End}{Enter}
        } else {
            Send {Home}{Enter}{Up}
        }
        reset_all()
    }
    Return 1
}
