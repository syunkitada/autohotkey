;; ------------------------------
;; ctrl - key mapping
;; ------------------------------
^Esc::
    if bypass()
        Send ^{Esc}
    else
        set_visual()
    Return

^vkBAsc028:: ;colon
    if bypass()
        Send ^vkBAsc028
    else
		set_colon()
    Return


^a::
    if bypass()
        Send ^a
    else {
        if is_vim() {
            Send {Esc}
            Send +g
            Send +v
            Send gg
        } else {
            Send ^a
        }
    }
    Return

^b::
    if bypass()
        Send ^b
    else {
        if is_browser()
            Send ^d
        else if is_explorer()
            Send ^d
        else
            Send ^b
    }
    Return

^d::
    if bypass()
        Send ^d
    else if is_eclipse() or is_vim() or is_terminal()
		Send ^d
	else
        pagedown()
    Return

^h::
    if bypass()
        Send ^h
    else 
        previous_tab()
    Return

LCtrl & j::AltTab
RCtrl & j::AltTab

LCtrl & k::ShiftAltTab
RCtrl & k::ShiftAltTab

^l::
    if bypass()
        Send ^l
    else 
        next_tab()
    Return

^m::
	if bypass()
		Send ^m
	else if is_eclipse()
		Send ^{F7}
	else
		Send ^m
	Return

^+m::
	if bypass()
		Send ^+m
	else if is_eclipse()
		Send ^+{F7}
	else
		Send ^+m
	Return

^n:: 
    if bypass()
        Send ^n
    else if is_eclipse()
        Send !/
    else
        Send ^n
    Return

^r::
    if bypass()
        Send ^r
    else if is_xmind()
		Send ^l
	else
        Send ^r                 
    Return

^s::
    if bypass()
        Send ^s
    else if is_vim() {
        Send {Esc}
        Send :w
        Send {Enter}
    } else
        Send ^s                 
    Return

^t::
    if bypass()
        Send ^t
    else if is_vim() {
		Send {Esc}
		Send :tabe{Space}
    } else
        Send ^t
    Return

^u::
    if bypass()
        Send ^u
	else if is_eclipse() or is_vim() or is_terminal()
		Send ^u
    else
        pageup()
    Return

^v::
    if bypass()
        Send ^v
    else if is_terminal()
        Send ^v
    else
		paste(0, 0, 0, 0)
    Return


