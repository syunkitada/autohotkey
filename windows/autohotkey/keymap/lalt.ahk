;; ------------------------------
;; alt - key mapping
;; ------------------------------

LAlt:: Return

<!Space:: Return
<!Tab:: Return

; row 1 left
<!q:: Return
<!w:: Return
<!e:: Return
<!r:: Return
<!t:: Return

; row 1 right
<!y:: Return
; [KEYBIND] key=<!u; tags=window; action=under tmux の Ctrl+T prefix を入力します;
<!u:: bash_tmux_operate_under_window()
; [KEYBIND] key=<!i; tags=window; action=Vim の Ctrl+Z ウィンドウ操作 prefix を入力します;
<!i:: bash_vim_operate_internal_window()
; [KEYBIND] key=<!o; tags=window; action=over tmux の Ctrl+B prefix を入力します;
<!o:: bash_tmux_operate_over_winder()
<!p:: Return
; JIS @キー位置は仮想配列の [ です。
; [KEYBIND] key=<![; tags=keybind; action=ダブルクォートを入力します;
<![:: Send "`""
; JIS [キー位置は仮想配列の ] です。
; [KEYBIND] key=<!]; tags=keybind; action=アポストロフィを入力します;
<!]:: Send "'"

; row 2 left
; [KEYBIND] key=<!a; tags=move; action=タブを検索して移動します;
<!a:: find_tab()
; [KEYBIND] key=<!a; tags=move; action=キャッシュ（ヒストリ）を検索して移動します;
<!s:: find_cache()
; [KEYBIND] key=<!d; tags=keybind; action=このキーの組み合わせを無効にします;
<!d:: Return
; [KEYBIND] key=<!f; tags=keybind; action=このキーの組み合わせを無効にします;
<!f:: Return
; [KEYBIND] key=<!g; tags=keybind; action=このキーの組み合わせを無効にします;
<!g:: Return

; row 2 right
; [KEYBIND] key=<!h; tags=window; action=ブラウザや端末などで前のタブへ移動します;
<!h:: window_previous_tab()
; [KEYBIND] key=<!j; tags=window; action=次のWindows画面へ移動します;
<!j:: AltTab
; [KEYBIND] key=<!+j; tags=window; action=Windows画面の一覧を表示し、選択した画面へ移動します;
<!+j:: Send "#{Tab}"
; [KEYBIND] key=<!k; tags=window; action=前のWindows画面へ移動します;
<!k:: ShiftAltTab
; [KEYBIND] key=<!l; tags=window; action=ブラウザや端末などで次のタブへ移動します;
<!l:: window_next_tab()
; [KEYBIND] key=<!\;; tags=keybind; action=このキーの組み合わせを無効にします;
<!;:: Return
; [KEYBIND] key=<!sc028; tags=keybind; action=このキーの組み合わせを無効にします;
<!sc028:: Return ; sc028 = :
; [KEYBIND] key=<!@; tags=keybind; action=このキーの組み合わせを無効にします;
<!@:: Return

; row 3 left
; [KEYBIND] key=<!z; tags=window; action=カレントウィンドウを透明にします（濃い: カレントウィンドウにフォーカス）;
<!z:: window_switch_transparent(220)
; [KEYBIND] key=<!x; tags=window; action=カレントウィンドウを透明にします（薄め: バックウィンドウにフォーカス）;
<!x:: window_switch_transparent(150)
<!c:: Return
<!v:: Return
; [KEYBIND] key=<!b; tags=keybind; action=このキーの組み合わせを無効にします;
<!b:: Return

; row 3 right
; [KEYBIND] key=<!n; tags=window; action=ページを下へスクロールします;
<!n:: move_pagedown()
; [KEYBIND] key=<!m; tags=window; action=ページを上へスクロールします;
<!m:: move_pageup()
<!,:: Return
<!.:: Return
; [KEYBIND] key=<!/; tags=keybind; action=このキーの組み合わせを無効にします;
<!/:: Return
<!sc073:: Return ; sc073 = \
