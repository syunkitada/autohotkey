h & SPACE::
	move_left(1)
	Return

h & k::
	move_left(2)
	Return

h & l::
	move_left(4)
	Return

j & SPACE::
	move_down(1)
	Return

j & l::
	move_down(4)
	Return

j & i::
	change_same_task()
    Return

j & k::
	move_down(2)
	Return

k & SPACE::
	move_up(1)
	Return

k & h::
	move_up(4)
	Return

k & j::
	move_up(2)
	Return

l & SPACE::
	move_right(1)
	Return

l & k::
	move_right(2)
	Return

l & j::
	move_right(4)
	Return

z & c::
	copy()
	Return

z & v::
	paste()
	Return

z & x::
	cut()
	Return

