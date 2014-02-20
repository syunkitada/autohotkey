;; ------------------------------
;; alt keys
;; ------------------------------

RCtrl::
	reset_all()
	escape()
	Return


>^/::
    if !comment_out()
        Send ^/
    Return

^,::
    if !backward_history()
        Send ^{,}
    Return

^.::
    if !forward_history()
        Send ^.
    Return

>^;::
    if !move_home()
        Send ^`;
    Return

>^+;::
	if bypass() {
		Send ^+`;
	} else {
		Send +`;
	}
	Return

>^sc028:: ;コロン
    if !move_end()
        Send ^:
    Return

>^+sc028:: ;コロン
    if bypass() {
        Send ^+:
    } else {
		Send *
	}
    Return

>^Space::
	if !content_assist()
		Send ^Space
	Return

>^+Space::
	if !content_assist(0)
		Send ^+Space
	Return

>^Tab::
	if !emmet()
		Send ^Tab
	Return

>^a::
	if !delete_backward_word()
		Send ^a
	Return

>^b::
    if !rename()
        Send ^r
    Return

>^c::
    if !select_all()
        Send ^a
    Return

>^d::
    if !delete_right_char()
        Send ^d
    Return

>^e::
	if !delete_forward_line()
		Send ^e
	Return

>^f::
    if !delete_forward_word()
        Send ^f
    Return

>^g::
    if !move_mode()
        Send ^f
    Return

>^h::
    if !move_left()                 
        Send ^h
    Return

>^i::
    if !move_forward_word()
        Send ^i
    Return

>^j::
    if !move_down()
        Send ^j
    Return

>^k::
    if !move_up()
        Send ^k
    Return

>^l::
    if !move_right()
        Send ^l
    Return
 
>^m::
	if !move_half_pageup()
		Send ^m
	Return

>^n::
	if !move_half_pagedown()
		Send ^n
	Return

>^o::
	if !move_newline()
        Send ^o
    Return

>^p::
	if !paste()
		Send ^p
	Return

>^q::
	if !quick_fix()
		Send ^q
	Return

>^r::
    if !delete_current_line()
        Send ^r
    Return

>^s::
	if !delete_left_char()
		Send ^s
	Return

>^t::
	if !cut()
		Send ^t
	Return

>^u::
	if !move_backward_word()
		Send ^u
	Return

>^w::
	if !delete_backward_line()
		Send ^w
	Return

>^y::
	if !copy()
		Send ^y
	Return


>^z::Reload
