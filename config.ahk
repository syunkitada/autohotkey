;; ------------------------------
;; setting exception application window
;; ------------------------------
bypass() {
    ifWinActive,ahk_class Emacs
        Return 1
    ifWinActive,ahk_class XEmacs
        Return 1
    Return 0
}

;; ------------------------------
;; setting determinig active window
;; ------------------------------
is_vim() {
	; ターミナル上のVIMを判定するため、titleからVIMかどうかを判定します。
	; .vimrcに以下を追記し、タイトルを変更できるようにします。
	; let &t_ti .= "\e[22;0t"
	; let &t_te .= "\e[23;0t"
	; set title
	WinGetTitle, title, A
	StringGetPos, pos, title, VIM
	if pos != -1
		Return 1
;    ifWinActive,ahk_class Vim
;        Return 1
    Return 0
}

is_eclipse() {
    ifWinActive,ahk_class SWT_Window0
        Return 1
    Return 0
}

is_xmind() {
	ifWinActive,XMind
		Return 1
	Return 0
}

is_terminal() {
	ifWinActive,ahk_class PuTTY
		Return 1
	ifWinActive,ahk_class VTWin32
		Return 1
	ifWinActive,ahk_class mintty
		Return 1
	Return 0
}

is_teraterm() {
	ifWinActive,ahk_class VTWin32
		Return 1
	Return 0
}

is_mintty() {
	ifWinActive,ahk_class mintty
		Return 1
	Return 0
}

is_browser() {
    ifWinActive,ahk_class Chrome_WidgetWin_1
        Return 1
    ifWinActive,ahk_class MozillaWindowClass
        Return 1
    ifWinActive,ahk_class IEFrame
        Return 1
    ifWinActive,ahk_class OperaWindowClass
        Return 1
    Return 0
}

is_explorer() {
    ifWinActive,ahk_class CabinetWClass
        Return 1
    ifWinActive,ahk_class Clover_WidgetWin_0
        Return 1
    Return 0
}

is_sendplay() {
	; onenoteは、up downがsendplayじゃないと動作しない
	ifWinActive,ahk_class Sticky_Notes_Note_Window
		Return 1
	ifWinActive,ahk_class Framework::CFrame
		Return 1
	Return 0
}

is_sendinput() {
	Return 0
}

;; ------------------------------
;; valiable and setter
;; ------------------------------
colon = 0
command =
visual = 0
browsing = 0
operator = 
operator_count = 1
mouse = 0
pre_operator = 
pre_operator_count = 
pre_operator_command = 

reset_all() {
    reset_browsing()
	reset_visual()
    reset_colon()
	reset_mouse()
    reset_operator()
    Return
}

set_operator_count(count, is_check_browsing=1) {
	if bypass() {
		Return 0
	} else if append_colon(count) {
		Return 1
	} else if operate_mouse(count) {
		Return 1
	} if is_check_browsing and !is_browsing() {
		Return 0
	}
    global operator_count
    operator_count := count
    Return 1
}

is_operator_count() {
    global operator_count
    if operator_count
        Return 1
    Return 0
}

reset_operator_count() {
    global operator_count
    global operatot_motion
    if (operator_motion != ".") {
        operator_count = 1
    }
}

set_operator(ope) {
    global operator
    operator := ope
    Return
}

is_operator() {
    global operator
    if operator
        Return 1
    Return 0
}

reset_operator() {
    global operator
    global operator_motion
    if (operator_motion != ".") {
        operator = 
    }
}

set_colon() {
	if bypass() {
		Return 0
	}
	reset_all()
    global colon = 1
	append_colon("")
    Return 1
}

append_colon(str) {
	if bypass() {
		Return 0
	}
	if !is_colon() {
		Return 0
	}
    global command
    command = %command%%str%
    ToolTip, :%command%, 34, 0, 4
    Return 1
}

bs_colon() {
    global command
    StringTrimRight, command, command, 1
    global colon = 1
    ToolTip, :%command%, 34, 0, 4
    Return
}

reset_colon() {
    global colon = 0
    global command =
    ToolTip, , , , 4
    Return
}

is_colon() {
    global colon
    Return colon
}

set_visual() {
	if bypass() or is_terminal() {
		Return 0
	}
	set_browsing()
    global visual = 1
    ToolTip, visual, 53, 0, 2
    Return 1
}

is_visual() {
    global visual
    Return visual
}

reset_visual() {
    global visual = 0
    ToolTip, , , , 2
    Return
}

switch_visual() {
    if is_visual()
        reset_visual()
    else 
        set_visual()
    Return
}

set_browsing() {
	if bypass() {
		Return 0
	}
	IME_SET(0)
    global browsing = 1
    ToolTip, browsing, 100, 0, 5
    Return 1
}

reset_browsing() {
    global browsing = 0
    ToolTip, , , , 5
    Return
}

is_browsing() {
    global browsing
    return browsing
}

switch_browsing() {
    if is_browsing()
        reset_browsing()
    else
        set_browsing()
    Return
}

set_mouse() {
	if bypass() {
		Return 0
	}
	IME_SET(0)
    global mouse = 1
    ToolTip, mouse, 100, 0, 5
    Return 1
}

reset_mouse() {
    global mouse = 0
    ToolTip, , , , 5
    Return
}

is_mouse() {
    global mouse
    return mouse
}

escape() {
    if bypass() {
		Send {Esc}
		Return 0
    }
	IME_SET(0)
	Send {Esc} 
	Return 1
}

