/*
ウィンドウ制御系の関数群です。
関数名はすべてwindow_で始まります。
*/

window_next_tab() {
	if winactive_is_ignored_app() {
		Return 0
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
	} else if winactive_is_vscode() {
		Send "^{PgUp}"
	} else {
		Send "^+{Tab}"
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
