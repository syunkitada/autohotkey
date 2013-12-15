;; ------------------------------
;; alt keys
;; ------------------------------

!Esc::
	if bypass() or is_terminal()
		Send !Esc
	else
        set_visual()
    Return

!+Esc::
	if bypass() or is_terminal()
		Send !+Esc
	else {
		if is_visual() {
			if is_eclipse()
				Send !+a
			reset_visual()
		} else {
			if is_eclipse()
				Send !+a
			set_visual()
		}
	}
    Return

!/::
    if bypass() or is_terminal()
        Send !/
    else {
        focus_addressbar()
    }
    Return


!;::
    if bypass() or is_terminal()
        Send !`;
    else
        home()
    Return

!+;::
	if bypass()
		Send !+`;
	else
		Send +`;
	Return

!vkBAsc028:: ;コロン
    if bypass() or is_terminal()
        Send !:
    else
        end()
    Return

!+vkBAsc028:: ;コロン
    if bypass()
        Send !+:
    else
		Send *
    Return


^,::
    if bypass() or is_terminal()
        Send ^{,}
    else
        backward_history()
    Return

^.::
    if bypass() or is_terminal()
        Send ^.
    else
        forward_history()
    Return

!a::
	if bypass() or is_terminal()
		Send !a
	else if is_eclipse()
		Send ^{Space}
	else if is_vim()
		Send ^n
	else if is_terminal()
		Send ^n
	else
		Send !a
	Return

!b::
    if bypass() or is_terminal()
        Send !b
    else
        backward_word()
    Return

;    KeyHistory
;    WinGetClass, className, A
;    WinActivateBottom, ahk_class %className%
;    Return

!d::
    if bypass() or is_terminal()
        Send !d
    else
        delete()
    Return

!e::
    if bypass() or is_terminal()
        Send !e
     else
        delete_forward_word()
    Return

!+e::
    if bypass() or is_terminal()
        Send !+e
	else if is_terminal() {
		Send {Esc}
		Sleep 10
		Send d
    } else
        Send !+e
    Return

!f::
    if bypass() or is_terminal()
        Send !f
	else 
		Send !f
    Return

!+f::
	if bypass() or is_terminal()
		Send !+f
	else 
		Send !+f
	Return

!h::
    if bypass() or is_terminal()
        Send !h
    else
        left()                 
    Return

!i::
    if bypass() or is_terminal()
        Send !i
    else
		forward_word()
    Return

!+i::
    if bypass() or is_terminal()
        Send !+i
    else if is_terminal() {
		Send {Esc}	
		Sleep 10
		Send f
	} else
        Send !+i
    Return
	

!j::
    if bypass() or is_terminal()
        Send !j
    else if browsing
        move_focus("down")
    else
        down()
    Return

!+j::
    if bypass() or is_terminal()
        Send !+j
    if is_eclipse()
        Send ^+{Down}
    else
        Send !+j
    Return

!k::
    if bypass() or is_terminal()
        Send !k
    else if browing
        move_focus("up")
    else 
        up()
    Return

!+k::
    if bypass() or is_terminal()
        Send !+k
    if is_eclipse()
        Send ^+{Up}
    else
        Send !+k
    Return

!l::
    if bypass() or is_terminal()
        Send !l
    else if browsing
        move_focus("right")
    else
        right()
    Return

!o::
	if bypass() or is_terminal() {
        Send !o
	} else {
		Send {End}{Enter}
		reset_all()
    }
    Return

!+o::
	if bypass() or is_terminal()
		Send !+o
	else
		Send {Up}{End}{Enter}
	Return

!p::
	if bypass() or is_terminal()
		Send !p
	else {
		Send ^s
		Sleep, 50
		Send !{Tab}
		Sleep, 200
		Send {F5}
		Sleep, 200
		Send !{Tab}
	}
	Return

!q::
	if bypass() or is_terminal()
		Send !q
	else if is_eclipse()
		Send ^1
	else
		Send !q
	Return

!r::
    if bypass() or is_terminal()
        Send !r
    else if is_eclipse()
        Send !+r
    else
        Send {F2}
    Return

!s::
	if bypass() or is_terminal()
		Send !s
	else
		backspace()
	Return

!t::
	if bypass() or is_terminal()
		Send !t
	else
		copy_current_line()
	Return

!u::
	if bypass() or is_terminal()
		Send !u
	else {
		backward_word()
	}
	Return

!+u::
    if bypass() or is_terminal()
        Send !+u
    else if is_terminal() {
		Send {Esc}
		Sleep 10
		Send b	
	} else
        Send !+u
    Return

!w::
	if bypass() or is_terminal()
		Send !w
	else {
		delete_backward_word()
	}
	Return

!+w::
	if bypass() or is_terminal()
		Send !+w
	else if is_terminal() {
		; puttyで動作しない
		SendInput ^w
	} else 
		Send !+w
    Return

!z::Reload
