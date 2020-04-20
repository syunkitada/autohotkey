>+Space::
	IME_SET(0)
	Return

>+RCtrl::
	IME_SET(0)
	Send {vkF3sc029}
	Return

; row 1
>+q:: Return
>+w:: Return
>+e:: open_exproler()
>+r:: close_tab()
>+t:: new_tab()
>+y:: Return
>+u:: Return
>+i:: Return
>+o:: focus_outline()
>+p:: Return

; row 2
>+a:: focus_search_file_finder()
>+s:: focus_search_text_finder()
>+d:: close_tab()
>+f:: focus_buffer_file_finder()
>+g:: focus_buffer_text_finder()
>+h:: focus_history_finder()
>+j:: jump_to_definition()
>+k:: backward_history()
>+l:: forward_history()
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