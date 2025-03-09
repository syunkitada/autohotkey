InstallKeybdHook
InstallMouseHook
#UseHook

A_MaxHotkeysPerInterval := 100

;ここから下の#Includeの基準パスを現在のディレクトリに変更
#Include %A_ScriptDir%

#Include vendor\IMEv2.ahk\IMEv2.ahk

#Include infra\win_active_utils.ahk
#Include infra\command.ahk

#Include functions\common.ahk
#Include functions\move.ahk
#Include functions\edit.ahk
#Include functions\copypaste.ahk
#Include functions\window.ahk
#Include functions\bash.ahk
#Include functions\command.ahk

#Include keymap\main.ahk