; テキスト編集時に利用する関数群を管理します。
; 削除関連の関数群は、delete_で始まります。

escape() {
    IME_SET(0)
    Send "{Esc}"

	myprompt_gui_hide()
	mycommand_gui_hide()
	mydoc_gui_hide()
	
    Return 1
}

content_assist(asc:=1) {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_terminal() or winactive_is_gvim() {
		if asc
			Send "^n"
		else
			Send "^p"
	} else {
		Return 0
	}
	Return 1
}

delete_right_char(count:=1) {
	if winactive_is_ignored_app() {
		Return 0
	}

    Loop count {
        if winactive_is_gvim() {
            Send "{Del}"
        } else if winactive_is_terminal() or winactive_is_vscode() {
            Send "^d"
        } else {
            Send "{Del}"
        }
    }
	Return 1
}

delete_left_char(count:=1) {
	if winactive_is_ignored_app() {
		Return 0
	}

    Loop count {
        if winactive_is_gvim() {
            Send "{BS}"
        } else if winactive_is_terminal() or winactive_is_vscode() {
            Send "^h"
        } else {
            Send "{BS}"
        }
	}
	Return 1
}

delete_backward_word() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_gvim() {
		Send "{Esc}dbcl"
	} else if winactive_is_terminal() or winactive_is_vscode() {
		Send "^w"
	} else {
		Send "^{Backspace}"
	}
	Return 1
}

delete_forward_word() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_gvim() or winactive_is_vscode() {
		Send "{Esc}"
		Send "lcw"
	} else if winactive_is_terminal() {
		Send "{Esc}"
		Send "d"
	} else {
		Send "+^{Right}"
		Send "{Del}"
	}
	Return 1
}
