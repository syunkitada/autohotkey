; 削除などの編集関数郡です。
; 削除関連の関数群は、delete_で始まります。

delete_right_char() {
	if bypass() {
		Return 0
	} else if is_colon() {
		bs_colon()
	} else if is_vim() {
		Send {Del}
	} else if is_terminal() {
		Send ^d
	} else {
		Send {Del}
	}
	Return 1
}

delete_left_char() {
	if bypass() {
		Return 0
	} else if is_colon() {
		bs_colon()
	} else if is_vim() {
		Send {BS}
	} else if is_terminal() {
		Send ^h
	} else {
		Send {BS}
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

delete_forward_line() {
	if bypass() {
		Return 0
	} else if is_vim() {
		Send {Esc}
		Send c$
	} else if is_terminal() {
		Send ^k
	} else {
		Send +{End}
		Send {Del}
	}
	Return 1
}

delete_backward_line() {
	if bypass() {
		Return 0
	} else if is_vim() {
		Send {Esc}
		Send c0
	} else if is_terminal() {
		Send ^u
	} else {
		Send +{Home}
		Send {Del}
	}
	Return 1
}

delete_current_line() {
	if bypass() {
		Return 0
	} else if is_vim() {
		Send {Esc}ddi
	} else if is_terminal() {
		Send {Home}
		Send ^k
	} else {
		Send {Home}
		Send +{End}
		Send {DeL}
	}
	Return 1
}
