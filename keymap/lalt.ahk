;; ------------------------------
;; alt - key mapping
;; ------------------------------

LAlt:: set_browsing()

<!Space:: set_mouse()
<!Tab:: emmet_wrap()

; row 1
<!q:: close_tab()
<!w:: window_maximize(0)
<!e:: window_maximize(-1)
<!r:: window_minimize()
<!t:: new_tab()
<!+t:: close_tab()
<!y:: Return
<!u:: bash_vim_unite()
<!i:: bash_vim_operate_internal_window()
<!o:: bash_screen_operate()
<!p:: reload_previous_task()
<![:: Return
<!]:: Return

; row 2
<!a:: window_move(0, "left")
<!s:: window_move(0, "right")
<!d:: window_move(-1, "left")
<!f:: window_move(-1, "right")
<!g:: Return
<!h:: previous_tab()
<!j:: AltTab
<!k:: ShiftAltTab
<!l:: next_tab()
<!;:: Return
<!sc028:: set_colon() ; sc028 = :
<!@:: Return

; row 3
<!z:: switch_transparent(220)
<!x:: switch_transparent(150)
<!c:: Return
<!v:: Return
<!b:: bookmark()
<!n:: move_pagedown()
<!m:: move_pageup()
<!,:: Return
<!.:: Return
<!/:: search()
<!sc073:: focus_addressbar() ; sc073 = \
