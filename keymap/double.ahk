;; ------------------------------
;; double - key mapping
;; 入力が早過ぎると同時押しとみなされてしまう
;; よくおすキーは最初に設定しないほうが良さそう
;; ------------------------------


d & h::
	delete_left_char()
	Return

d & j::
	delete_forward_line()
	Return

d & k::
	delete_backward_line()
	Return

d & l::
	delete_right_char()
	Return

d & u::
	delete_backward_word()
	Return

d & i::
	delete_forward_word()
	Return

d & o::
	delete_current_line()
	Return

h & f::
	move_left(1)
	Return

h & d::
	move_left(2)
	Return

h & s::
	move_left(4)
	Return

h & a::
	move_left(4)
	Return

h & w::
	move_backward_word()
	Return

h & e::
	move_home()
	Return

j & f::
	move_down(1)
	Return

j & d::
	move_down(2)
	Return

j & s::
	move_down(4)
    Return

j & a::
	move_half_pagedown()
	Return

j & w::
	move_pagedown()
	Return

j & e::
	move_bottom()
	Return

k & f::
	move_up(1)
	Return

k & d::
	move_up(2)
	Return

k & s::
	move_up(4)
	Return

k & a::
	move_half_pageup()
	Return

k & w::
	move_pageup()
	Return

k & e::
	move_top()
	Return

l & f::
	move_right(1)
	Return

l & d::
	move_right(2)
	Return

l & s::
	move_right(4)
	Return

l & a::
	move_right(6)
	Return

l & w::
	move_forward_word()
	Return

l & e::
	move_end()
	Return

z & h::
	previous_tab()
	Return

z & j::AltTab

z & k::ShiftAltTab

z & l::
	next_tab()
	Return

z & i::
	change_same_task()
	Return

z & n::
	Send !n
	Return

z & d::
	Send !d

z & c::
	copy()
	Return

z & v::
	paste()
	Return

z & x::
	cut()
	Return

