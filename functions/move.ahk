; 移動関連の関数群です。
; 関数名はすべてmove_で始まります。

move_left(count:=1) {
    if is_bypass() {
        Return 0
    }

    Loop count {
        Send "{Left}"
    }
    Return 1
}

move_right(count:=1) {
    if is_bypass() {
        Return 0
    }

    Loop count {
        Send "{Right}"
    }
    Return 1
}

move_up(count:=1) {
    if is_bypass() {
        Return 0
    }

    Loop count {
        Send "{Up}"
    }
    Return 1
}

move_down(count:=1) {
    if is_bypass() {
        Return 0
    }

    Loop count {
        Send "{Down}"
    }
    Return 1
}

move_home() {
    if is_bypass() {
        Return 0
    } else if is_terminal() {
        Send "^a"
    } else {
        Send "{Home}"
    }
    Return 1
}

move_end() {
    if is_bypass() {
        Return 0
    } else if is_terminal() {
        Send "^e"
    } else {
        Send "{End}"
    }
    Return 1
}

move_half_pageup() {
    if is_bypass() {
        Return 0
    } else if is_gvim() or is_terminal() or is_vscode() {
        Send "^u"
    } else {
        move_pageup()
    }
    Return 1
}

move_pageup() {
    if is_bypass() {
        Return 0
    } else if is_gvim() or is_terminal() or is_vscode() {
        Send "^b"
    } else {
        Send "{PgUp}"
    }
    Return 1
}

move_pagedown() {
    if is_bypass() {
        Return 0
    } else if is_gvim() or is_terminal() or is_vscode() {
        Send "^f"
    } else {
        Send "{PgDn}"
    }
    Return 1
}

move_half_pagedown() {
    if is_bypass() {
        Return 0
    } else if is_gvim() or is_terminal() or is_vscode() {
        Send "^d"
    } else {
        move_pagedown()
    }
    Return 1
}

move_top() {
    if is_bypass() {
        Return 0
    } else if is_gvim() {
        Send "{Esc}gg"
    } else {
        Send "{Home}"
    }
    Return 1
}

move_bottom() {
    if is_bypass() {
        Return 0
    } else if is_gvim() {
        Send "{Esc}+g"
    } else {
        Send "{End}"
    }
    Return 1
}

move_backward_word() {
    if is_bypass() {
        Return 0
    } else if is_gvim() {
        escape()
            Send "bi"
    } else if is_terminal() {
        Send "{Esc}"
        Send "b"
    } else {
        Send "^{Left}"
    }
    Return 1
}

move_forward_word() {
    if is_bypass() {
        Return 0
    } else if is_gvim() {
        escape()
        Send "lwi"
    } else if is_terminal() {
        Send "{Esc}"
        Send "f"
    } else {
        Send "^{Right}"
    }
    Return 1
}

move_newline(num:=1) {
    if is_bypass() {
        Return 0
    } else if is_terminal() or is_gvim() {
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


find_text() {
    if is_vscode() {
        Send "^F"
    } else {
        Send "^f"
    }
}

find_file() {
    if is_browser() {
        Send "!d"
    } else if is_vscode() {
        Send "^E"
        Send "^p"
    }
}

find_tab() {
    if is_browser() {
        Send "^A"
    }
}

find_cache() {
    if is_browser() {
        Send "^h"
    }
}

find_bookmark() {
    if is_browser() {
        Send "^O"
    }
}