;; ------------------------------
;; rctrl keys
;; ------------------------------

; ----------------------------------------------------------------------------------------------------
; row 1 left
; ----------------------------------------------------------------------------------------------------
>^q:: Return
>^w:: Return
>^e:: Return
>^r:: Return
>^t:: Return
; ----------------------------------------------------------------------------------------------------
; row 1 right
; ----------------------------------------------------------------------------------------------------
>^y:: Return
; [KEYBIND] key=>^u; tags=move; action=前のワードへ移動します(move to previoUs word) ;
>^u:: move_backward_word()
; [KEYBIND] key=>^i; tags=move; action=次のワードへ移動します(move to next contIguous word) ;
>^i:: move_forward_word()
; [KEYBIND] key=>^o; tags=edit; action=下へ新規の行追加して移動します(new Oneline);
>^o:: move_newline(1)
>^+o:: Return
>^p:: Return
>^[:: Return
>^]:: Return

; ----------------------------------------------------------------------------------------------------
; row 2 left
; ----------------------------------------------------------------------------------------------------
; [KEYBIND] key=>^a; tags=select; action=全選択します;
>^a:: select_all()
; [KEYBIND] key=>^v; tags=edit; action=前の一単語を削除します(Delete backward word);
>^s:: delete_backward_word()
; [KEYBIND] key=>^d; tags=edit; action=前の1文字を削除します(Delete backward char);
>^d:: delete_left_char()
; [KEYBIND] key=>^f; tags=edit; action=後ろの一文字を削除します(delete Forward char);
>^f:: delete_right_char()
; [KEYBIND] key=>^b; tags=edit; action=次の一単語を削除します(Delete forward word);
>^g:: delete_forward_word()
; ----------------------------------------------------------------------------------------------------
; row 2 right
; ----------------------------------------------------------------------------------------------------
; [KEYBIND] key=>^h; tags=move; action=左へ移動します;
>^h:: move_left()
; [KEYBIND] key=>^j; tags=move; action=下へ移動します;
>^j:: move_down()
; [KEYBIND] key=>^k; tags=move; action=上へ移動します;
>^k:: move_up()
; [KEYBIND] key=>^l; tags=move; action=右へ移動します;
>^l:: move_right()
; [KEYBIND] key=>^\;; tags=move; action=一番左へ移動します;
>^;:: move_home()
; [KEYBIND] key=>^:; tags=move; action=一番右へ移動します;
>^sc028:: move_end() ; sc028 = コロン

; ----------------------------------------------------------------------------------------------------
; row 3 left
; ----------------------------------------------------------------------------------------------------
>^z:: Reload
; [KEYBIND] key=>^x; tags=clipboard; action=切り取ります(Cut text);
>^x:: cut()
; [KEYBIND] key=>^c; tags=clipboard; action=コピーします(Copy text);
>^c:: copy()
; [KEYBIND] key=>^v; tags=clipboard; action=ペーストします(Paste text);
>^v:: paste()
>^b:: Return
; ----------------------------------------------------------------------------------------------------
; row 3 right
; ----------------------------------------------------------------------------------------------------
; [KEYBIND] key=>^n; tags=page; action=ページを下へスクロールします;
>^n:: move_half_pagedown()
; [KEYBIND] key=>^m; tags=page; action=ページを上へスクロールします;
>^m:: move_half_pageup()
; [KEYBIND] key=>^,; tags=page; action=ヒストリを前へ戻ります FIXME;
>^,:: move_backward_history()
; [KEYBIND] key=>^.; tags=page; action=ヒストリを先へ進みます FIXME;
; [KEYBIND] key=<TODO>; tags=page; action=定義元へ飛びます FIXME;
>^.:: move_forward_history()
>^/:: Return
>^sc073:: Return ; sc073 = \
