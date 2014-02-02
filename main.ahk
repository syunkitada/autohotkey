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

#Include command\command.ahk

#Include operator\operator.ahk
#Include operator\operators.ahk
#Include operator\mouse.ahk

#Include keymap\single.ahk
#Include keymap\shift.ahk
#Include keymap\lalt.ahk
#Include keymap\rctrl.ahk
#Include keymap\windows.ahk
#Include keymap\numpad.ahk
#Include keymap\mouse.ahk

