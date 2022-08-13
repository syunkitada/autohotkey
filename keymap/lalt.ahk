;; ------------------------------
;; alt - key mapping
;; ------------------------------

LAlt:: Return

<!Space:: Return
<!Tab:: Return

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
; [KEYBIND] key=<!u; tags=window; action=under tmux を操作するためのプレフィックスを入力します;
<!u:: bash_tmux_operate_under_window()
; [KEYBIND] key=<!i; tags=window; action=internal vim のウィンドウを操作するためのプレフィックスを入力します;
<!i:: bash_vim_operate_internal_window()
; [KEYBIND] key=<!o; tags=window; action=over tmux を操作するためのプレフィックスを入力します;
<!o:: bash_tmux_operate_over_winder()
<!p:: Return
<![:: Return
<!]:: Return

; row 2
; [KEYBIND] key=<!a; tags=window; action=カレントウィンドウをメインモニタの左に寄せます;
<!a:: window_move(0, "left")
; [KEYBIND] key=<!s; tags=window; action=カレントウィンドウをメインモニタの右に寄せます;
<!s:: window_move(0, "right")
; [KEYBIND] key=<!d; tags=window; action=カレントウィンドウをサブモニタの左に寄せます;
<!d:: window_move(-1, "left")
; [KEYBIND] key=<!f; tags=window; action=カレントウィンドウをサブモニタの右に寄せます;
<!f:: window_move(-1, "right")
; [KEYBIND] key=<!g; tags=search; action=コピーして、グーグルで検索します;
<!g::
    copy()
    search_google("")
; [KEYBIND] key=<!h; tags=window; action=前のタブへ移動します（RLoginの時はvimのみ有効です）;
<!h:: previous_tab()
; [KEYBIND] key=<!j; tags=window; action=次のWindows画面へ移動します;
<!j:: AltTab
; [KEYBIND] key=<!k; tags=window; action=前のWindows画面へ移動します;
<!k:: ShiftAltTab
; [KEYBIND] key=<!l; tags=window; action=次のタブへ移動します（RLoginの時はvimのみ有効です）;
<!l:: next_tab()
; [KEYBIND] key=<!\;; tags=window; action=Windows画面の一覧を表示し、選択した画面へ移動します;
<!;:: Send #{Tab}
; [KEYBIND] key=<!:; tags=command; action=コマンドモードへ移行します;
<!sc028:: set_colon() ; sc028 = :
<!@:: Return

; row 3
; [KEYBIND] key=<!z; tags=window; action=カレントウィンドウを透明にします（濃い: カレントウィンドウにフォーカス）;
<!z:: switch_transparent(220)
; [KEYBIND] key=<!x; tags=window; action=カレントウィンドウを透明にします（薄め: バックウィンドウにフォーカス）;
<!x:: switch_transparent(150)
<!c:: Return
<!v:: Return
<!b:: Return
; [KEYBIND] key=<!n; tags=window; action=ページを下へスクロールします;
<!n:: move_pagedown()
; [KEYBIND] key=<!m; tags=window; action=ページを上へスクロールします;
<!m:: move_pageup()
<!,:: Return
<!.:: Return
; [KEYBIND] key=<!/; tags=search; action=文字列検索モードへ移行します(ESCで戻ります);
<!/:: search()
; [KEYBIND] key=<!\\; tags=search; action=ブラウザを開いて（Explorerの場合はExplorerで）カーソルをアドレスバーにフォーカスします;
<!sc073:: focus_addressbar() ; sc073 = \
