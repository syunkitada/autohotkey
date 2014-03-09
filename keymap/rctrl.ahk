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
>^+Space:: content_assist(0)

>^Tab:: emmet()

; row 1
>^q:: quick_fix()
>^w:: delete_backward_line()
>^e:: delete_forward_line()
>^r:: delete_current_line()
>^t:: cut()
>^y:: copy()
>^u:: bash_vim_unit_history()
>^i:: Return
>^o:: move_newline()
>^p:: paste()
>^[:: move_pageup()
>^]:: move_pagedown()

; row 2
>^a:: delete_backward_word()
>^s:: delete_left_char()
>^d:: delete_right_char()
>^f:: delete_forward_word()
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
>^x:: cut()
>^c:: copy()
>^v:: paste()
>^b:: Return
>^n:: move_half_pagedown()
>^m:: move_half_pageup()
>^,:: backward_history()
>^.:: forward_history()
>^/:: comment_out()
>^sc073:: Return ; sc073 = \
