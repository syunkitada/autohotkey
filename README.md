# MyKeymap

Windows と macOS の JIS キーボード向けキーマップを管理するリポジトリです。Windows では [AutoHotkey v2](https://www.autohotkey.com/docs/v2/index.htm)、macOS では Karabiner-Elements を使います。

実行設定は `windows/autohotkey/` と `macos/karabiner/` に分けて置き、両OSの比較とキーマップ台帳はルートの `keymap.html` で管理します。

JIS キーボードをベースに、

- Vim ライクなカーソル移動
- ホームポジション中心の操作
- アプリケーション非依存のキーバインド

を実現します。

## キーマップ台帳

Windows と macOS の配列・レイヤー・割り当ては、ルートの [キーマップ比較ページ](keymap.html) で確認できます。詳しい割り当てはこのページを参照してください。

## OS別の設定と使い方

- Windows（AutoHotkey）: [設定と使い方](windows/autohotkey/README.md)
- macOS（Karabiner-Elements）: [設定と使い方](macos/karabiner/README.md)
