search() {
	if is_vim() {
		Send {Esc}/
    } else {
        send ^f
    }
}

copy_current_line() {
	Send {Home}
	Send +{End}
	Send ^c{Down}
	Return
}

backward_history() {
    Send !{Left}
    reset_visual()
	Return
}

forward_history() {
    Send !{Right}
    reset_visual()
	Return
}

next_tab() {
    if is_vim() {
        Send {Esc}:tabn{Enter}
	} else if is_terminal() {
		Send {Esc}:tabn{Enter}
    } else {
        Send ^{Tab}
    }
    Return
}

previous_tab() {
    if is_vim() {
        Send {Esc}:tabp{Enter}
	} else if is_terminal() {
		Send {Esc}:tabp{Enter}
    } else {
        Send ^+{Tab}
    }
    Return
}

focus_addressbar()  {
    if is_browser() {
        Send {F6}
    } else if is_explorer() {
        Send !d
    } else if is_eclipse() {
        Send !+b
    } else {
		Send ^/
	}
	Return
}

; フォーカスを上下左右に移動させる
move_focus(direction) {
    SysGet, width, 0
    SysGet, height, 1
    CoordMode, Mouse
    if (direction = "left") {
        width := width/4
        height := height/2
    } else if (direction = "right") {
        width := (width/4)*3
        height := height/2
    } else if (direction = "up") {
        width := width/2
        height := height/4
    } else if (direction = "down") {
        width := width/2
        height := (height/4)*3
    } else if (direction = "up_left") {
        width := width/4
        height := height/4
    } else if (direction = "up_right") {
        width := (width/4)*3
        height := height/4
    } else if (direction = "down_left") {
        width := width/4
        height := (height/4)*3
    } else if (direction = "down_right") {
        width := (width/4)*3
        height := (height/4)*3
    }

    MouseMove, width, height, 0 
    Send {LButton}
    Return
}

; Window Move
win_move_step(xd, yd) {
	WinGet, win_id, ID, A
	WinGetPos, x, y,,,ahk_id %win_id%
	Step := 24
	x := x + (xd * Step)
	y := y + (yd * Step)
	WinMove, ahk_id %win_id%, , %x%, %y%
	return
}

get_selected_row() {
    ; 選択範囲をクリップボードに移して、改行の数を数える
    temp = %clipboard%
    Send ^c
    clip = %clipboard%
    count = 0
    before_strpos = 0
    strpos = 1
    Loop {
        strpos := InStr(clip, "`n", false, strpos)

        if (strpos == 0) {
            ;count++
            break
        } else if (before_strpos == strpos) {
            ; 最後に見つかった改行が文字列の終端でない場合、もう一行あることになる
            if (strpos != StrLen(clip)) {
                count++
            }
            break
        } else {
            before_strpos = %strpos%
            strpos++
            count++
        }
    }
    clipboard = %temp%
    Return count
}

