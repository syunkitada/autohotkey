left() {
    if is_visual() {
        Send +{Left}
    } else {
        Send {Left}
    }
    Return
}

right() {
    if is_visual() {
        Send +{Right}
    } else {
        Send {Right}
    }
    Return
}

up() {
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
    Return
}

down() {
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
    Return
}

home() {
    if is_visual() {
        Send +{Home}       
    } else {
        Send {Home}       
    }
	Return
}

end() {
    if is_visual() {
        Send +{End}       
    } else {
        Send {End}       
    }
	Return
}

pageup() {
    if is_visual() {
        Send +{PgUp}       
    } else {
        Send {PgUp}       
    }
	Return
}

pagedown() {
    if is_visual() {
        Send +{PgDn}       
    } else {
        Send {PgDn}       
    }
	Return
}

lefts(n) {
    Loop %n% {
        left()
    }
	Return
}

rights(n) {
    Loop %n% {
        right()
    }
	Return
}

downs(n) {
    Loop %n% {
        down()
    }
	Return
}

ups(n) {
    Loop %n% {
        up()
    }
	Return
}

backward_word() {
    if is_visual() {
        Send +^{Left}
	} else if is_terminal() {
        Send {Esc}
        Send b
    } else {
        Send ^{Left}         
    }
    Return
}

forward_word() {
    if is_visual() {
        Send +^{Right}
	} else if is_terminal() {
        Send {Esc}
        Send f
    } else {
        Send ^{Right}
    }
    Return
}
