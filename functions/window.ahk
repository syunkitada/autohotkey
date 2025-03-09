/*
ウィンドウ制御系の関数群です。
関数名はすべてwindow_で始まります。
*/

window_move(monitor_num, direction) {
	if is_bypass()
		Return 0

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
	width := Abs(work_area_left - work_area_right) / 2
	x := work_area_left
	if (direction == "right") {
		x := work_area_right - width
	}
	WinMove x, y, width, height, "A"

	Return 1
}

window_move_center() {
	if is_bypass()
		Return 0

	width := A_ScreenWidth - 200
	height := A_ScreenHeight - 200
	x := (A_ScreenWidth - width)//2
	y := (A_ScreenHeight - height)//2
	;MsgBox, %x%:%y%:%width%:%height%

	WinMove x, y, width, height, "A"

	Return 1
}

window_maximize(monitor_num) {
	if is_bypass()
		Return 0

	monitor_num := __get_target_monitor(monitor_num)
	MonitorGetWorkArea(monitor_num, &work_area_left, &work_area_top, &work_area_right, &work_area_bottom)

	y := work_area_top
	height := Abs(work_area_top - work_area_bottom)
	width := Abs(work_area_left - work_area_right)
	x := work_area_left

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