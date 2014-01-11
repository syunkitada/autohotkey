
;; ------------------------------
;; alt keys
;; ------------------------------

Esc & /::search()

Esc & sc073::
	if !focus_addressbar()
		Send !{sc073}
	Return

Esc & `;::
    if !move_home()
        Send !`;
    Return

Esc & +::
	if bypass() {
		Send !+`;
	} else {
		Send +`;
	}
	Return

Esc & sc028:: ;コロン
    if !move_end()
        Send !:
    Return

Esc & *:: ;コロン
    if bypass() {
        Send !+:
    } else {
		Send *
	}
    Return

Esc & a::
	if !content_assist()
		Send !a
	Return


Esc & d::
	if GetKeyState("Shift") {
		if !delete_current_line()
			Send !+d
    } else if !delete_right_char()
        Send !d
    Return

Esc & e::
	if GetKeyState("Shift") {
		if !delete_forward_line()
			Send !e
    } else if !delete_forward_word()
        Send !e
    Return

Esc & g::
	if !filer()
		Send !g
	Return

Esc & h::
    if !move_left()                 
        Send !h
    Return

Esc & i::
    if !move_forward_word()
        Send !i
    Return

Esc & j::
    if !move_down()
        Send !j
    Return

Esc & k::
    if !move_up()
        Send !k
    Return

Esc & l::
    if !move_right()
        Send !l
    Return

Esc & o::
	if !move_newline()
        Send !o
    Return

Esc & p::
	if !reload_previous_task()
		Send !p
	Return

Esc & q::
	if !quick_fix()
		Send !q
	Return

Esc & r::
    if !rename()
        Send !r
    Return

Esc & s::
	if !delete_left_char()
		Send !s
	Return

Esc & u::
	move_backward_word()
	Return

Esc & w::
	if GetKeyState("Shift") {
		if !delete_backward_line()
			Send !+w
	} else if !delete_backward_word()
		Send !w
	Return

Esc & z::Reload

RAlt::
	MsgBox alt
	Return

<^z::
	MsgBox test
	Return
