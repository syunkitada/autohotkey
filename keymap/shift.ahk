+ESC::
    if !set_browsing()
        send +{ESC}
    Return

+;::
	if bypass()
		Send +`;
	else
		Send '
	Return

+sc028:: ;コロン
    if bypass()
        Send +:
    else
        Send "
    Return

+a::
    if !operate("+a")
        Send +a
    Return

+b::
    if !operate("+b")
        Send +b     
    Return

+c::
    if !operate("+c")
        Send +c
    Return

+d::
    if !operate("+d")
        Send +d
    Return

+e::
    if !operate("+e")
        Send +e     
    Return

+f::
    if !operate("+f")
        Send +f     
    Return

+g::
    if !operate("+g")
        Send +g    
    Return

+h::
    if !operate("+h")
        Send +h
    Return

+i::
    if !operate("+i")
        Send +i
    Return

+j::
    if !operate("+j")
        Send +j
    Return

+k::
    if !operate("+k")
        Send +k
    Return

+l::
    if !operate("+l")
        Send +l
    Return

+m::
    if !operate("+m")
        Send +m
    Return

+n::
    if !operate("+n")
        Send +n
    Return

+o::
    if !operate("+o")
        Send +o
    Return

+p::
    if !operate("+p")
        Send +p
    Return

+q::
    if !operate("+q")
        Send +q
    Return

+r::
	if !operate("+r")
        Send +r     
    Return

+s::
    if !operate("+s")
        Send +s
    Return

+t::
    if !operate("+t")
        Send +t     
    Return

+u::
    if !operate("+u")
        Send +u
    Return

+v::
    if !operate("+v")
        Send +v
    Return

+w::
    if !operate("+w")
        Send +w
    Return

+x::
    if !operate("+x")
        Send +x
    Return

+y:: 
    if !operate("+y")
        Send +y
    Return

+z::
    if !operate("+z")
        Send +z     
    Return

