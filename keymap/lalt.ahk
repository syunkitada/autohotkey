;; ------------------------------
;; alt - key mapping
;; ------------------------------

LAlt:: Return

<!Space:: set_mouse()
<!Tab:: emmet_wrap()

; row 1
; [KEYBIND] key=<!q; tags=window; action=タブを閉じる;
<!q:: close_tab()
; [KEYBIND] key=<!w; tags=window; action=カレントウインドウをメインモニタで最大化する;
<!w:: window_maximize(0)
; [KEYBIND] key=<!e; tags=window; action=カレントウインドウをサブモニタで最大化する;
<!e:: window_maximize(-1)
; [KEYBIND] key=<!r; tags=window; action=カレントウインドウを最小化する;
<!r:: window_minimize()
; [KEYBIND] key=<!t; tags=window; action=新しいタブを開く;
<!t:: new_tab()
; [KEYBIND] key=<!+t; tags=window; action=タブを閉じる;
<!+t:: close_tab()
<!y:: Return
<!u:: bash_tmux_operate_under_window()
<!i:: bash_vim_operate_internal_window()
<!o:: bash_tmux_operate_over_winder()
<!p:: Return
<![:: Return
<!]:: Return

; row 2
<!a:: window_move(0, "left")
<!s:: window_move(0, "right")
<!d:: window_move(-1, "left")
<!f:: window_move(-1, "right")
<!g::
    copy()
    search_google("")
<!h:: previous_tab()
<!j:: AltTab
<!k:: ShiftAltTab
<!l:: next_tab()
<!;:: Send #{Tab}
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
