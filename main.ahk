; InstallKeybdHook は、無条件でkeyboard hookを有効化します。
; keyboard hookを有効化すると消費メモリ量が500KBほど増えますが、便利なので有効化します。
; これを有効化すると、KeyHistoryコマンドでキー入力の履歴を表示できるようになります。
; また、#HotkeyModifierTimeoutの設定にかかわらず修飾キーの状態復元が確実に行われるようになります。
InstallKeybdHook

; InstallMouseHook は、無条件でmouse hookを有効化します。
; mouse hookを有効化すると消費メモリ量が500KBほど増えますが、便利なので有効化します。
; これを有効化すると、KeyHistoryコマンドでマウスボタンの入力の履歴を表示できるようになります。
InstallMouseHook

; #UseHook は、どんなホットキーでもフックを使うようにします。
; autohotkeyは、通常、ホットキーの登録はRegisterHotkey()というWindowsのAPIを使用して行われますが、このAPIで登録できないキーだけをフックを使っています。
; もしくは、ホットキーラベル定義で「$」オプションをつけると、そのキーでフックを使うようになります。
; #UseHookは、強制的にどんなホットキーでもフックを使うようにします。
; フックを使用すると、RegisterHotkey()を使用するより反応が速くなる場合があります。
; また、フックを使った場合の副作用として、Sendコマンドでホットキーがトリガーされなくなります。
; 逆に言うと、フックを使わない場合、予期せずホットキーがトリガーされる可能性があります。
; このため、#UseHook を使ったほうが基本的に良いと思います。
#UseHook

; 指定ミリ秒(A_HotkeyInterval )以内に実行できる最大のホットキー数(A_MaxHotkeysPerInterval)
A_HotkeyInterval := 1000
A_MaxHotkeysPerInterval := 100

; #Includeの相対パスの基準を現在のディレクトリに変更します。
#Include %A_ScriptDir%

; IME操作のための外部ライブラリを読み込みます。
#Include vendor\IMEv2.ahk\IMEv2.ahk

; 便利な関数群を読み込みます。
#Include functions\main.ahk

; キーマップの設定をします。
#Include keymap\main.ahk