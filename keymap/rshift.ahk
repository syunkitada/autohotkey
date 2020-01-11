>+Space::
	IME_SET(0)
	Return

>+RCtrl::
	IME_SET(0)
	Send {vkF3sc029}
	Return

; row 1
>+q::
	if !operate("+q")
		Return
	Return

>+w::
	if !operate("+w")
		Return
	Return

>+e::
	; Open exproler
	if !operate("+e")
		Send ^+e 
	Return

>+r::
	; Open editor
	if !operate("+r")
		Send ^+f
	Return

>+t::
	; Open terminal
	if !operate("+t")
		Send ^@
	Return

>+y::
	if !operate("+y")
		Return
	Return

>+u::
	if !operate("+u")
		Return
	Return


>+i::
	if !operate("+i")
		Return
	Return

>+o::
	; Open outline
	if !operate("+o")
		Send ^+{f8}
	Return

>+p::
	if !operate("+p")
		Return
	Return


; row 2
>+a::
	if !operate("+a")
		Return
	Return

>+s::
	if !operate("+s")
		Send ^p
	Return

>+d::
	if !operate("+d")
		Return
	Return

>+f::
	; Focus panel(Toggle maximized panel)
	if !operate("+f")
		Send ^+{f10}
	Return

>+g::
	; Go editor(focus editor group0)
	if !operate("+g")
		Send ^1
	Return

>+h::
	; Go editor(focus editor group1)
	if !operate("+h")
		Send ^2
	Return

>+j::
	; Go to definition
	if !operate("+j")
		Send {f12}
	Return

>+k::
	; tag jump(pevious)
	if !operate("+k")
		Return
	Return

>+l::
	if !operate("+l")
		Return
	Return

>+;::
	if !operate("+;")
		Return
	Return

>+sc028::
	if !operate("+:")
		Return
	Return

; row 3
>+z::
	if !operate("+z")
		Return
	Return

>+x::
	if !operate("+x")
		Return
	Return

>+c::
	if !operate("+c")
		Return
	Return

>+v::
	if !operate("+v")
		Return
	Return

>+b::
	if !operate("+b")
		Return
	Return

>+n::
	if !operate("+n")
		Return
	Return

>+m::
	if !operate("+m")
		Return
	Return
