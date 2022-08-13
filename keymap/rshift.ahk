; [KEYBIND] key=>+<Space>; tags=language; action=英数字入力に切り替えます;
>+Space::
	IME_SET(0)
	Return

; [KEYBIND] key=>+<RCtrl>; tags=language; action=ローマ字入力に切り替えます;
>+RCtrl::
	IME_SET(0)
	Send {vkF3sc029}
	Return

; row 1
>+q:: Return
>+w:: Return
>+e:: Return
>+r:: Return
>+t:: Return
>+y:: Return
>+u:: Return
>+i:: Return
>+o:: Return
>+p:: Return

; row 2
>+a:: Return
>+s:: Return
>+d:: Return
>+f:: Return
>+g:: Return
>+h:: Return
>+j:: Return
>+k:: Return
>+l:: Return
>+;:: Return
>+sc028:: Return

; row 3
>+z:: Return
>+x:: Return
>+c:: Return
>+v:: Return
>+b:: Return
>+n:: Return
>+m:: Return
