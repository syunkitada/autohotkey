; bash 用の関数
; vimやscreenなどのコマンドラッパー 
; 関数名はすべてbash_で始まります。

bash_vim_unite() {
	if is_terminal() or is_vim() {
		; use unite
		Send {Esc},u
		Return 1
	}
	Return 0
}

bash_vim_unit_history() {
	if is_vim() or is_terminal() {
		Send ^l
		Return 1
	}
	Return 0
}

bash_vim_operate_internal_window() {
	if is_vim() or is_terminal() {
		Send ^w
		Return 1
	}
	Return 0
}

bash_tmux_operate() {
	if is_terminal() or is_vscode() {
		Send ^b ; tmux
		Return 1
	}
	Return 0
}

bash_tmuxt_operate() {
	if is_terminal() or is_vscode() {
		Send ^t ; tmuxt
		Return 1
	}
	Return 0
}
