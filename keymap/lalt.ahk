;; ------------------------------
;; alt - key mapping
;; ------------------------------

LAlt:: Return

<!Space:: Return
<!Tab:: Return

; row 1 left
; [KEYBIND] key=<!q; tags=window; action=タブを閉じる;
<!q:: window_close_tab()
; [KEYBIND] key=<!t; tags=window; action=新しいタブを開く;
<!w:: window_new_tab()
<!e:: Return
<!r:: Return
<!t:: vscode_switch_terminal()

; row 1 right
; [KEYBIND] key=<!y; tags=window; action=ブラウザをリロードします（ターミナルで実行した場合はウィンドウを切り替えてからリロードします）;
<!y:: reload()
; [KEYBIND] key=<!u; tags=window; action=under tmux を操作するためのプレフィックスを入力します;
<!u:: bash_tmux_operate_under_window()
; [KEYBIND] key=<!i; tags=window; action=internal vim のウィンドウを操作するためのプレフィックスを入力します;
<!i:: bash_vim_operate_internal_window()
; [KEYBIND] key=<!o; tags=window; action=over tmux を操作するためのプレフィックスを入力します;
<!o:: bash_tmux_operate_over_winder()
<!p:: Return
<![:: Return
<!]:: Return

; row 2 left
; [KEYBIND] key=<!a; tags=move; action=タブを検索して移動します;
<!a:: find_tab()
; [KEYBIND] key=<!a; tags=move; action=キャッシュ（ヒストリ）を検索して移動します;
<!s:: find_cache()
; [KEYBIND] key=<!d; tags=move; action=ファイル名からファイルを検索して移動します;
<!d:: find_text()
; [KEYBIND] key=<!f; tags=move; action=テキストからファイルを検索して移動します;
<!f:: find_file()
; [KEYBIND] key=<!g; tags=move; action=選択中のテキストをWebで検索します;
<!g:: find_selected_text_by_web()

; row 2 right
; [KEYBIND] key=<!h; tags=window; action=前のタブへ移動します（RLoginの時はvimのみ有効です）;
<!h:: window_previous_tab()
; [KEYBIND] key=<!j; tags=window; action=次のWindows画面へ移動します;
<!j:: AltTab
; [KEYBIND] key=<!+j; tags=window; action=Windows画面の一覧を表示し、選択した画面へ移動します;
<!+j:: Send "#{Tab}"
; [KEYBIND] key=<!k; tags=window; action=前のWindows画面へ移動します;
<!k:: ShiftAltTab
; [KEYBIND] key=<!l; tags=window; action=次のタブへ移動します（RLoginの時はvimのみ有効です）;
<!l:: window_next_tab()
; [KEYBIND] key=<!\;; tags=window; action=Windows画面の一覧を表示し、選択した画面へ移動します;
<!;:: doc_gui_show()
; [KEYBIND] key=<!:; tags=command; action=コマンドモードへ移行します;
<!sc028:: mycommand_gui_show() ; sc028 = :
<!@:: Return

; row 3 left
; [KEYBIND] key=<!z; tags=window; action=カレントウィンドウを透明にします（濃い: カレントウィンドウにフォーカス）;
<!z:: window_switch_transparent(220)
; [KEYBIND] key=<!x; tags=window; action=カレントウィンドウを透明にします（薄め: バックウィンドウにフォーカス）;
<!x:: window_switch_transparent(150)
<!c:: Return
<!v:: Return
; [KEYBIND] key=<!x; tags=move; action=ブックマークマネージャーを開きます ;
<!b:: find_bookmark()

; row 3 right
; [KEYBIND] key=<!n; tags=window; action=ページを下へスクロールします;
<!n:: move_pagedown()
; [KEYBIND] key=<!m; tags=window; action=ページを上へスクロールします;
<!m:: move_pageup()
<!,:: Return
<!.:: Return
; [KEYBIND] key=<!\\; tags=search; action=ブラウザを開いて（Explorerの場合はExplorerで）カーソルをアドレスバーにフォーカスします;
<!/:: find_by_web()
<!sc073:: Return ; sc073 = \
