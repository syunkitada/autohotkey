+ESC::
    if bypass() {
        Send +{ESC}
    } else if browsing {
    } else {
		Send {vkF2sc070}
		Send {vkF3sc029}
		set_browsing()
    }
    Return

+;::
	if bypass() {
		Send +`;
	} else {
		Send '
    }
	Return

+vkBAsc028:: ;コロン
    if bypass() {
        Send +:
    } else {
        Send "
    }
    Return

+a::
    if bypass()
        Send +a
    else if browsing {
        Send {End}
        reset_all()
    } else
        Send +a
    Return

+b::
    if bypass()
        Send +b
    else if browsing {
    } else
        Send +b     
    Return

+c::
    if bypass()
        Send +c
	else if browsing {
        operate("C")
	} else
        Send +c
    Return

+d::
    if bypass()
        Send +d
    else if browsing {
        operate("+d")
    } else     
        Send +d
    Return

+e::
    if bypass()
        Send +e
    else if browsing {
    } else
        Send +e     
    Return

+f::
    if bypass()
        Send +f
    else if browsing {
    } else
        Send +f     
    Return

+g::
    if bypass()
        Send +g
    else if browsing
        Send ^{End}                  
    else
        Send +g    
    Return

+h::
    if bypass()
        Send +h
    else if browsing {
        lefts(4)
    } else
        Send +h
    Return

+i::
    if bypass()
        Send +i
    else if browsing {
        Send {Home}            
        reset_browsing()          
    } else
        Send +i
    Return

+j::
    if bypass()
        Send +j
    else if browsing {
		downs(4)
    } else
        Send +j
    Return

+k::
    if bypass()
        Send +k
    else if browsing {
		ups(4)
    } else
        Send +k
    Return

+l::
    if bypass()
        Send +l
    else if browsing {
        rights(4)
    } else
        Send +l
    Return

+m::
    if bypass()
        Send +m
    else if browsing {
    } else
        Send +m     
    Return

+n::
    if bypass()
        Send +n
    else if browsing {
    } else
        Send +n     
    Return

+o::
    if bypass()
        Send +o
    else if browsing {    
        Send {Home}{Enter}{Up} 
        reset_browsing()
    } else
        Send +o
    Return

+p::
    if bypass()
        Send +p
    else if browsing {
        operate("+p")
    } else
        Send +p
    Return

+q::
    if bypass()
        Send +q
    else if vi {
    } else
        Send +q     
    Return

+r::
    if bypass()
        Send +r
    else if vi {
    } else
        Send +r     
    Return

+s::
    if bypass()
        Send +s
    else if vi {
    } else
        Send +s
    Return

+t::
    if bypass()
        Send +t
    else if vi {
    } else
        Send +t     
    Return

+u::
    if bypass()
        Send +u
    else if vi {
    } else
        Send +u     
    Return

+v::
    if bypass()
        Send +v
    else if vi {
    } else
        Send +v     
    Return

+w::
    if bypass()
        Send +w
    else if vi {
    } else
        Send +w     
    Return

+x::
    if bypass()
        Send +x
    else if browsing {
        operate("+x")
    } else
        Send +x
    Return

+y:: 
    if bypass()
        Send +y
    else if vi {
        Send +{End}
        Sleep, 5       
        Send ^c       
        reset_visual() 
    } else
        Send +y
    Return

+z::
    if bypass()
        Send +z
    else if vi {
    } else
        Send +z     
    Return
