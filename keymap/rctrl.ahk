;; ------------------------------
;; rctrl keys
;; ------------------------------
RCtrl:: reset_all() escape()

; +,* -> ',"
; shift+, shift* -> +, *
+;:: Send '
+sc028:: Send "
>^+;:: Send +`;
>^+sc028:: Send *

>^Space:: content_assist()

>^Tab:: emmet()

; row 1
>^q:: quick_fix()
>^w:: Return
>^e:: copy()
>^r:: paste()
>^t:: cut()
>^y:: Return
>^u:: move_backward_word()
>^i:: move_forward_word()
>^o:: move_newline(1)
>^+o:: move_newline(-1)
>^p:: content_assist(0)
>^[:: move_pageup()
>^]:: move_pagedown()

; row 2
>^a:: select_all()
>^s:: save()
>^d:: delete_left_char()
>^f:: delete_right_char()
>^g:: set_mouse()
>^h:: move_left()
>^j:: move_down()
>^k:: move_up()
>^l:: move_right()
>^;:: move_home()
>^sc028:: move_end() ; sc028 = コロン
>^@:: run_program()

; row 3
>^z:: Reload
>^x:: set_mouse()
>^c:: change_name()
>^v:: delete_backward_word()
>^b:: delete_forward_word()
>^n:: move_half_pagedown()
>^m:: move_half_pageup()
>^,:: backward_history()
>^.:: forward_history()
>^/:: comment_out()
>^sc073:: Return ; sc073 = \
