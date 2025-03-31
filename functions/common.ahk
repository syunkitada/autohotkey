; 一般関数群です。
; 検索、履歴、タブ、フォーカスなど
; サポートしない場合は、0を返す

escape() {
    IME_SET(0)
    Send "{Esc}"

	mycommand_gui_hide()
	doc_gui_hide()
	
    Return 1
}

reload_web() {
	if is_terminal() {
		Send "!{Tab}"
		Sleep 200
		Send "{F5}"
	} else {
        Send "{F5}"
	}
	Return 1
}

select_all() {
	if is_terminal() or is_gvim() {
		Send "{Esc}"
		Send "+g"
		Send "+v"
		Send "gg"
	} else {
		Send "^a"
	}
	Return 1
}

content_assist(asc:=1) {
	if is_bypass() {
		Return 0
	} else if is_terminal() or is_gvim() {
		if asc
			Send "^n"
		else
			Send "^p"
	} else {
		Return 0
	}
	Return 1
}

search() {
	if is_bypass() {
		Return 0
	} else if is_terminal() or is_vscode() {
		Send "{Esc}/"
	} else {
		send "^f"
	}
	Return 1
}

backward_history() {
	if is_bypass() {
		Return 0
	} if is_vscode() {
		Send "!{Left}"
	} else if is_terminal() or is_gvim() {
		Send "^t"
	} else {
		Send "!{Left}"
	}
	Return 1
}

forward_history() {
	if is_vscode() {
		Send "!{Right}"
	} else if is_terminal() or is_gvim() {
		Send "g^]"
	} else {
		Send "!{Right}"
	}
	Return 1
}

next_tab() {
	if is_bypass() {
		Return 0
	} else if is_terminal() or is_gvim() {
		Send "{Esc}:tabn{Enter}"
	} else if is_vscode() {
		Send "^{PgDn}"
	} else {
		Send "^{Tab}"
	}
	Return 1
}

previous_tab() {
	if is_bypass() {
		Return 0
	} else if is_gvim() {
		Send "{Esc}:tabp{Enter}"
	} else if is_terminal() {
		Send "{Esc}:tabp{Enter}"
	} else if is_vscode() {
		Send "^{PgUp}"
	} else {
		Send "^+{Tab}"
	}
	Return 1
}

new_tab() {
	if is_bypass() {
		Return 0
	} else if is_gvim() {
		Send "{Esc}"
		Send ":tabe{Enter}"
	} else {
		Send "^t"
	}
	Return 1
}

close_tab() {
	if is_bypass() {
		Return 0
	} else if is_gvim() or is_terminal() {
		Send "{Esc}:tabc{Enter}:tabp{Enter}"
	} else {
		Send "^w"
	}
	Return 1
}

close_window() {
	if is_bypass() {
		Return 0
	} else {
		Send "!{F4}"
	}
	Return 1
}

focus_addressbar()  {
	if is_bypass() {
		Return 0
	} else if is_browser() {
		Send "!d"
	} else {
		Run "https://www.google.co.jp/"
		Send "!d"
		IME_SET(0)
	}
	Return 1
}

run_program() {
	if is_bypass() {
		Return 0
	} else if is_terminal() or is_gvim() {
		Send "{Esc},r"
	} else {
		Return 0
	}
	Return 1
}

undo() {
	if is_bypass() {
		Return 0
	} else if is_terminal() or is_gvim() {
		Send "{Esc}u"
	} else {
		Return 0
	}
	Return 1
}

resume() {
	if is_bypass() {
		Return 0
	} else if is_terminal() or is_gvim() {
		Send "{Esc}^r"
	} else {
		Return 0
	}
	Return 1
}

switch_transparent(alpha:=200) {
	tp := WinGetTransparent("A")

	if tp
		WinSetTransparent "Off", "A"
	else
		WinSetTransparent alpha, "A"
	return
}

focus_terminal() {
	if is_vscode() {
		Send "^@"
	}
	Return
}

focus_outline() {
	if is_vscode() {
		Send "^+{f8}"
	}
	Return
}

focus_panel_and_maximize_panel() {
	if is_vscode() {
		Send "^+{f10}"
	}
	Return
}

focus_editor1() {
	if is_vscode() {
		Send "^1"
	}
	Return
}

focus_editor2() {
	if is_vscode() {
		Send "^2"
	}
	Return
}

; FIXME
jump_to_definition() {
	if is_vscode() {
		Send "{f12}"
	}
	Return
}
