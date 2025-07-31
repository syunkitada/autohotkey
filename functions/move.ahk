; 移動関連の関数群です。
; 関数名はすべてmove_で始まります。

move_left(count:=1) {
    if winactive_is_ignored_app() {
        Return 0
    }

    Loop count {
        Send "{Left}"
    }
    Return 1
}

move_right(count:=1) {
    if winactive_is_ignored_app() {
        Return 0
    }

    Loop count {
        Send "{Right}"
    }
    Return 1
}

move_up(count:=1) {
    if winactive_is_ignored_app() {
        Return 0
    }

    Loop count {
        Send "{Up}"
    }
    Return 1
}

move_down(count:=1) {
    if winactive_is_ignored_app() {
        Return 0
    }

    Loop count {
        Send "{Down}"
    }
    Return 1
}

move_home() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_terminal() {
        Send "^a"
    } else {
        Send "{Home}"
    }
    Return 1
}

move_end() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_terminal() {
        Send "^e"
    } else {
        Send "{End}"
    }
    Return 1
}

move_half_pageup() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() or winactive_is_terminal() or winactive_is_vscode() {
        Send "^u"
    } else {
        move_pageup()
    }
    Return 1
}

move_pageup() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() or winactive_is_terminal() or winactive_is_vscode() {
        Send "^b"
    } else {
        Send "{PgUp}"
    }
    Return 1
}

move_pagedown() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() or winactive_is_terminal() or winactive_is_vscode() {
        Send "^f"
    } else {
        Send "{PgDn}"
    }
    Return 1
}

move_half_pagedown() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() or winactive_is_terminal() or winactive_is_vscode() {
        Send "^d"
    } else {
        move_pagedown()
    }
    Return 1
}

move_top() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() {
        Send "{Esc}gg"
    } else {
        Send "{Home}"
    }
    Return 1
}

move_bottom() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() {
        Send "{Esc}+g"
    } else {
        Send "{End}"
    }
    Return 1
}

; FIXME
move_backward_word() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() {
        escape()
        Send "bi"
    } else if winactive_is_terminal() {
        Send "{Esc}"
        Send "b"
    } else {
        Send "^{Left}"
    }
    Return 1
}

; FIXME
move_forward_word() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_gvim() {
        escape()
        Send "lwi"
    } else if winactive_is_terminal() {
        Send "{Esc}"
        Send "f"
    } else {
        Send "^{Right}"
    }
    Return 1
}

move_newline(num:=1) {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_terminal() or winactive_is_gvim() {
        if (num = "1") {
            Send "{Esc}o"
        } else {
            Send "{Esc}+o"
        }
    } else {
        if (num = "1") {
            Send "{End}{Enter}"
        } else {
            Send "{Home}{Enter}{Up}"
        }
    }
    Return 1
}

move_backward_history() {
	if winactive_is_ignored_app() {
		Return 0
	} if winactive_is_vscode() {
		Send "!{Left}"
	} else if winactive_is_terminal() or winactive_is_gvim() {
		Send "^t"
	} else {
		Send "!{Left}"
	}
	Return 1
}

move_forward_history() {
	if winactive_is_vscode() {
		Send "!{Right}"
	} else if winactive_is_terminal() or winactive_is_gvim() {
		Send "g^]"
	} else {
		Send "!{Right}"
	}
	Return 1
}