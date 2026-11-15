# macOS キーマップ案

このディレクトリは、MacBook Pro の JIS キーボード向けのキーマップ案を管理します。Karabiner-Elements の実設定はまだ作成していません。

Windows と macOS の配列は、リポジトリルートの [keymap.html](../../keymap.html) で比較できます。macOS の表示では、通常、かな / Shift、英数 / Right Control、左 Command / LAlt の各レイヤーを確認できます。

## 管理方法

- macOS のキーマップ案は、ルートの `keymap.html` を正として管理します。
- 各キーには出力、説明、状態を記録します。「候補」はMac向けの割り当て案、「要検討」はアプリごとの動作など未確定の割り当て、「決定済み」は合意した割り当てです。「無効」は入力を抑止する組み合わせです。
- Option は変更しません。CapsLock は Right Command、英数は単押しで Esc / 長押しで Right Control、左 Command は LAlt レイヤー、かなは Left Shift として扱います。かな + Space は英数入力、かな + 英数はかな入力へ切り替えます。A の左隣の Control は、単押しで Tab、長押しで Control とします。

## Vim / tmux のプレフィックス

LAlt+U/I/O は `~/home` の設定を基準にします。

| キー | 送るキー | 用途・参照設定 |
| --- | --- | --- |
| LAlt+U | Ctrl+T | under tmux のプレフィックス。`~/home/home/.config/tmux/tmux.conf` が `IS_TTMUXT` のときに `C-t` を使います。 |
| LAlt+I | Ctrl+Z | Neovim のウィンドウ操作プレフィックス。`~/home/home/.config/nvim/rc/keymap.vim` で Ctrl+Z に続く H/J/K/L を Ctrl+W のウィンドウ移動に対応させています。 |
| LAlt+O | Ctrl+B | over tmux のプレフィックス。tmux の標準 `C-b` を使います。 |

`~/home/home/.config/tmux/README.md` では under tmux と over tmux の起動方法および LAlt+U/O の対応を説明しています。Windows AHK はアプリに応じてこれらのプレフィックスを送ります。Mac の候補では出力キーを記録し、アプリ別の条件はKarabiner設定を作る段階で確認します。

## 実設定に移すとき

キーマップ案を確認した後、選んだ割り当てを Karabiner-Elements の `karabiner.json` に反映します。それまでは候補や未確定の動作を、このページ上で区別して管理します。

## 参照元

- Windows の実装: `keymap/rctrl.ahk`、`keymap/lalt.ahk`、`functions/bash.ahk`
- tmux のプレフィックス: `~/home/home/.config/tmux/README.md`、`~/home/home/.config/tmux/tmux.conf`
- Neovim のウィンドウ操作: `~/home/home/.config/nvim/rc/keymap.vim`
- README の Windows キーマップ要約は `keymap/rctrl.ahk` の現行設定と一部差があります。RCtrl+A は全選択、RCtrl+; / RCtrl+: は Home / End として実装されています。
