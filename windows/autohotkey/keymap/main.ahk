; [KEYBIND] key=<RCtrl>; tags=keybind; action=<ESC>キーを送信します;
RCtrl:: escape()

; SR1 + SL1 + ;/: で +/* を入力します。
; [KEYBIND] key=>^!\;; tags=keybind; action=<+>キーを送信します;
; NOTE Send "{NumpadAdd} では、RLogin上で<+>キーの入力ができなかったので注意です。
>^+;:: Send "+;"
; [KEYBIND] key=>^!:; tags=keybind; action=<*>キーを送信します;
; NOTE Send "{NumpadMulti} では、RLogin上で<*>キーの入力ができなかったので注意です。
>^+sc028:: Send "+{sc028}"


; [KEYBIND] key=>+<Tab>; tags=programming; action=次の補完候補へ移動します;
>+Tab:: content_assist()

; [KEYBIND] key=<+<Space>; tags=language; action=英数字入力に切り替えます;
<+Space:: {
	IME_SET(0)
	Return
}

; [KEYBIND] key=<+<RCtrl>; tags=language; action=ローマ字入力に切り替えます;
<+RCtrl:: {
	IME_SET(0)
	Send "{vkF3sc029}"
	Return
}

#Include rshift.ahk
#Include lalt.ahk
#Include rctrl.ahk
#Include windows.ahk
