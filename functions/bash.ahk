; bash 用の関数
; vimやscreenなどのコマンドラッパー 
; 関数名はすべてbash_で始まります。

bash_vim_operate_internal_window() {
	if winactive_is_terminal() {
		Send "^z"
		Return 1
	} else if winactive_is_browser() {
		Send "^z"
		Return 1
	}
	Return 0
}

bash_tmux_operate_over_winder() {
	if winactive_is_terminal() or winactive_is_vscode() {
		Send "^b" ; tmux
		Return 1
	} else if winactive_is_browser() {
		Send "^b" ; tmux
		Return 1
	}
	Return 0
}

bash_tmux_operate_under_window() {
	if winactive_is_terminal() or winactive_is_vscode() {
		Send "^t" ; tmuxt
		Return 1
	}
	Return 0
}
