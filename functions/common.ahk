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
    PixelGetColor, hexRGB, %x%, %y%, RGB    ;hexRGB = 0xFFFFFF
    StringTrimLeft, RGB, hexRGB, 2    ;RGB = FFFFFF
    StringLower, rgb, RGB    ;rgb = ffffff
    clipboard = %rgb%
    Return 1
}

rename() {
	if bypass() or is_terminal() {
		Return 0
    } else if is_eclipse() {
        Send !+r
    } else {
        Send {F2}
	}
	Return 1
}

quick_fix() {
	if bypass() or is_terminal() {
		Return 0
	} else if is_eclipse() {
		Send ^1
	} else {
		Return 0
	}
	Return 1
}

change_same_task() {
	WinGetClass, className, A
	WinActivateBottom, ahk_class %className%
}

reload_previous_task() {
	if bypass() or is_terminal() {
		Return 0
	} else {
		Send ^s
		Sleep, 50
		Send !{Tab}
		Sleep, 200
		Send {F5}
		Sleep, 200
		Send !{Tab}
	}
	Return 1
}

filer() {
	if bypass() {
		Return 0
	} else if is_terminal() or is_vim() {
		; use unite
		Send {Esc},u
	} else if is_eclipse() {
		; open resource
		Send ^+r
	} else {
		Return 0
	}
	Return 1
}

bookmark() {
	if bypass()
		Return 0
	else if is_browser()
		Send ^d
	else if is_explorer()
		Send ^d
	else
		Send ^b
	Return 1
}

select_all() {
	if bypass() {
		Return 0
	} else if is_vim() {
		Send {Esc}
		Send +g
		Send +v
		Send gg
	} else {
		Send ^a
	}
	Return 1
}

content_assist() {
	if bypass() {
		Return 0
	} else if is_eclipse() {
		Send ^{Space}
	} else if is_vim() {
		Send ^n
	} else if is_terminal() {
		Send ^n
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
	if bypass() or is_terminal() {
		Return 0
	}
    Send !{Left}
    reset_visual()
	Return 1
}

forward_history() {
	if bypass() or is_terminal() {
		Return 0
	}
    Send !{Right}
    reset_visual()
	Return 1
}

next_tab() {
	if bypass() {
		Return 0
    } else if is_vim() {
        Send {Esc}:tabn{Enter}
	} else if is_terminal() {
		Send {Esc}:tabn{Enter}
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
		Send :tabe{Space}
    } else {
        Send ^t
	}
	Return 1
}

close_tab() {
	if bypass() {
		Return 0
    } else if is_vim() {
		Send {Esc}
		Send :q{Enter}
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
        Send {F6}
    } else if is_explorer() {
        Send !d
    } else if is_eclipse() {
        Send !+b
    } else {
		Return 0
	}
	Return 1
}

