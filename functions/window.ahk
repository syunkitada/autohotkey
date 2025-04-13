/*
ウィンドウ制御系の関数群です。
関数名はすべてwindow_で始まります。
*/

window_next_tab() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_terminal() or winactive_is_gvim() {
		Send "{Esc}:tabn{Enter}"
	} else if winactive_is_vscode() {
		Send "^{PgDn}"
	} else {
		Send "^{Tab}"
	}
	Return 1
}

window_previous_tab() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_gvim() {
		Send "{Esc}:tabp{Enter}"
	} else if winactive_is_terminal() {
		Send "{Esc}:tabp{Enter}"
	} else if winactive_is_vscode() {
		Send "^{PgUp}"
	} else {
		Send "^+{Tab}"
	}
	Return 1
}

window_new_tab() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_gvim() {
		Send "{Esc}"
		Send ":tabe{Enter}"
	} else {
		Send "^t"
	}
	Return 1
}

window_close_tab() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_gvim() or winactive_is_terminal() {
		Send "{Esc}:tabc{Enter}:tabp{Enter}"
	} else {
		Send "^w"
	}
	Return 1
}

window_switch_transparent(alpha:=200) {
	tp := WinGetTransparent("A")

	if tp
		WinSetTransparent "Off", "A"
	else
		WinSetTransparent alpha, "A"
	return
}

window_move(monitor_num, direction, width_size:=1) {
	if winactive_is_ignored_app() {
		Return 0
	}

	monitor_num := __get_target_monitor(monitor_num)
	MonitorGetWorkArea(monitor_num, &work_area_left, &work_area_top, &work_area_right, &work_area_bottom)

	; For DEBUG
    ; MonitorGet(monitor_num, &left, &top, &right, &bottom)
	; MsgBox
	; (
	;     "Name:`t" MonitorGetName(monitor_num) "
	;     Left:`t" left " (" work_area_left " work)
	;     Top:`t" top " (" work_area_top " work)
	;     Right:`t" right " (" work_area_right " work)
	;     Bottom:`t" bottom " (" work_area_bottom " work)"
	; )

	y := work_area_top
	height := Abs(work_area_top - work_area_bottom)
	width := Abs(work_area_left - work_area_right) * width_size / 2
	x := work_area_left
	if (direction == "right") {
		x := work_area_right - width
	}

	WinRestore "A"
	WinMove x, y, width, height, "A"

	Return 1
}

window_move_center() {
	if winactive_is_ignored_app() {
		Return 0
	}

	width := A_ScreenWidth - 100
	height := A_ScreenHeight - 100
	x := (A_ScreenWidth - width)//2
	y := (A_ScreenHeight - height)//2
	;MsgBox, %x%:%y%:%width%:%height%

	WinRestore "A"
	WinMove x, y, width, height, "A"

	Return 1
}

window_maximize(monitor_num) {
	if winactive_is_ignored_app()
		Return 0

	monitor_num := __get_target_monitor(monitor_num)
	MonitorGetWorkArea(monitor_num, &work_area_left, &work_area_top, &work_area_right, &work_area_bottom)

	y := work_area_top
	height := Abs(work_area_top - work_area_bottom)
	width := Abs(work_area_left - work_area_right)
	x := work_area_left

	WinRestore "A"
	WinMove x, y, width, height, "A"

	Return 1
}

window_minimize_all() {
	Send "#d"
}

window_minimize_expect_active_window() {
	Send "#{Home}"
}


/*
引数のmonitor_numからターゲットとするモニタ番号を割り出して返します。

monitor_numが、
	正数 : モニタ番号が存在すればそのまま返し、無ければ主モニタの番号を返します
	0    : 主モニタの番号を返します
	負数 : 主モニタの番号を飛ばしたサブモニタの番号を返し、飛ばした番号のモニターが無ければ主モニターの番号を返します
*/
__get_target_monitor(monitor_num:=0) {
	monitor_primary := MonitorGetPrimary()
	if (monitor_num == 0) {
		return monitor_primary
	}

	monitor_count := MonitorGetCount()
	if (monitor_num < 0) {
		monitor_num := Abs(monitor_num)

		if (monitor_num = monitor_primary) {
			monitor_num := monitor_num + 1
		}
	}

	if (monitor_num > monitor_count) {
		return monitor_primary
	}

	return monitor_num
}