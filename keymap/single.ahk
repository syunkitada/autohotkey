;; ------------------------------
;; single key mapping
;; ------------------------------

Enter::
	if !run_command()
		Send {Enter}
	Return

ESC::
	if is_browsing() or is_mouse()
		reset_all()
	else if !escape()
		Send {Esc}
	Return

Space::
	if !operate("Space")
		Send {Space}
	Return

Tab::
	if !operate("Tab")
		Send {Tab}
	Return

Shift::
	if !operate("Shift")
		Send {Shift}
	Return

Insert::
	Return

BS::
	if !delete_left_char()
		Send {BS}
	Return

Del::
	if !delete_right_char()
		Send {Del}
	Return

#::
	if !append_colon("#")
		Send {#}
	Return

,::
	if !append_colon(",")
		Send `,
	Return

.::
	if !operate(".")
		Send .
	Return

*::
	if !append_colon("*")
		Send *
	Return

-::
	if !append_colon("-")
		Send -
	Return

>::
	if !append_colon(">")
		Send >
	Return

<::
	if !append_colon("<")
		Send <
	Return

/::
	if !operate("/")
		Send /
	Return

sc028:: ; sc028=:
	if !operate(":")
		Send :
	Return

`;::
	if !operate(";")
		Send `;
	Return

$::
	if !operate("$")
		Send $
	Return

sc073:: ; sc073=\
	if !operate("\")
		Send \
	Return

0::
	if !operate("0")
		Send 0
	Return

1::
	if !set_operator_count(1)
		Send 1
	Return

2::
	if !set_operator_count(2)
		Send 2
	Return

3::
	if !set_operator_count(3)
		Send 3
	Return

4::
	if !set_operator_count(4)
		Send 4
	Return

5::
	if !set_operator_count(5)
		Send 5
	Return

6::
	if !set_operator_count(6)
		Send 6
	Return

7::
	if !set_operator_count(7)
		Send 7
	Return

8::
	if !set_operator_count(8)
		Send 8
	Return

9::
	if !set_operator_count(9)
		Send 9
	Return

a::
	if !operate("a")
		Send a
	Return

b::
	if !operate("b")
		Send b
	Return

c::
	if !operate("c")
		Send c
	Return

d::
	if !operate("d")
		Send d
	Return

e::
	if !operate("e")
		Send e
	Return

f::
	if !operate("f")
		Send f
	Return

g::
	if !operate("g")
		Send g
	Return

h::
	if !operate("h")
		Send h
	Return

i::
	if !operate("i")
		Send i
	Return

j::
	if !operate("j")
		Send j
	Return

k::
	if !operate("k")
		Send k
	Return

l::
	if !operate("l")
		Send l
	Return

m::
	if !operate("m")
		Send m
	Return

n::
	if !operate("n")
		Send n
	Return

o::
	if !operate("o")
		Send o
	Return

p::
	if !operate("p")
		Send p
	Return

q::
	if !operate("q")
		Send q
	Return

r::
	if !operate("r")
		Send r
	Return

s::
	if !operate("s")
		Send s
	Return

t::
	if !operate("t")
		Send t
	Return

u::
	if !operate("u")
		Send u
	Return

v::
	if !operate("v")
		Send v
	Return

w::
	if !operate("w")
		Send w
	Return

x::
	if !operate("x")
		Send x
	Return

y::
	if !operate("y")
		Send y
	Return

z::
	if !operate("z")
		Send z
	Return

