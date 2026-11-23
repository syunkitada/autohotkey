# MacBook Pro JIS キーマップ

MacBook Pro の内蔵 JIS キーボード向けに、Karabiner-Elements の Complex Modifications ルールを用意しています。キー割当の正はリポジトリルートの [keymap.html](../../keymap.html) です。実行用ルールは [`autohotkey-jis.json`](assets/complex_modifications/autohotkey-jis.json) にあります。

「決定済み」「候補」「無効化」をルールに反映しています。「要検討」と色のないキーには個別ルールがありません。その場合、英数や左Commandが送る修飾キーの標準動作が適用されます。

## 導入

### 1. Karabiner-Elementsを準備する

インストールされていない場合は、[Karabiner-Elements公式手順](https://karabiner-elements.pqrs.org/docs/getting-started/installation/)に従ってインストールし、macOSが表示するバックグラウンドサービス、アクセシビリティ、入力監視などの許可を設定します。

Karabiner-Elements Settings の Virtual Keyboard で、仮想キーボードの種類を **JIS** にします。記号キーの出力はこの設定に影響されます。

### 2. ルールを配置する

リポジトリのルートで、次を実行します。

```sh
mkdir -p "$HOME/.config/karabiner/assets/complex_modifications"
cp macos/karabiner/assets/complex_modifications/autohotkey-jis.json \
  "$HOME/.config/karabiner/assets/complex_modifications/autohotkey-jis.json"
```

このファイルはKarabinerの読み込み用Complex Modificationsルールです。ユーザー設定の `karabiner.json` は置き換えません。[ファイル形式と配置先](https://karabiner-elements.pqrs.org/docs/json/root-data-structure/)

### 3. ルールを有効にする

Karabiner-Elements Settings を開き、**Complex Modifications** → **Add predefined rule** を選び、**AutoHotkey MacBook Pro JIS** のルールを追加して有効にします。内蔵キーボードのイベントだけに適用し、外付けキーボードには適用しません。

### 4. Terminal.app / iTerm2を使う場合の設定

Terminal.appでSL1 + U / IをBashの単語移動として使うには、利用するプロファイルでOptionをMetaキーとして有効にしてください。

1. Terminal → Settings
2. Profiles → 使用するプロファイル → Keyboard
3. **Use Option as Meta key** を有効にする

iTerm2ではLeft Option Keyを `Esc+` に設定してください。

1. iTerm2 → Settings（⌘ + ,）
2. Profiles → Keys
3. General
4. Left Option Key を `Esc+` に変更

### 5. 動作を確認する

Karabiner-EventViewer を開いて、次を確認します。

- CapsLock が Right Command、英数が単押しで英数入力へ切替後Escape／保持中は Right Control、左Controlが単押しで Tab／保持中は Left Control になる。
- かな（SR1）をShiftとして押しながら Space で英数入力に、英数を単押しするとかな入力に切り替わる。SR1 + ; / : はJIS配列の標準Shift入力を使い、SR1 + SL1 + ; / : は `+` / `*` を入力する。
- 通常のLeft Shiftとの組み合わせでは入力モードを切り替えず、かなキーを押している場合だけ記号レイヤーを使う。
- JISの `@` / `[` / `]` キーは、それぞれ `[` / `]` / `@` を入力する。
- 右Commandと物理Left Optionは通常どおり動作し、左CommandはLeft Option出力でLAltレイヤーとして働く。
- SL2 + [ / ] で `"` / `'` を入力する。
- ChromeでSL2 + A を押すとタブ検索、SL2 + S を押すと履歴ページが開く。
- RCtrl・LAltレイヤーの候補が割当どおりに動き、灰色の組み合わせが入力されない。
- Terminal.app / iTerm2 で英数 + ; / : を押すと、Ctrl+A / Ctrl+E が送られる。
- Terminal.app / iTerm2 で SL1 + U / I を押すと、Option+B / Option+F が送られ、Bashで前後の単語へ移動する。それ以外のアプリではOption+矢印を送る。
- 英数 + N / M で Page Down / Page Up が送られる。

JIS配列では、印字された記号とKarabinerの `key_code` 名が一致しないキーがあります。設定はJIS用のコードで記述しています。キー位置を確認するときは [KarabinerのJISキーコード表](https://karabiner-elements.pqrs.org/docs/help/troubleshooting/symbols-with-non-ansi-keyboard/)とEventViewerを参照してください。

## 割当の要点

- CapsLock は Right Command として動作します。右Commandは変更しません。
- 英数キーは単押しで英数入力に切り替えてからEscapeを送り、保持するとRight Controlになります。かな押下中の英数単押しはかな入力へ切り替えます。英数と左Controlの単押し／長押し判定は200msです。
- 左CommandはLeft Optionを出力するLAltレイヤーです。物理Left Optionはレイヤー判定に使わず、通常のLeft Optionとして残します。
- SL2 + A / S はChrome限定で、タブ検索（⌘+Shift+A）／履歴ページを開く（⌘+Y）を実行します。Chrome以外のアプリには個別ルールを適用しません。
- かな（SR1）はLeft Shiftです。SR1 + Space は英数入力、SR1 + SL1の単押しはかな入力に切り替えます。SR1 + ; / : はJIS配列の標準Shift入力、SR1 + SL1 + ; / : は `+` / `*` を入力します。
- JISの `@` / `[` / `]` キーは、それぞれ `[` / `]` / `@` を入力します。
- Terminal.app / iTerm2 では英数 + ; / : が Ctrl+A / Ctrl+E、それ以外のアプリでは Command + ← / → になります。
- Terminal.app / iTerm2 では SL1 + U / I が Option+B / Option+F、それ以外のアプリでは Option+← / → になります。iTerm2では前述のとおりLeft Option Keyを `Esc+` に設定します。
- 英数 + N / M は Page Down / Page Up を送信します。
- RCtrl・LAltの候補は `keymap.html` に記載されたMac向け出力で実装しています。無効化項目は入力を抑止し、要検討項目は実装していません。

### Vim / tmux のプレフィックス

LAlt+U/I/O は `~/home` の設定に合わせ、Karabinerから Ctrl+T / Ctrl+Z / Ctrl+B を送ります。under tmux は `IS_TTMUXT=true` のとき `tmux.conf` が Ctrl+T をprefixにし、Neovimは `keymap.vim` で Ctrl+Z+h/j/k/l を Ctrl+W のウィンドウ移動に対応させています。over tmux は標準の Ctrl+B を使います。

参照元は `~/home/home/.config/tmux/README.md`、`~/home/home/.config/tmux/tmux.conf`、`~/home/home/.config/nvim/rc/keymap.vim` です。

## 更新・無効化

ルールを更新する場合は、リポジトリのルートで「ルールを配置する」のコマンドを再実行し、Settings の Complex Modifications で既存の AutoHotkey ルールを削除してから、Add predefined rule で追加し直します。

一時的に止める場合は、Complex Modifications でルールを無効にします。完全に外す場合は、Karabinerの画面でルールを削除してから、配置したJSONを削除します。

```sh
rm "$HOME/.config/karabiner/assets/complex_modifications/autohotkey-jis.json"
```

Karabiner-Elementsのインストール自体を削除する場合は、SettingsのUninstallから公式アンインストーラーを実行してください。
