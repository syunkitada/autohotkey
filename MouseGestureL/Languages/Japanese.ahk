;===============================================================================
;
;		MouseGestureL.ahk - Language Definition Module
;			<< 日本語 >>
;														Created by Pyonkichi
;===============================================================================
;-------------------------------------------------------------------------------
; 共通文字列定義
;-------------------------------------------------------------------------------
; ヘルプファイル
MC_HelpFile = Japanese\MouseGestureL_Help.chm

; ボタン
MC_LngButton001 = 閉じる(&C)
MC_LngButton002 = クリップボードへコピー(&O)

; メッセージ
MC_LngMessage001 = サンプルジェスチャーを登録しますか？
MC_LngMessage002 = ヘルプファイルが見つかりません。
MC_LngMessage003 = ヘルプファイルの最新版はこちらからダウンロードできます。
MC_LngMessage004 =
(LTrim
				設定に問題があるようです。
				下記のエラーメッセージから問題箇所を特定し、設定画面より修正を行ってください。
				エラーの原因を特定できない場合は、バックアップより設定ファイルの復旧を行ってください。
				
				----------------------------------------------------------------------`n`n
)

if (MG_IsEdit)
{
	Goto SetEdit
}
;-------------------------------------------------------------------------------
; アプリケーション用文字列定義
;-------------------------------------------------------------------------------
; メニュー
MG_LngMenu001 = ジェスチャー有効(&E)
MG_LngMenu002 = ナビ表示(&G)
MG_LngMenu003 = ジェスチャー設定(&C)...
MG_LngMenu004 = 拡張スクリプト編集(&U)
MG_LngMenu005 = 言語(&L)...
MG_LngMenu006 = ヘルプ(&H)
MG_LngMenu007 = バージョン情報(&A)
MG_LngMenu008 = 再起動(&R)
MG_LngMenu009 = 終了(&X)
MG_LngMenu010 = マウスジェスチャー(&M)
MG_LngMenu011 = プラグイン(&P)
MG_LngMenu012 = プラグインフォルダを開く(&O)

; ツールチップ
MG_LngTooltip001 = ジェスチャー有効
MG_LngTooltip002 = ジェスチャー無効
MG_LngTooltip003 = ナビON
MG_LngTooltip004 = ナビOFF

; その他文字列
MG_LngOthers001 =
(LTrim
				;===============================================================================
				;
				;		MouseGestureL.ahk 拡張スクリプト
				;
				;		・アプリケーション定義のCustom条件や、ジェスチャー実行時に呼び出される
				;		　サブルーチンなどを定義できます。
				;		・設定画面にはないナビの設定項目なども変更できます。
				;		・設定を書き換えた場合はスクリプトをリロードしてください。
				;
				;===============================================================================

)
MG_LngOthers002 = ユーザー定義の初期化処理
MG_LngOthers003 = ユーザー定義サブルーチン
MG_LngOthers004 = ツールチップナビの追加設定例
MG_LngOthers005 = これが表示されます。	`; ジェスチャーが特定の状態になったときに表示される文字列を指定 ("RB_U"の部分を目的のジェスチャー文字列に置き換える)

Goto EndLanguage

;-------------------------------------------------------------------------------
; MG_Edit用文字列定義
;-------------------------------------------------------------------------------
SetEdit:

; トリガ操作
Button_LB	= 左ボタン押し下げ
Button_RB	= 右ボタン押し下げ
Button_MB	= 中央ボタン押し下げ
Button_X1B	= 第4ボタン押し下げ
Button_X2B	= 第5ボタン押し下げ
Button_X3B	= 第6ボタン押し下げ
Button_X4B	= 第7ボタン押し下げ
Button_X5B	= 第8ボタン押し下げ
Button_X6B	= 第9ボタン押し下げ
Button_X7B	= 第10ボタン押し下げ
Button_X8B	= 第11ボタン押し下げ
Button_X9B	= 第12ボタン押し下げ
Button_WU	= ホイール上回転
Button_WD	= ホイール下回転
Button_LT	= 左チルト押し下げ
Button_RT	= 右チルト押し下げ
Button_ET	= 画面上端に接触(全体)
Button_ETA	= 画面上端に接触(左半分)
Button_ETB	= 画面上端に接触(右半分)
Button_ET1	= 画面上端に接触(左1/3)
Button_ET2	= 画面上端に接触(中央1/3)
Button_ET3	= 画面上端に接触(右1/3)
Button_EB	= 画面下端に接触(全体)
Button_EBA	= 画面下端に接触(左半分)
Button_EBB	= 画面下端に接触(右半分)
Button_EB1	= 画面下端に接触(左1/3)
Button_EB2	= 画面下端に接触(中央1/3)
Button_EB3	= 画面下端に接触(右1/3)
Button_EL	= 画面左端に接触(全体)
Button_ELA	= 画面左端に接触(上半分)
Button_ELB	= 画面左端に接触(下半分)
Button_EL1	= 画面左端に接触(上1/3)
Button_EL2	= 画面左端に接触(中央1/3)
Button_EL3	= 画面左端に接触(下1/3)
Button_ER	= 画面右端に接触(全体)
Button_ERA	= 画面右端に接触(上半分)
Button_ERB	= 画面右端に接触(下半分)
Button_ER1	= 画面右端に接触(上1/3)
Button_ER2	= 画面右端に接触(中央1/3)
Button_ER3	= 画面右端に接触(下1/3)
Button_CRT	= 画面右上角に接触
Button_CLT	= 画面左上角に接触
Button_CRB	= 画面右下角に接触
Button_CLB	= 画面左下角に接触

; アクションの種類
ActionType001 = 全て
ActionType002 = 入力エミュレーション
ActionType003 = スクロール
ActionType004 = ウィンドウ制御
ActionType005 = プロセス制御
ActionType006 = アプリケーション制御
ActionType007 = サウンド制御
ActionType008 = スクリプト制御
ActionType009 = ナビ・軌跡
ActionType010 = その他

; アクション名
ActionName001 = キー操作を発生させる
ActionName002 = マウスクリックを発生させる
ActionName003 = ホイール回転を発生させる
ActionName004 = カーソルを移動
ActionName005 = スクロール
ActionName006 = ドラッグスクロール
ActionName007 = ウィンドウをアクティブ化
ActionName008 = ウィンドウを最小化
ActionName009 = ウィンドウを最大化
ActionName010 = ウィンドウを元の状態に戻す
ActionName011 = ウィンドウを閉じる
ActionName012 = ウィンドウを最背面に送る
ActionName013 = ウィンドウを最前面化する
ActionName014 = ウィンドウの最前面化を解除
ActionName015 = ウィンドウの最前面化／解除の切り替え
ActionName016 = ウィンドウの位置とサイズを変更
ActionName017 = ウィンドウの透明度を変更
ActionName018 = ウィンドウの半透明化を解除
ActionName019 = 直前のアクティブウィンドウを復元
ActionName020 = プログラムを起動
ActionName021 = プロセスを強制終了
ActionName022 = ツールバーボタンのコマンドを実行
ActionName023 = メニューバーのコマンドを実行
ActionName024 = ボリューム変更
ActionName025 = 音声のミュート
ActionName026 = サウンドを再生
ActionName027 = ジェスチャーの認識を打ち切る
ActionName028 = 追加ジェスチャーの入力を待つ
ActionName029 = 時間待ち
ActionName030 = 指定時間の経過後に実行
ActionName031 = 指定時間の経過後にボタンを放したら実行
ActionName032 = ボタンを放すまで繰り返す
ActionName033 = ジェスチャーの認識終了後に実行
ActionName034 = ツールチップナビに文字列を表示
ActionName035 = ナビの表示を停止する
ActionName036 = 軌跡の表示を停止する
ActionName037 = クリップボードに文字列をコピー
ActionName038 = PostMessage
ActionName039 = SendMessage

; アクションコメント
ActionComment001 = ジェスチャー入力直後の動作
ActionComment002 = 指定時間経過後の動作
ActionComment003 = ボタンを押している間繰り返す動作
ActionComment004 = ボタンを放したときの動作
ActionComment005 = 指定時間の経過後にボタンを放したときの動作
ActionComment006 = ジェスチャーの認識終了後に実行する動作

; ダイアログBOXのキャプション
ME_LngCapt001 = MouseGestureL
ME_LngCapt002 = MouseGestureL 設定
ME_LngCapt003 = 削除確認
ME_LngCapt004 = 新規ボタン作成
ME_LngCapt005 = スクリプトエディタの指定
ME_LngCapt006 = トリガ操作別の矢印色
ME_LngCapt007 = 矩形領域設定
ME_LngCapt011 = アクションの追加
ME_LngCapt012 = キー入力
ME_LngCapt013 = キーストローク直接編集
ME_LngCapt014 = マウスクリックの設定
ME_LngCapt015 = ホイール回転の設定
ME_LngCapt016 = カーソル移動の設定
ME_LngCapt017 = スクロールの設定
ME_LngCapt018 = ドラッグスクロールの設定
ME_LngCapt019 = ウィンドウ位置とサイズの設定
ME_LngCapt022 = 実行ファイルの指定
ME_LngCapt023 = サウンドファイルの指定
ME_LngCapt024 = 送信メッセージの設定

; タブ
ME_LngTab001 = ターゲット`nジェスチャー`nアクション`n認識設定`nナビ`n軌跡`nその他

; メニュー
ME_LngMenu001 = ウィンドウの部位
ME_LngMenu002 = タイトルバー
ME_LngMenu003 = タイトルバーのアイコン
ME_LngMenu004 = 最小化ボタン
ME_LngMenu005 = 最大化ボタン
ME_LngMenu006 = 閉じるボタン
ME_LngMenu007 = ヘルプボタン
ME_LngMenu008 = メニューバー
ME_LngMenu009 = 縦スクロールバー
ME_LngMenu010 = 横スクロールバー
ME_LngMenu011 = 枠
ME_LngMenu012 = リサイズ可能な枠
ME_LngMenu013 = その他の領域
ME_LngMenu014 = ツリー/リストの項目上
ME_LngMenu015 = マウスカーソル
ME_LngMenu016 = 通常(矢印)
ME_LngMenu017 = 縦線(テキスト欄など)
ME_LngMenu018 = 指(リンクなど)
ME_LngMenu019 = 砂時計
ME_LngMenu020 = 十字
ME_LngMenu021 = 禁止
ME_LngMenu022 = 矢印+砂時計
ME_LngMenu023 = 矢印+疑問符
ME_LngMenu024 = 4方向矢印
ME_LngMenu025 = 上下矢印
ME_LngMenu026 = 左右矢印
ME_LngMenu027 = ＼矢印
ME_LngMenu028 = ／矢印
ME_LngMenu029 = 垂直矢印
ME_LngMenu030 = 上記標準カーソルのどれか
ME_LngMenu031 = 不明(ソフト固有など)
ME_LngMenu032 = ウィンドウ状態
ME_LngMenu033 = 最大化
ME_LngMenu034 = 通常
ME_LngMenu035 = 半透明
ME_LngMenu036 = 不透明
ME_LngMenu037 = 最前面
ME_LngMenu038 = 非最前面
ME_LngMenu039 = キーボード状態
ME_LngMenu040 = Shiftキー押し下げ
ME_LngMenu041 = Shiftキー非押し下げ
ME_LngMenu042 = Ctrlキー押し下げ
ME_LngMenu043 = Ctrlキー非押し下げ
ME_LngMenu044 = Altキー押し下げ
ME_LngMenu045 = Altキー非押し下げ
ME_LngMenu046 = 矩形領域判定
ME_LngMenu047 = ウィンドウ相対座標
ME_LngMenu048 = スクリーン絶対座標
ME_LngMenu049 = 画面端接触認識
ME_LngMenu050 = 新しいボタンを作成
ME_LngMenu051 = 削除

; スタティックテキスト
ME_LngText001 = 名称(&N):
ME_LngText002 = 種別(&T):
ME_LngText003 = 値(&V):
ME_LngText004 = 判定方法:
ME_LngText005 = トリガ操作:
ME_LngText006 = カーソル移動:
ME_LngText007 = 対象(&T):
ME_LngText008 = カテゴリ(&A):
ME_LngText009 = ボタンの名前:
ME_LngText010 = キー文字列:
ME_LngText100 = ジェスチャー認識処理の間隔 (ms):
ME_LngText101 = 通常ストローク:
ME_LngText102 = 4方向モードの「LL」「RR」:
ME_LngText103 = 4方向モードの「UU」「DD」:
ME_LngText104 = 8方向モードの長距離ストローク:
ME_LngText105 = 第1ストローク:
ME_LngText106 = 縦横移動の後:
ME_LngText107 = 斜め移動の後:
ME_LngText108 = ジェスチャーのタイムアウト判定を開始するカーソル移動量:
ME_LngText109 = ボタンを押している間に認識が打ち切られるまでの時間 (ms):
ME_LngText110 = ボタンを放した後に追加ジェスチャーの入力を許容する時間 (ms):
ME_LngText111 = 接触認識処理の間隔 (ms):
ME_LngText112 = コーナーの認識範囲:
ME_LngText113 = 横:
ME_LngText114 = 縦:
ME_LngText200 = ナビの種類:
ME_LngText201 = ナビの表示更新間隔 (ms):
ME_LngText202 = ナビが消えるまでの時間 (ms):
ME_LngText203 = 矢印の色 (RRGGBB):
ME_LngText204 = 背景色 (RRGGBB):
ME_LngText205 = 矢印の透明度 (0～255):
ME_LngText206 = 矢印のサイズ:
ME_LngText207 = 矢印の間隔:
ME_LngText208 = 縁から矢印までの余白:
ME_LngText209 = カーソルからの距離:
ME_LngText210 = 矢印の色:
ME_LngText300 = 文字色1 (RRGGBB):
ME_LngText301 = 文字色2 (RRGGBB):
ME_LngText302 = ウィンドウの背景色 (RRGGBB):
ME_LngText303 = ウィンドウの透明度 (0～255):
ME_LngText304 = 文字のサイズ:
ME_LngText305 = フォント名:
ME_LngText306 = 表示位置:
ME_LngText307 = 左側余白:
ME_LngText308 = 右側余白:
ME_LngText309 = 上側余白:
ME_LngText310 = 下側余白:
ME_LngText311 = ウィンドウの角の丸み:
ME_LngText312 = カーソルからの距離:
ME_LngText313 = 画面端からの距離X:
ME_LngText314 = 画面端からの距離Y:
ME_LngText400 = 軌跡の色 (RRGGBB):
ME_LngText401 = 軌跡の透明度 (0～255):
ME_LngText402 = 軌跡の太さ:
ME_LngText403 = 軌跡の描画を開始するカーソル移動量:
ME_LngText404 = 軌跡の表示更新間隔 (ms):
ME_LngText451 = ジェスチャー有効/無効の切り替え:
ME_LngText452 = ナビON/OFFの切り替え:
ME_LngText453 = ユーザー名:
ME_LngText454 = パスワード:
ME_LngText455 = 高さの制限 (0で無制限):
ME_LngText501 = X座標:
ME_LngText502 = Y座標:
ME_LngText503 = 横幅:
ME_LngText504 = 高さ:
ME_LngText505 = ※横幅と高さは「 0 」でウィンドウ全体の横幅、高さになります。
ME_LngText506 = 対象:
ME_LngText507 = 基準コーナー:
ME_LngText508 = 判定座標:
ME_LngText521 = キーを入力してください:
ME_LngText522 = マウスボタン:
ME_LngText523 = 操作状態:
ME_LngText524 = 入力回数:
ME_LngText525 = 操作状態:
ME_LngText526 = クリック回数:
ME_LngText527 = ホイールの回転量:
ME_LngText528 = X座標:
ME_LngText529 = Y座標:
ME_LngText530 = 基点:
ME_LngText531 = スクロール方向:
ME_LngText532 = スクロール量:
ME_LngText533 = ボタンを押したままカーソルを移動させるとスクロールする機能です。
ME_LngText534 = ※この機能はボタンが押されている状態のジェスチャーへ割り当ててください。
ME_LngText535 = 垂直方向のマウス感度:
ME_LngText536 = 水平方向のマウス感度:
ME_LngText537 = (値が小さいほど高感度)
ME_LngText538 = スクロール方向:
ME_LngText539 = スクロール操作:
ME_LngText541 = ウィンドウの左上座標とサイズを指定してください。
ME_LngText542 = ・ 空白のままにした項目は変更されません。
ME_LngText543 = ・「相対値指定」をチェックすると、現在のウィンドウ位置、および`n　ウィンドウサイズに対する増減値の指定となります。
ME_LngText544 = ・「相対値指定」をチェックして分数を指定すると、現在のウィンドウ`n　位置、およびウィンドウサイズに対する比率指定となります。
ME_LngText545 = ・「相対値指定」のチェックを外して分数を指定すると、デスクトップ`n　のサイズに対する比率指定となります。`n　(横幅と高さを「1/1」にしたい場合は、「 0 」を指定してください)
ME_LngText546 = 左座標:
ME_LngText547 = 上座標:
ME_LngText548 = 横幅:
ME_LngText549 = 高さ:
ME_LngText551 = コマンドライン:
ME_LngText552 = 作業フォルダ:
ME_LngText553 = 実行時の大きさ:
ME_LngText554 = 特権レベル:
ME_LngText555 = ※MouseGestureL.ahkが管理者権限で実行されている場合は、「その他」タブにある`n　 「プログラム起動用のユーザー情報」を設定しておく必要があります。
ME_LngText556 = プログラム (*.exe)
ME_LngText557 = サウンドファイル (*.wav;*.mid)
ME_LngText561 = メッセージ:
ME_LngText562 = wParam:
ME_LngText563 = lParam:

; ボタン
ME_LngButton001 = &OK
ME_LngButton002 = キャンセル(&C)
ME_LngButton003 = ヘルプ(&H)
ME_LngButton004 = クリップボードからインポート(&I)
ME_LngButton005 = +
ME_LngButton006 = -
ME_LngButton007 = C
ME_LngButton008 = ↑
ME_LngButton009 = ↓
ME_LngButton010 = S
ME_LngButton011 = ×
ME_LngButton012 = 変更
ME_LngButton013 = 追加
ME_LngButton014 = 更新
ME_LngButton015 = E
ME_LngButton016 = 入力補助
ME_LngButton017 = トリガ操作の追加
ME_LngButton018 = ボタンをどれか一つ放す
ME_LngButton019 = ジェスチャー末尾の`n１ステップを削除
ME_LngButton020 = スタートアップに登録
ME_LngButton021 = スタートアップから削除
ME_LngButton022 = トリガ操作別の矢印色の設定
ME_LngButton023 = 直接編集
ME_LngButton024 = 特殊キー
ME_LngButton025 = 参照...

; ドロップダウンリスト
ME_LngDropDown001 = どれかに一致`n全てに一致
ME_LngDropDown002 = ウィンドウクラス`nコントロールクラス`n実行ファイル名`nタイトル`nカスタム条件式`n他のターゲットと一致
ME_LngDropDown003 = 完全一致`n部分一致`n前方一致`n後方一致`n正規表現
ME_LngDropDown004 = ツールチップ`n矢印ナビ1`n矢印ナビ2`nアドバンスドナビ`nリアルナビ
ME_LngDropDown005 = カーソル位置`nスクリーン左上`nスクリーン右上`nスクリーン左下`nスクリーン右下
ME_LngDropDown101 = ターゲットウィンドウ内の相対座標`nターゲットコントロール内の相対座標`nスクリーン絶対座標
ME_LngDropDown102 = 左上`n右上`n左下`n右下
ME_LngDropDown103 = ジェスチャー開始座標`nジェスチャー終了座標
ME_LngDropDown201 = 左ボタン`n右ボタン`n中央ボタン`n第4ボタン`n第5ボタン
ME_LngDropDown202 = 通常ストローク`n押し下げ`n押し上げ
ME_LngDropDown203 = クリック`n押し下げ`n押し上げ
ME_LngDropDown204 = ジェスチャー開始座標`n現在のカーソル位置
ME_LngDropDown205 = 上スクロール`n下スクロール`n左スクロール`n右スクロール
ME_LngDropDown206 = カーソルの移動方向へスクロール`nカーソルの移動方向と逆へスクロール
ME_LngDropDown207 = カーソルを移動させた分だけスクロール`nボタンを放すまで自動スクロール
ME_LngDropDown208 = 通常のウィンドウ`n最小化`n最大化`n非表示
ME_LngDropDown209 = ユーザー権限で実行`n管理者権限で実行

; リストビューのカラムタイトル
ME_LngListView001 = 種別`n値
ME_LngListView002 = ターゲット`nアクション
ME_LngListView003 = トリガ操作`n矢印の色

; グループBOX
ME_LngGroupBox001 = 認識処理の基本設定
ME_LngGroupBox002 = ジェスチャーの入力とみなされるカーソル移動量
ME_LngGroupBox003 = 斜め移動の認識範囲(角度)
ME_LngGroupBox004 = タイムアウト
ME_LngGroupBox005 = 画面端接触認識
ME_LngGroupBox006 = 拡張マウスボタンの動作
ME_LngGroupBox007 = 共通設定
ME_LngGroupBox008 = 矢印ナビ
ME_LngGroupBox009 = アドバンスドナビ
ME_LngGroupBox010 = 軌跡
ME_LngGroupBox011 = ホットキー
ME_LngGroupBox012 = スクリプトの編集に使用するエディタ
ME_LngGroupBox013 = スタートアップ
ME_LngGroupBox014 = プログラム起動用のユーザー情報
ME_LngGroupBox015 = その他
ME_LngGroupBox101 = ホイールの回転方向

; チェックBOX
ME_LngCheckBox001 = 不一致
ME_LngCheckBox002 = 8方向モード
ME_LngCheckBox003 = アクティブウィンドウをターゲットにする
ME_LngCheckBox004 = ディスプレイごとに領域を分割する
ME_LngCheckBox005 = 中央ボタンのデフォルト動作を無効化する
ME_LngCheckBox006 = 第4ボタンのデフォルト動作を無効化する
ME_LngCheckBox007 = 第5ボタンのデフォルト動作を無効化する
ME_LngCheckBox008 = 起動時からナビを有効化する
ME_LngCheckBox009 = 背景を透過させる
ME_LngCheckBox010 = トリガボタンの押下時からナビを表示
ME_LngCheckBox011 = ジェスチャーの軌跡を表示する
ME_LngCheckBox012 = 軌跡をオーバーラップウィンドウに描画する
ME_LngCheckBox013 = トレイメニューをサブメニュー化する
ME_LngCheckBox014 = ダイアログBOXの高さをアイテムの登録数に合わせて調節する
ME_LngCheckBox101 = Shift
ME_LngCheckBox102 = Ctrl
ME_LngCheckBox103 = Alt
ME_LngCheckBox110 = 絶対座標
ME_LngCheckBox111 = ページスクロール
ME_LngCheckBox112 = 相対値指定

; ラジオボタン
ME_LngRadioBtn001 = ↑回転
ME_LngRadioBtn002 = ↓回転

; メッセージ
ME_LngMessage001 = 「[#REPLASE#]」
ME_LngMessage002 = 、
ME_LngMessage003 = にはジェスチャー[#REPLASE#]が割り当てられています。`n
ME_LngMessage004 = はターゲット[#REPLASE#]に含まれています。`n
ME_LngMessage005 = `n削除してよろしいですか？
ME_LngMessage006 = このジェスチャーにはアクションが割り当てられています。`n削除してよろしいですか？
ME_LngMessage007 = 既に同じ名前のボタンがあります。
ME_LngMessage008 = スタートアップ時に管理者権限で起動しますか？
ME_LngMessage009 = スタートアップに登録しました。
ME_LngMessage010 = スタートアップから削除しました。
ME_LngMessage101 = アプリケーションのメニューバー内の項目を選択します。`n`n　・メニュー項目は「 , 」区切りで、最大6階層辿った先まで指定できます。`n　・対応できないアプリケーションもあります。`n`n　　【例】編集,コピー`n`nメニューの項目名を指定してください:
ME_LngMessage102 = 起動するプログラムやファイル、URLなどを指定してください。
ME_LngMessage104 = 不透明度を指定してください。`n`n　　0(透明) ～ 255(不透明)
ME_LngMessage105 = 以下の何れかを指定してください。`n`n    0 ～ 100`t: 音量を直接指定`n   +1 ～ +100`t: 音量の増加量を指定`n   -1 ～ -100`t: 音量の減少量を指定
ME_LngMessage106 = 以下の何れかを指定してください。`n`n     1 : ミュートON`n     0 : ミュートOFF`n     + : ミュートON/OFFの切り替え
ME_LngMessage107 = 再生するサウンドファイルのパス名を指定してください。`n`n・OSがサポートしていない形式のサウンドファイルは再生できません。
ME_LngMessage108 = 一度ボタンが放された後、タイムアウトするまでは、次のボタン押し`n下げ操作を同ジェスチャーの続きとして受け付けるようにします。`n`n　・この処理はボタンを放した時のアクションに割り当ててください。`n`n　【例】右ダブルクリック`n　　1. RB__のアクションにこの処理を割り当てる`n　　2. RB__RB__のアクションに右ダブルクリック時の動作を割り当てる`n`nタイムアウト値(ミリ秒)を指定してください:
ME_LngMessage109 = 指定された時間だけスクリプトの実行を停止し、待ち時間が経過`nした後に続きを実行します。`n`n　・時間待ちの間はジェスチャーを受け付けなくなります。`n　　長い時間を待つ場合は「ジェスチャーの認識終了後に実行」`n　　を利用してください。`n`n待ち時間(ミリ秒)を指定してください:
ME_LngMessage110 = ジェスチャーの入力後、指定された時間が経過してから処理を実行します。`n`n　・待ち時間の経過前にジェスチャーの入力状態が変化した場合は、`n　　処理の実行がキャンセルされます。`n　・ボタン押し下げ操作のアクションに割り当てることで、ボタン長押し`n　　時の動作を割り当てられます。`n`n待ち時間(ミリ秒)を指定してください:
ME_LngMessage111 = ジェスチャーの入力後、指定された時間が経過してから`nボタンを放した時点で処理を実行します。`n`n　・この処理はボタンが押されている状態のジェスチャーへ`n　　割り当ててください。`n`n待ち時間(ミリ秒)を指定してください:
ME_LngMessage112 = ボタンが放されるまで、指定間隔で処理を繰り返します。`n`n　・この処理はボタンが押されている状態のジェスチャーへ`n　　割り当ててください。`n`n繰り返し間隔(ミリ秒)を指定してください:
ME_LngMessage113 = ジェスチャーの認識処理が完了した後で処理を実行します。`n`n　・この処理は割り当てアクションの中でメッセージBOXを`n　　表示させるなど、スクリプトの流れが長時間停止する`n　　場合に利用します。`n
ME_LngMessage114 = 指定された文字列をツールチップナビに表示します。`n`n　・この機能はボタンが押されている状態のジェスチャーへ`n　　割り当ててください。`n　・ツールチップナビが無効になっている場合は機能しません。`n　・複数行の文字列を表示する場合は、OKボタンを押して`n　　から(　)内の文字列を編集してください。`n`n表示させる文字列を入力してください:
ME_LngMessage115 = 指定された文字列をクリップボードにセットします。`n`n　・タブは``t、 改行は``nです。`n　・複数行の文字列をコピーする場合は、OKボタンを押して`n　　から(　)内の文字列を編集してください。`n`nコピーする文字列を入力してください:
ME_LngMessage116 = キー操作を表す文字列を入力してください。`n`n　　【書式】　+^!#{キー名}	+ :Shift	　^ :Ctrl`n				! :Alt	　# :Windowsキー`n`n　・単一文字のキーは{ }で囲まなくてもOKです。`n　・単一の大文字はShiftキーとの同時押しと解釈されます。`n　・{キー名 Down}でキーの押し下げのみ、{キー名 Up}で押し上げのみとなります。`n　・マウスのクリックはボタンごとにそれぞれ、{LButton}、{RButton}、{MButton}、`n　　{XButton1}、{XButton2}と記述します。`n　・複数のキーを連続指定することで、連続したキー操作を発生させることができます。

; ツールチップ
ME_LngTooltip001 = 設定をクリップボードへコピーしました。
ME_LngTooltip002 = 設定をインポートしました。
ME_LngTooltip003 = 取得したいウィンドウを右クリック
ME_LngTooltip004 = 対象ボタンを右クリック
ME_LngTooltip005 = ドラッグして領域を選択

; フォント
ME_ArrowFont	:= ""
ME_ArrowSize	:= ""
ME_ArrowAlignUp	:= ""
ME_ArrowAlignDn	:= ""

;-------------------------------------------------------------------------------
EndLanguage:
	MG_Language := RegExReplace(A_LineFile, "m)^.+\\|\.ahk$")

