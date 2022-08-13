;; ------------------------------
;; rctrl keys
;; ------------------------------
; [KEYBIND] key=<RCtrl>; tags=keybind; action=<ESC>キーを送信します;
RCtrl:: reset_all() escape()

; +,* -> ',"
; shift+, shift* -> +, *
; [KEYBIND] key=!\;; tags=keybind; action=<'>キーを送信します;
+;:: Send '
; [KEYBIND] key=!:; tags=keybind; action=<">キーを送信します;
+sc028:: Send "
; [KEYBIND] key=>^!\;; tags=keybind; action=<+>キーを送信します;
>^+;:: Send +`;
; [KEYBIND] key=>^!:; tags=keybind; action=<*>キーを送信します;
>^+sc028:: Send *

; [KEYBIND] key=>^<Space>; tags=keybind; action=<Enter>キーを送信します;
>^Space:: Send {Enter}

; [KEYBIND] key=>^<Tab>; tags=programming; action=TODO 補完モードに移行します;
>^Tab:: content_assist()

; ----------------------------------------------------------------------------------------------------
; row 1 left
; ----------------------------------------------------------------------------------------------------
>^q:: Return
>^w:: Return
; [KEYBIND] key=>^e; tags=clipboard; action=コピーします(rEplicate text);
>^e:: copy()
; [KEYBIND] key=>^r; tags=clipboard; action=ペーストします(paste Replicated text);
>^r:: paste()
; [KEYBIND] key=>^t; tags=clipboard; action=切り取ります(cuT text);
>^t:: cut()
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
; [KEYBIND] key=>^O; tags=edit; action=上へ新規の行追加して移動します(new Oneline);
>^+o:: move_newline(-1)
>^p:: Return
>^[:: Return
>^]:: Return

; ----------------------------------------------------------------------------------------------------
; row 2 left
; ----------------------------------------------------------------------------------------------------
; [KEYBIND] key=>^a; tags=select; action=全選択します;
>^a:: select_all()
; [KEYBIND] key=>^s; tags=edit; action=前の5文字を削除します(delete conSecutive 5 chars);
>^s:: delete_left_char(5)
; [KEYBIND] key=>^d; tags=edit; action=前の1文字を削除します(Delete left char);
>^d:: delete_left_char()
; [KEYBIND] key=>^f; tags=edit; action=後ろの一文字を削除します(delete Following char);
>^f:: delete_right_char()
; [KEYBIND] key=>^g; tags=edit; action=後ろの5文字を削除します(delete followinG 5 chars);
>^g:: delete_right_char(5)
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
>^x:: Return
; [KEYBIND] key=>^c; tags=edit; action=前の一単語を削除します(delete baCkward word);
>^c:: delete_backward_word()
; [KEYBIND] key=>^v; tags=edit; action=次の一単語を削除します(remoVe forward word);
>^v:: delete_forward_word()
>^b:: Return
; [KEYBIND] key=>^n; tags=page; action=ページを下へスクロールします;
; ----------------------------------------------------------------------------------------------------
; row 3 right
; ----------------------------------------------------------------------------------------------------
>^n:: move_half_pagedown()
; [KEYBIND] key=>^m; tags=page; action=ページを上へスクロールします;
>^m:: move_half_pageup()
; [KEYBIND] key=>^,; tags=page; action=ヒストリを前へ戻ります FIXME;
>^,:: backward_history()
; [KEYBIND] key=>^.; tags=page; action=ヒストリを先へ進みます FIXME;
; [KEYBIND] key=<TODO>; tags=page; action=定義元へ飛びます FIXME;
>^.:: forward_history()
>^/:: Return
>^sc073:: Return ; sc073 = \
