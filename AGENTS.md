# キーマップ管理

## 管理の中心

- ルートの `keymap.html` を、Windows と macOS のキーマップ案を確認・比較する唯一のHTMLページとして管理する。OS別の重複HTMLは作らない。
- `keymap.html` は人が読むキーマップ台帳であり、配列、レイヤー、各キーの動作、比較表の正とする。実行設定はこの台帳から同期する。
- READMEに詳細な割り当て表を新設しない。既存の簡易一覧に変更が及ぶ場合はAHKとHTMLを照合して更新し、詳しいレイヤー表は `keymap.html` へ案内する。

## 実設定との同期

- Windowsの実行時設定は `main.ahk` と `keymap/*.ahk` が担う。Windowsの動作を変更するときは、該当するAHK設定と `keymap.html` のWindows表示を同じ変更で更新する。現行動作の確認ではAHKコードを基準にする。
- macOSの正は `keymap.html` とし、Karabiner-Elementsの配布用ルール `macos/karabiner/assets/complex_modifications/autohotkey-jis.json` と `macos/karabiner/README.md` を同期する。ユーザー設定の `~/.config/karabiner/karabiner.json` は直接編集しない。配布用ルールを新規作成・変更するのは、ユーザーが実設定への移行を依頼した場合に限る。
- WindowsキーはOS標準のショートカット用として残し、Windowsキーを起点にする独自AHKホットキーを追加しない。ユーザーが明示的に方針を変更した場合のみ見直す。
- LAlt+U/I/OのVim・tmuxプレフィックスは、作業前に `~/home/home/.config/tmux/README.md`、`~/home/home/.config/tmux/tmux.conf`、`~/home/home/.config/nvim/rc/keymap.vim` を確認する。説明と比較表も実際のプレフィックスに合わせる。

## `keymap.html` の編集

- キー配列は `WINDOWS_ROWS` と `MACOS_ROWS`、割り当ては各OSの `layers`、比較表は `COMPARISON` で管理する。新しいキーやレイヤーを追加したら、表示用のキーID、レイヤーのエントリー、必要な比較表を揃える。
- キーラベルは物理JIS配列を表す。WindowsではChange Keyによる変換後の入力も説明に記し、物理キー位置と送信キーを混同しない。
- 状態と表示色は共通の意味で使う。
  - `confirmed`: 合意済み、またはレイヤーの起点キー。青。
  - `mapped` / `candidate`: 割り当て済み、またはMac向け候補。緑。
  - `review`: 動作が未確定。黄。
  - `blocked`: 組み合わせを無効化。灰。
  - `modifier`: 通常の修飾キー。専用の強調色は付けない。
  - エントリーがないキー: そのレイヤーに割り当てなし。無色。
- 無効化と未割当を区別する。明示的に無効化するWindowsの組み合わせはAHKで入力を抑止し、HTMLでは `blocked` にする。macOSでは `confirmed`、`candidate`、`blocked` を配布用ルールへ反映し、`review` と未割当はルールにしない。
- 修飾キーは通常表示で過度に強調しない。選択中レイヤーの起点キーのみ、Macと共通の `confirmed` 表示で示す。

## 確認

- 変更後は、Windows / macOSのレイヤー切り替え、キーIDとエントリーの対応、`COMPARISON`の記載、状態と色の対応を確認する。
- AHKの動作変更ではAHK設定とHTML表示が一致することを確認する。Macの設定を変更したときは配布用JSON、READMEの説明、リンクもHTMLと同期する。
