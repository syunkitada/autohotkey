#InstallKeybdHook
#InstallMouseHook
#UseHook
#MaxHotkeysPerInterval 100
FileEncoding UTF-8

#Include %A_ScriptDir% ;ここから下の#includeの基準パスを現在のディレクトリに変更

#Include lib\IME.ahk

#Include config.ahk ;設定ファイルを読み込む

#Include functions\common.ahk
#Include functions\move.ahk
#Include functions\edit.ahk
#Include functions\copypaste.ahk

#Include command\command.ahk

#Include operator\operator.ahk
#Include operator\operators.ahk
#Include operator\mouse.ahk

#Include keymap\single.ahk
#Include keymap\shift.ahk
#Include keymap\ctrl.ahk
#Include keymap\esc.ahk
#Include keymap\windows.ahk
#Include keymap\numpad.ahk
#Include keymap\mouse.ahk


