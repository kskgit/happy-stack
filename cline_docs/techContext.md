# 技術コンテキスト

## 使用技術
- **Flutter**: UIフレームワーク
- **Riverpod**: 状態管理ライブラリ
  - riverpod_generator: コード生成を活用
  - riverpod_annotation: アノテーションベースのプロバイダー定義
- **Supabase**: バックエンドサービス
  - 認証
  - データストレージ
- **Auto Route**: ルーティングライブラリ
- **Envied**: 環境変数管理
- **Freezed**: イミュータブルなモデルクラス生成

## 開発環境
- Dart SDK: 3.2.5以降
- Flutter: 最新安定版
- FVM: Flutter Version Managementに使用
  - **重要**: すべてのFlutterコマンドは必ず`fvm flutter`を通して実行すること
    (例: `fvm flutter pub add`, `fvm flutter build`, `fvm flutter run`など)

## 技術的制約
- Supabaseインスタンスは現在、各コントローラーで直接参照されており、テスト困難
- Google認証を使用している
- 環境変数は.envファイルで管理され、Enviedによって処理される
