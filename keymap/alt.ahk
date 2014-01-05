;; ------------------------------
;; alt keys
;; ------------------------------

!Esc::
	set_mouse()
    Return

!/::
    if !search()
        Send !/
    Return

!sc073::
	if !focus_addressbar()
		Send !{sc073}
	Return

!;::
    if !move_home()
        Send !`;
    Return

!+;::
	if bypass() {
		Send !+`;
	} else {
		Send +`;
	}
	Return

!sc028:: ;コロン
    if !move_end()
        Send !:
    Return

!+sc028:: ;コロン
    if bypass() {
        Send !+:
    } else {
		Send *
	}
    Return

^,::
    if !backward_history()
        Send ^{,}
    Return

^.::
    if !forward_history()
        Send ^.
    Return

!a::
	if !content_assist()
		Send !a
	Return

!b::
    if !move_backward_word()
        Send !b
    Return

;    KeyHistory
;    WinGetClass, className, A
;    WinActivateBottom, ahk_class %className%
;    Return

!d::
    if !delete_right_char()
        Send !d
    Return

!e::
    if !delete_forward_word()
        Send !e
    Return

!g::
	if !filer()
		Send !g
	Return

!h::
    if !move_left()                 
        Send !h
    Return

!i::
    if !move_forward_word()
        Send !i
    Return

!j::
    if !move_down()
        Send !j
    Return

!k::
    if !move_up()
        Send !k
    Return

!l::
    if !move_right()
        Send !l
    Return

!o::
	if !move_newline()
        Send !o
    Return

!p::
	if !reload_previous_task()
		Send !p
	Return

!q::
	if !quick_fix()
		Send !q
	Return

!r::
    if !rename()
        Send !r
    Return

!s::
	if !delete_left_char()
		Send !s
	Return

!u::
	if !move_backward_word()
		Send !u
	Return

!w::
	if !delete_backward_word()
		Send !w
	Return

!z::Reload
