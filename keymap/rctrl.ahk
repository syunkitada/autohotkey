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
>^w:: cut()
>^e:: copy()
>^r:: paste()
>^t:: Return
>^y:: Return
>^u:: bash_vim_unit_history()
>^i:: Return
>^o:: move_newline(1)
>^+o:: move_newline(-1)
>^p:: Return
>^[:: move_pageup()
>^]:: move_pagedown()

; row 2
>^a:: select_all()
>^s:: save()
>^d:: delete_left_char()
>^f:: delete_right_char()
>^g:: Return
>^h:: move_left()
>^j:: move_down()
>^k:: move_up()
>^l:: move_right()
>^;:: move_home()
>^sc028:: move_end() ; sc028 = コロン
>^@:: run_program()

; row 3
>^z:: Reload
>^x:: Return
>^c:: change_name()
>^v:: Return
>^b:: content_assist(0)
>^n:: move_half_pagedown()
>^m:: move_half_pageup()
>^,:: backward_history()
>^.:: forward_history()
>^/:: comment_out()
>^sc073:: Return ; sc073 = \
