; 一般関数群です。
; 検索、履歴、タブ、フォーカスなど
; サポートしない場合は、0を返す

switch_taskbar_display() {
	if bypass() {
		Return 0
	}
	Send {LWin}
	Send {Esc}
	Send !{Enter}
	Sleep 400
	Send u
	Send {Enter}

	Return 1
}

get_color_on_mouseposition() {
	if bypass() {
		Return 0
	}
	MouseGetPos, x, y
	PixelGetColor, hexRGB, %x%, %y%, RGB	;hexRGB = 0xFFFFFF
	StringTrimLeft, RGB, hexRGB, 2	;RGB = FFFFFF
	StringLower, rgb, RGB	;rgb = ffffff
	clipboard = %rgb%
	Return 1
}

change_name() {
	if bypass() or is_terminal() {
		Return 0
	} else if is_eclipse() {
		Send !+r
	} else {
		Send {F2}
	}
	Return 1
}

change_same_task() {
	WinGetClass, className, A
	WinActivateBottom, ahk_class %className%
}

reload() {
	if bypass() {
		Return 0
	} if is_terminal() {
		Send !{Tab}
		Sleep, 200
		Send {F5}
	} else {
        Send {F5}
	}
	Return 1
}

select_all() {
	if bypass() {
		Return 0
	} else if is_terminal() or is_vim() {
		Send {Esc}
		Send +g
		Send +v
		Send gg
	} else {
		Send ^a
	}
	Return 1
}

content_assist(asc=1) {
	if bypass() {
		Return 0
	} else if is_eclipse() {
		if asc
			Send ^{Space}
		else
			Send ^+{Space}
	} else if is_terminal() or is_vim() {
		if asc
			Send ^n
		else
			Send ^p
	} else {
		Return 0
	}
	Return 1
}

search() {
	if bypass() or is_terminal() {
		Return 0
	} else if is_vim() {
		Send {Esc}/
	} else {
		send ^f
	}
	Return 1
}

backward_history() {
	if bypass() {
		Return 0
	} if is_vscode() {
		Send !{Left}
	} else if is_terminal() or is_vim() {
		Send ^t
	} else {
		Send !{Left}
	}
	Return 1
}

forward_history() {
	if bypass() {
		Return 0
	} if is_vscode() {
		Send !{Right}
	} else if is_terminal() or is_vim() {
		Send g^]
	} else {
		Send !{Right}
	}
	Return 1
}

next_tab() {
	if bypass() {
		Return 0
	} else if is_terminal() or is_vim() {
		Send {Esc}:tabn{Enter}
	} else if is_vscode() {
		Send ^{PgDn}
	} else {
		Send ^{Tab}
	}
	Return 1
}

previous_tab() {
	if bypass() {
		Return 0
	} else if is_vim() {
		Send {Esc}:tabp{Enter}
	} else if is_terminal() {
		Send {Esc}:tabp{Enter}
	} else if is_vscode() {
		Send ^{PgUp}
	} else {
		Send ^+{Tab}
	}
	Return 1
}

new_tab() {
	if bypass() {
		Return 0
	} else if is_vim() {
		Send {Esc}
		Send :tabe{Enter}
	} else if is_teraterm() {
		Send !n
	} else if is_mintty() {
		Send !{F2}
	} else {
		Send ^t
	}
	Return 1
}

close_tab() {
	if bypass() {
		Return 0
	} else if is_vim() or is_terminal() {
		Send {Esc}:tabc{Enter}:tabp{Enter}
	} else {
		Send ^w
	}
	Return 1
}

close_window() {
	if bypass() {
		Return 0
	} else {
		Send !{F4}
	}
	Return 1
}

focus_addressbar()  {
	if bypass() {
		Return 0
	} else if is_browser() {
		Send !d
	} else if is_explorer() {
		Send !d
	} else {
		Run "https://www.google.co.jp/"
		Send !d
		IME_SET(0)
	}
	Return 1
}

comment_out() {
	if is_eclipse() or is_terminal() or is_vim() {
		Send ^/
		Return 1
	}
	Return 0
}

emmet() {
	if is_eclipse() {
		Send !+e
		Return 1
	} else if is_terminal() or is_vim() {
		Send ^y,
		Return 1
	}
	Return 0
}

emmet_wrap() {
	if is_eclipse() {
		Send !+a
		Return 1
	} else if is_terminal() or is_vim() {
		Send ^y,
		Return 1
	}
	Return 0
}

run_program() {
	if bypass() {
		Return 0
	} else if is_terminal() or is_vim() {
		Send {Esc},r
	} else if is_eclipse() {
		Send ^s^{F11}
	} else {
		Return 0
	}
	Return 1
}

undo() {
	if bypass() {
		Return 0
	} else if is_terminal() or is_vim() {
		Send {Esc}u
	} else if is_eclipse() {
		Send ^z
	} else {
		Return 0
	}
	Return 1
}

resume() {
	if bypass() {
		Return 0
	} else if is_terminal() or is_vim() {
		Send {Esc}^r
	} else if is_eclipse() {
		Send ^y
	} else {
		Return 0
	}
	Return 1
}

switch_transparent(alpha=200) {
	WinGet, tp, Transparent, A
	if tp =
		Winset, Transparent, %alpha%, A
	else
		Winset, Transparent, OFF, A
	return
}

focus_terminal() {
	if is_vscode() {
		Send ^@
	}
	Return
}

focus_outline() {
	if is_vscode() {
		Send ^+{f8}
	}
	Return
}

focus_panel_and_maximize_panel() {
	if is_vscode() {
		Send ^+{f10}
	}
	Return
}

focus_editor1() {
	if is_vscode() {
		Send ^1
	}
	Return
}

focus_editor2() {
	if is_vscode() {
		Send ^2
	}
	Return
}

; FIXME
jump_to_definition() {
	if is_vscode() {
		Send {f12}
	}
	Return
}
