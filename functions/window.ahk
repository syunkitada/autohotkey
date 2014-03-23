/*
ウィンドウ制御系の関数群です。
関数名はすべてwindow_で始まります。

TODO アクティブウィンドウの細かい移動など
WinMoveStep(-1,0)
WinMoveStep(1,0)
WinMoveStep(0,-1)
WinMoveStep(0,1)

TODO WinMoveで移動すると描画がズレたりするので、なんとかしたい

#{Home} アクティブウィンドウ以外最小化
*/

window_move(num, direction) {
	if bypass()
		Return 0

	num := __get_target_monitor(num)
	SysGet, Monitor, MonitorWorkArea, %num%

	y := MonitorTop
	height := Abs(MonitorTop - MonitorBottom)
	width := Abs(MonitorLeft - MonitorRight) / 2
	if (direction == "left") {
		x := MonitorLeft
	} else if (direction == "right") {
		x := MonitorRight - width
	}

	WinMove, A,, x, y, width, height

	Return 1
}

window_move_center() {
	if bypass()
		Return 0

	WinGetPos,,,Width,Height,A
	width := A_ScreenWidth - 200
	height := A_ScreenHeight - 200
	x := (A_ScreenWidth - width)//2
	y := (A_ScreenHeight - height)//2
	;MsgBox, %x%:%y%:%width%:%height%

	WinMove, A,, x, y, width, height

	Return 1
}

window_maximize(num) {
	if bypass()
		Return 0

	num := __get_target_monitor(num)
	SysGet, Monitor, MonitorWorkArea, %num%

	y := MonitorTop
	height := Abs(MonitorTop - MonitorBottom)
	width := Abs(MonitorLeft - MonitorRight)
	x := MonitorLeft

	WinMove, A,, x, y, width, height
	Return 1
}

window_minimize() {
	if bypass()
		Return 0
	WinMinimize, A
	Return 1
}

window_restore() {
	if bypass()
		Return 0
	WinRestore, A
	Return 1
}

/*
引数のnumからターゲットとするモニタ番号を割り出して返します。

numが、
	正数 : numをそのまま返す
	0    : 主モニタの番号を返す
	負数 : 主モニタの番号を飛ばしたモニタ番号をnumの絶対値で返す
*/
__get_target_monitor(num=0) {
	if (num <= 0) {
		SysGet, MonitorPrimary, MonitorPrimary
		if (num == 0) {
			num := MonitorPrimary
		} else {
			SysGet, MonitorCount, MonitorCount
			num := Abs(num)

			if (num == MonitorPrimary) {
				num := num + 1
			} else if (num > MonitorCount) {
				num := MonitorPrimary
			}
		}
	}
	return num
}
