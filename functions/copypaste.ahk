; コピー、ペースト関連の関数群です。

cut() {
    if is_bypass() {
        Return 0
    } else if is_gvim() {
        Send "x"
    } else if is_terminal() {
        copy()
    } else {
        Send "^x"
    }
    Return 1
}

copy() {
    if is_bypass() {
        Return 0
    }

    if is_terminal() {
        Send "^{Ins}"
    } else if is_gvim() {
        Send "^{Ins}"
    } else {
        Send "^c"
    }

    Return 1
}

paste(id:=0) {
    if is_bypass() {
        Return 0
    }

    clipsaved := A_Clipboard

    if (id) {
        text := FileRead(A_ScriptDir . "\templates\" . id)
        A_Clipboard := text
    }

    if is_ubuntu_terminal() {
        Send "^+v"
    } else if is_terminal() {
        Send "+{Insert}"
    } else if is_gvim() {
        Send "{Esc}`"*P"
    } else {
        Send "^v"
    }

    A_Clipboard := clipsaved

    Return 1
}