;; ------------------------------ 
;; single key mapping
;; ------------------------------ 
Enter::
    if bypass() {
        Send {Enter}
    } else if colon {
        run_command()
    } else {
        Send {Enter}
    }
    Return

ESC::
    if bypass() {
        Send {Esc}
    } else if is_browsing() {
    } else {
		IME_SET(0)
        Send {Esc} 
    }
	reset_all()
    Return

Space::
    if bypass() {
        Send {Space}
    } else if colon {
        run_command()
	} else if browsing {
        Send {Enter}
    } else {
        Send {Space}
    }
    Return

Insert::
    Return

BS::
    if bypass() {
        Send {BS}
    } else {
        backspace()
		reset_visual()
    }
    Return

Del::
	if bypass() {
		Send {Del}
	} else {
        delete()
		reset_visual()
	}
    Return

Up::
    if bypass() {
        Send {Up}
    } else {
        up()
    }
    Return

Down::
    if bypass() {
        Send {Down}
    } else {
        down()
    }
    Return

Left::
    if bypass() {
        Send {Left}
    } else {
        left()
    }
    Return

Right::
    if bypass() {
        Send {Right}
    } else {
        right()
    }
    Return

#::
    if bypass() {
        Send {#}
    } else if colon {
        append_colon("#")
    } else if browsing {
    } else {
        Send {#}
    }
    Return

,::
    if bypass() {
        Send `,
    } else if colon {
        append_colon(",")
    } else if browsing {
		Send {LButton}
    } else {
        Send `,
    }
    Return

.::
    if bypass() {
        Send .
    } else if colon {
        append_colon(".")
    } else if browsing {
        operate(".")
    } else {
        Send .
    }
    Return

*::
    if bypass() {
        Send *
    } else if colon {
        append_colon("*")
    } else if browsing {
    } else {
        Send *
    }
    Return


-::
    if bypass() {
        Send -
    } else if colon {
        append_colon("-")
    } else if browsing {
    } else {
        Send -
    }
    Return

>::
    if bypass() {
        Send >
    } else if colon {
        append_colon(">")
    } else if browsing {
    } else {
        Send >
    }
    Return

<::
    if bypass() {
        Send <
    } else if colon {
        append_colon("<")
    } else if browsing {
    } else {
        Send <
    }
    Return

/::
    if bypass() {
        Send /
    } else if colon {
        append_colon("/")
    } else if browsing {
        operate("/")
    } else {
        Send /
    }
    Return

:::
    if bypass() {
        Send :
    } else if colon {
        set_colon()
	} else if browsing {
		move_end()
	} else {
        Send :
    }
    Return

`;::
    if bypass() {
        Send `;
    } else if colon {
        append_colon(";")
	} else if browsing {
		move_home()
    } else {
        Send `;
    }
    Return

$::
    if bypass() {
        Send $
    } else if colon {
        append_colon("$")
    } else if browsing {
        operate("$")
    } else {
        Send $
    }
    Return

0::
    if bypass() {
        Send 0
    } else if colon {
        append_colon("0")
    } else if browsing {
        operate("0") 
    } else {
        Send 0
    }
    Return

1::
    if bypass() {
        Send 1
    } else if colon {
        append_colon("1")
    } else if browsing {
        set_operator_count(1)
    } else {
        Send 1
    }
    Return

2::
    if bypass() {
        Send 2
    } else if colon {
        append_colon("2")
    } else if browsing {
        set_operator_count(2)
    } else {
        Send 2
    }
    Return

3::
    if bypass() {
        Send 3
    } else if colon {
        append_colon("3")
    } else if browsing {
        set_operator_count(3)
    } else {
        Send 3
    }
    Return

4::
    if bypass() {
        Send 4
    } else if colon {
        append_colon("4")
    } else if browsing {
        set_operator_count(4)
    } else {
        Send 4
    }
    Return

5::
    if bypass() {
        Send 5
    } else if colon {
        append_colon("5")
    } else if browsing {
        set_operator_count(5)
    } else {
        Send 5
    }
    Return

6::
    if bypass() {
        Send 6
    } else if colon {
        append_colon("6")
    } else if browsing {
        set_operator_count(6)
    } else {
        Send 6
    }
    Return

7::
    if bypass() {
        Send 7
    } else if colon {
        append_colon("7")
    } else if browsing {
        set_operator_count(7)
    } else {
        Send 7
    }
    Return

8::
    if bypass() {
        Send 8
    } else if colon {
        append_colon("8")
    } else if browsing {
        set_operator_count(8)
    } else {
        Send 8
    }
    Return

9::
    if bypass() {
        Send 9
    } else if colon {
        append_colon("9")
    } else if browsing {
        set_operator_count(9)
    } else {
        Send 9
    }
    Return

a::
    if bypass() {
        Send a
    } else if colon {
        append_colon("a")
    } else if browsing {
        operate("a")
    } else {
        Send a
    }
    Return

b::
    if bypass() {
        Send b
    } else if colon {
        append_colon("b")
    } else if browsing {
        operate("b")        
    } else {
        Send b
    }
    Return

c::
    if bypass() {
        Send c
    } else if colon {
        append_colon("c")
    } else if browsing {
        operate("c")
    } else {
        Send c     
    }
    Return

d::
    if bypass() {
        Send d
    } else if colon {
        append_colon("d")
    } else if browsing {
        operate("d")        
    } else {
        Send d
    }
    Return

e::
    if bypass() {
        Send e
    } else if colon {
        append_colon("e")
    } else if browsing {
        operate("e")
    } else {
        Send e
    }
    Return

f::
    if bypass() {
        Send f
    } else if colon {
        append_colon("f")
    } else if browsing {
        operate("f")        
    } else {
        Send f
    }
    Return

g::
    if bypass() {
        Send g
    } else if colon {
        append_colon("g")
    } else if browsing {
        operate("g")
    } else {
        Send g
    }
    Return

h::
    if bypass() {
        Send h
    } else if colon {
        append_colon("h")
    } else if browsing {
        operate("h")
    } else {
        Send h
    }
    Return

i::
    if bypass() {
        Send i
    } else if colon {
        append_colon("i")
    } else if browsing {
        operate("i")
    } else {
        Send i
    }
    Return

j::
    if bypass() {
        Send j
    } else if colon {
        append_colon("j")
    } else if browsing {
        operate("j")
    } else {
        Send j
    }
    Return

j & k::
	set_operator_count(2)
	operate("j")
	Return

j & l::
	set_operator_count(4)
	operate("j")
	Return

j & i::
    WinGetClass, className, A
    WinActivateBottom, ahk_class %className%
    Return

k::
    if bypass() {
        Send k
    } else if colon {
        append_colon("k")
    } else if browsing {
        operate("k")
    } else {
        Send k
    }
    Return

k & j::
	set_operator_count(2)
	operate("k")
	Return

k & h::
	set_operator_count(4)
	operate("k")
	Return

l::
    if bypass() {
        Send l
    } else if colon {
        append_colon("l")
    } else if browsing {
        operate("l")
    } else {
        Send l
    }
    Return

m::
    if bypass() {
        Send m
    } else if colon {
        append_colon("m")
    } else if browsing {
        operate("m")
    } else {
        Send m
    }
    Return

n::
    if bypass() {
        Send n
    } else if colon {
        append_colon("n")
    } else if browsing {
        operate("n")
    } else {
        Send n     
    }
    Return

o::
    if bypass() {
        Send o
    } else if colon {
        append_colon("o")
    } else if browsing {
        operate("o")
    } else {
        Send o
    }
    Return

p::
    if bypass() {
        Send p
    } else if colon {
        append_colon("p")
    } else if browsing {
        operate("p")
    } else {
        Send p
    }
    Return

q::
    if bypass() {
        Send q
    } else if colon {
        append_colon("q")
    } else if browsing {
        operate("q")
    } else {
        Send q
    }
    Return

r::
    if bypass() {
        Send r
    } else if colon {
        append_colon("r")
    } else if browsing {
        operate("r")
    } else {
        Send r     
    }
    Return

s::
    if bypass() {
        Send s
    } else if colon {
        append_colon("s")
    } else if browsing {
        operate("s")
    } else {
        Send s
    }
    Return

t::
    if bypass() {
        Send t
    } else if colon {
        append_colon("t")
    } else if browsing {
        operate("t")
    } else {
        Send t     
    }
    Return

u::
    if bypass() {
        Send u
    } else if colon {
        append_colon("u")
    } else if browsing {
        operate("u")
    } else {
        Send u
    }
    Return

v::
    if bypass() {
        Send v
    } else if colon {
        append_colon("v")
    } else if browsing {
        operate("v")
    } else {
        Send v
    }
    Return

w::
    if bypass() {
        Send w
    } else if colon {
        append_colon("w")
    } else if browsing {
        operate("w")        
    } else {
        Send w
    }
    Return

x::
    if bypass() {
        Send x
    } else if colon {
        append_colon("x")
    } else if browsing {
        operate("x")
    } else {
        Send x
    }
    Return 

y::
    if bypass() {
        Send y
    } else if colon {
        append_colon("y")
    } else if browsing {
        operate("y")
    } else {
        Send y
    }
    Return

z::
    if bypass() {
        Send z
    } else if colon {
        append_colon("z")
	} else if browsing {
        operate("z")
    } else {
        Send z     
    }
    Return
