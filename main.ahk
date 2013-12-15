#InstallKeybdHook
#InstallMouseHook
#UseHook
#MaxHotkeysPerInterval 100
FileEncoding UTF-8

#Include %A_ScriptDir% ;ここから下の#includeの基準パスを現在のディレクトリに変更

#Include lib\IME.ahk

#Include config.ahk ;設定ファイルを読み込む
#Include functions.ahk
#Include move_functions.ahk
#Include edit_functions.ahk
#Include copypaste.ahk
#Include command.ahk
#Include operator.ahk

#Include singlekeymap.ahk
#Include shiftkeymap.ahk
#Include ctrlkeymap.ahk
#Include altkeymap.ahk
#Include windowskeymap.ahk
#Include numpad.ahk
#Include mousemap.ahk


