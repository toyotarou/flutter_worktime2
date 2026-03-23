# flutter_worktime2

労働時間を管理・閲覧するための Flutter アプリです（アプリタイトル: **worktime**）。HTTP API 経由でサーバーから勤務データを取得し、年・月単位で勤務時間・会社名・現場名をカレンダー形式で表示します。月次の詳細画面では日ごとの出退勤時刻を確認できます。

---

## 主な機能

- **年月カレンダー表示**: 年ごとに 1〜12 月のグリッドを表示し、月ごとの合計勤務時間・会社名・現場名を一覧確認
- **年ジャンプ**: 上部の年セレクターをタップすると対象年へスムーズスクロール
- **現在月ハイライト**: 今月のセルをオレンジアクセントで強調表示
- **月次詳細**: 勤務記録のある月をタップするとダイアログで日ごとの出退勤時刻一覧を表示
- **HTTP API 連携**: 起動時にサーバーから全期間の勤務サマリーを自動取得

---

## 使用技術

| カテゴリ | ライブラリ |
|---|---|
| UI フレームワーク | Flutter (Material 3 off / ダークテーマ) |
| 状態管理 | hooks_riverpod / flutter_riverpod / riverpod_annotation |
| HTTP 通信 | http |
| 国際化 | intl |
| コード生成 | freezed / freezed_annotation / json_serializable / json_annotation |
| グラフ | fl_chart |
| スクロール制御 | scroll_to_index / scrollable_positioned_list |
| アイコン | font_awesome_flutter |
| スプラッシュ | flutter_native_splash |
| ランチャーアイコン | flutter_launcher_icons |
| Linter | flutter_lints / riverpod_lint |

---

## データモデル

### `WorkTimeSummaryModel`
月次の勤務集計データを保持します（ホーム画面のカレンダー表示に使用）。

| フィールド | 型 | 説明 |
|---|---|---|
| yearmonth | String | 年月（例: `2025-04`） |
| workSum | String | 月合計勤務時間 |
| company | String | 会社名 |
| genba | String | 現場名 |

### `WorkTimeMonthlyModel`
日ごとの出退勤記録を保持します（月次詳細画面に使用）。

| フィールド | 型 | 説明 |
|---|---|---|
| date | String | 日付 |
| workStart | String | 出勤時刻 |
| workEnd | String | 退勤時刻 |

---

## 画面構成

```
HomeScreen（ホーム画面）
│  ※ 年セレクター + 年月グリッド（workSum / company / genba）
│  ※ 月タップ → MonthlyWorktimeScreen をダイアログ表示
├── monthly_worktime_screen.dart   月次詳細（日別出退勤一覧）
└── parts/
    └── worktime_dialog.dart       ダイアログ表示ユーティリティ
```

---

## コントローラー（Riverpod）

| ディレクトリ / ファイル | 役割 |
|---|---|
| controllers/work_time_summary/ | 全期間の月次勤務サマリー取得・管理 |
| controllers/work_time_monthly/ | 月次の日別勤務データ取得・管理 |
| controllers/app_param/ | 選択中の年（selectedYear）などのアプリ状態管理 |
| controllers/controllers_mixin.dart | 各 Notifier / State をまとめる Mixin |

起動時（`initState`）に以下を自動実行します：
```dart
workTimeSummaryNotifier.getAllWorkTimeSummary();
```

---

## ディレクトリ構成

```
lib/
├── controllers/        Riverpod コントローラー
├── data/               データ定数・初期値
├── extensions/         拡張メソッド（yyyymm, toInt 等）
├── model/              データモデル（WorkTimeSummary / WorkTimeMonthly）
├── screens/            UI 画面・コンポーネント
├── utility/            ユーティリティ関数
└── main.dart           エントリーポイント
```

---

## セットアップ

```bash
# 依存パッケージのインストール
flutter pub get

# コード生成（Freezed / Riverpod）
dart run build_runner build --delete-conflicting-outputs

# アプリ起動
flutter run
```

---

## 動作環境

- Flutter: 3.x 以上
- Dart SDK: ^3.7.2
- iOS / Android 対応
