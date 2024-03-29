#InstallKeybdHook
#InstallMouseHook
#UseHook
#MaxHotkeysPerInterval 100
FileEncoding UTF-8

;ここから下の#includeの基準パスを現在のディレクトリに変更
#Include %A_ScriptDir%

#Include lib\IME.ahk

#Include config.ahk ;設定ファイルを読み込む

#Include functions\common.ahk
#Include functions\move.ahk
#Include functions\edit.ahk
#Include functions\copypaste.ahk
#Include functions\window.ahk
#Include functions\mouse.ahk
#Include functions\run.ahk
#Include functions\bash.ahk

#Include command\command.ahk

#Include operator\operator.ahk

#Include keymap\single.ahk
#Include keymap\lshift.ahk
#Include keymap\rshift.ahk
#Include keymap\lalt.ahk
#Include keymap\rctrl.ahk
#Include keymap\windows.ahk
#Include keymap\mouse.ahk
