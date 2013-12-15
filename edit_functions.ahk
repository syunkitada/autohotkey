; 削除、置換などの編集関数郡です。

delete() {
    if is_colon() {
        bs_colon()
    } else if is_terminal() {
        Send ^d
    } else {
        Send {Del}
    }
	Return
}

backspace() {
    if is_colon() {
        bs_colon()
    } else if is_terminal() {
        Send ^h
    } else {
        Send {Backspace}
        reset_visual()
	}
	Return 
}

delete_backward_word() {
	if is_eclipse() {
		Send ^{Backspace}
	} else if is_vim() {
		Send {Esc}ldbi
	} else if is_terminal() {
        Send {Esc}
        Send d
	} else {
		Send +^{Left}
		Send {Del}
	}
    Return
}

delete_forward_word() {
	if is_eclipse() {
		Send ^{Del}
	} else if is_vim() {
		Send {Esc}ldwi
	} else if is_terminal() {
        Send ^w
	} else {
		Send +^{Right}
		Send {Del}
	}
    Return
}

delete_forward_line() {
    if is_terminal() {
        Send ^u
    } else {
        Send +{End}
        Send {Del}
    }
	Return
}

delete_backward_line() {
    if is_terminal() {
        Send ^k
    } else {
        Send +{Home}
        Send {Del}
    }
	Return
}

delete_current_line() {
	if is_vim() {
		Send {Esc}dd
	} else if is_terminal() {
		Send {Home}
		Send ^k
	} else {
		Send {Home}
		Send +{End}
		Send {DeL}
	}
	Return
}
