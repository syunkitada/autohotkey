autohotkey
==========

autohotkeyスクリプトです。

main.ahkが本体です。

以下のようなショートカット作成して、スタートアップに登録しとく。（パスは適宜変更）

		"C:\Program Files (x86)\AutoHotkey\AutoHotkey.exe" C:\Users\hogehoge\autohotkey\main.ahk

## 推奨キーバインド
以下のキーバインドを想定に作成しています。

		Spaceの左1: RCtrl
		Spaceの左2: LAlt
		Spaceの右1: LShift
		Spaceの右2: 半角・全角
		CapsLock  : Tab

## 使い方
### RCtrl+キー
		移動や削除などの編集コマンドが利用可能です。
		keymap/rctrl.ahk を参照

### RCtrlのみ
		IMEをオフにしてEscを送ります（VIM用）
		また、モード状態を解除します。

### LAlt+キー
		ウィンドウ切り替え、ウィンドウ移動などのコマンドが利用可能です。
		keymap/lalt.ahk を参照

### LAltのみ
		browsingモードに移行します。
		vimみたいなショートカットが利用可能です。
		( v でvisualモードに移行します。)
		operator/operate.ahk を参照

### Shift+Tab
		mouseモードに移行します。
		マウス操作に特化したモードです。
		operator/mouse.ahk を参照

### Windows+キー
		基本的にプログラムランチャです。
		keymap/windows.ahk を参照

