; [KEYBIND] key=<RCtrl>; tags=keybind; action=<ESC>キーを送信します;
RCtrl:: escape()

; +,* -> ',"
; shift+, shift* -> +, *
; [KEYBIND] key=!\;; tags=keybind; action=<'>キーを送信します;
+;:: Send "'"
; [KEYBIND] key=!:; tags=keybind; action=<">キーを送信します;
+sc028:: Send "`""
; [KEYBIND] key=>^!\;; tags=keybind; action=<+>キーを送信します;
; NOTE Send "{NumpadAdd} では、RLogin上で<+>キーの入力ができなかったので注意です。
>^+;:: Send "+;"
; [KEYBIND] key=>^!:; tags=keybind; action=<*>キーを送信します;
; NOTE Send "{NumpadMulti} では、RLogin上で<*>キーの入力ができなかったので注意です。
>^+sc028:: Send "+{sc028}"

; [KEYBIND] key=>^<Space>; tags=keybind; action=<Enter>キーを送信します;
>^Space:: Send "{Enter}"

; [KEYBIND] key=>^<Tab>; tags=programming; action=TODO 補完モードに移行します;
>+Tab:: content_assist()
>^Tab:: content_assist(0)

; [KEYBIND] key=>+<Space>; tags=language; action=英数字入力に切り替えます;
>+Space:: {
	IME_SET(0)
	Return
}

; [KEYBIND] key=>+<RCtrl>; tags=language; action=ローマ字入力に切り替えます;
>+RCtrl:: {
	IME_SET(0)
	Send "{vkF3sc029}"
	Return
}

#Include rshift.ahk
#Include lalt.ahk
#Include rctrl.ahk
#Include windows.ahk
#Include mouse.ahk