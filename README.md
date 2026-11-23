# MyKeymap

Windows と macOS の JIS キーボード向けキーマップを管理するリポジトリです。Windows では [AutoHotkey v2](https://www.autohotkey.com/docs/v2/index.htm)、macOS では [Karabiner-Elements](https://karabiner-elements.pqrs.org/) を使います。

実行設定は `windows/autohotkey/` と `macos/karabiner/` に分けて置き、仮想配列とキーマップ台帳はルートの `keymap.html` で管理します。

JIS キーボードをベースに、

- Vim ライクなカーソル移動
- ホームポジション中心の操作
- アプリケーション非依存のキーマップ

を実現します。

## キーマップの考え方

キーマップを、物理層、データリンク層、プレゼンテーション層、アプリケーション層の4つに分けて考えます。データリンク層では、Spaceを基準にした仮想配列でOSごとのキーの役割を整理します。

### 物理層

JIS 配列の標準的なキーボードを使います。JIS 配列を選ぶのは利用できるキーが多いためです。自作キーボードなど特定の物理配列への依存は、できるだけ避けます。

### データリンク層：仮想配列

Spaceに隣接するキーを左1・右1とし、そこから外側へ順に数えます。「左4から上へ1段／2段」は、左4の位置から物理配列上で上に数えたキー位置です。図の白いキーはJISの物理キーを、色付きキーは仮想配列上の役割も示します。仮想キー名と割り当ては[キーマップページ](keymap.html)を参照してください。

Windows・macOS共通で、JIS配列の `@` キーから `[`、`[` キーから `]`、`]` キーから `@` が入力されるように入れ替えます。

![JISキーボード全体とSpace基準の仮想配列。半角/全角、Tab、CapsLock、Shiftキーは左端を揃え、幅を下の段ほど広げています。SpaceはV・B・Nを並べた幅より少し広く、中央がBの真下に揃います。青いメインカスタム修飾キーは左からSL2、SL1、SR1です。Space左4の上1段にある左Shiftは通常のShift、その上2段のCapsLock／Control位置は単押しTab、macOSでは長押しControlです。記号キーは@から[、[から]、]から@へ入れ替えます。Backspace、Enter、右Shiftの右端を揃えています。](assets/keymap-virtual-layout.svg)

下段のSpaceキーはV・B・Nを並べた幅より少し広くし、中央がBキーの真下に来るように調整しています。

Windows では Change Key でキー配列を設定します。macOS では Karabiner-Elements のルールを使います。各OSでの設定と導入方法は [Windows](windows/autohotkey/README.md) と [macOS](macos/karabiner/README.md) の README を参照してください。

### プレゼンテーション層

データリンク層の仮想配列を基準に、キーの組み合わせごとの動作を割り当てます。割り当ての台帳は [キーマップページ](keymap.html) で管理します。

Windows では AutoHotkey でキー入力を書き換え、共通のキーマップを実装します。アクティブなアプリケーションに応じて動作を調整し、アプリごとの差をそろえることもできます。

macOS では Karabiner-Elements の Complex Modifications ルールでキー入力を変換し、決定済み・候補・無効化の割り当てを実装します。現在の割り当てと詳細は、キーマップページの仮想配列・macOSビューを参照してください。

### アプリケーション層

アプリケーションの標準設定をできるだけ使い、アプリケーション固有のキーマップ設定は最小限にします。

## キーマップ台帳

Windows と macOS の配列・レイヤー・割り当ては、ルートの [キーマップページ](keymap.html) で確認できます。詳しい割り当てはこのページを参照してください。

## OS別の設定と使い方

- Windows（AutoHotkey）: [設定と使い方](windows/autohotkey/README.md)
- macOS（Karabiner-Elements）: [設定と使い方](macos/karabiner/README.md)
