; コピー、ペースト関連の関数群です。

select_all() {
	if winactive_is_terminal() or winactive_is_gvim() winactive_is_vscode() {
		Send "{Esc}"
		Send "+g"
		Send "+v"
		Send "gg"
	} else {
		Send "^a"
	}
	Return 1
}

cut() {
    if winactive_is_ignored_app() {
        Return 0
    }
    
    A_Clipboard := "" ; Empty the clipboard for ClipWait
    
    if winactive_is_gvim() {
        Send "x"
    } else if winactive_is_terminal() {
        copy()
    } else {
        Send "^x"
    }

    ClipWait(2)

    Return 1
}

copy() {
    if winactive_is_ignored_app() {
        Return 0
    }

    A_Clipboard := "" ; Empty the clipboard for ClipWait

    if winactive_is_terminal() {
        Send "^{Ins}"
    } else if winactive_is_gvim() {
        Send "^{Ins}"
    } else {
        Send "^c"
    }

    ClipWait(2)

    Return 1
}

paste(id:=0) {
    if winactive_is_ignored_app() {
        Return 0
    }

    clipsaved := A_Clipboard

    if (id) {
        text := FileRead(A_ScriptDir . "\templates\" . id)
        A_Clipboard := text
    }

    if winactive_is_ubuntu_terminal() {
        Send "^+v"
    } else if winactive_is_terminal() {
        Send "+{Insert}"
    } else if winactive_is_gvim() {
        Send "{Esc}`"*P"
    } else {
        Send "^v"
    }

    A_Clipboard := clipsaved

    Return 1
}