; 削除などの編集関数郡です。
; 削除関連の関数群は、delete_で始まります。

delete_right_char(count=1) {
	if bypass() {
		Return 0
	}
    if is_colon() {
		bs_colon()
        Return 1
    }

    Loop, %count% {
        if is_vim() {
            Send {Del}
        } else if is_terminal() {
            Send ^d
        } else {
            Send {Del}
        }
    }
	Return 1
}

delete_left_char(count=1) {
	if bypass() {
		Return 0
	}
    if is_colon() {
		bs_colon()
        Return 1
    }

    Loop, %count% {
        if is_vim() {
            Send {BS}
        } else if is_terminal() {
            Send ^h
        } else {
            Send {BS}
        }
	}
	Return 1
}

delete_backward_word() {
	if bypass() {
		Return 0
	} else if is_eclipse() {
		Send ^{Backspace}
	} else if is_vim() {
		Send {Esc}dbcl
	} else if is_terminal() {
		Send ^w
	} else {
		Send +^{Left}
		Send {Del}
	}
	Return 1
}

delete_forward_word() {
	if bypass() {
		Return 0
	} else if is_eclipse() {
		Send ^{Del}
	} else if is_vim() {
		Send {Esc}
		Send lcw
	} else if is_terminal() {
		Send {Esc}
		Send d
	} else {
		Send +^{Right}
		Send {Del}
	}
	Return 1
}
