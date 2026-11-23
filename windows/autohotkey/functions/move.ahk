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

move_backward_word() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_terminal() {
        Send "!b"
    } else {
        Send "^{Left}"
    }
    Return 1
}

move_forward_word() {
    if winactive_is_ignored_app() {
        Return 0
    } else if winactive_is_terminal() {
        Send "!f"
    } else {
        Send "^{Right}"
    }
    Return 1
}
