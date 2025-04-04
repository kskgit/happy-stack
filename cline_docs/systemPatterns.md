# クラスの種類
- Widget
- Controller
  - 非同期処理が発生するウィジェットの状態を管理します。
    - 例）ローディング、エラー、データ取得完了
  - riverpodを利用します
- Domain

# 各ディレクトリ毎の役割
common_widgets
- 特定のscreenに依存しない共通で利用するwidgetを格納するフォルダです

feature
- 機能単位でフォルダを分けています
- 基本的にはscreen毎に1フォルダ用意しています
- 

constants
- 固定値

# ファイルの命名規約
- ウィジェットは`役割_widget名`です
  - 例）primary_button.dart
- その他のクラスには現在命名規約はありません。
  - 例）day_of_week.dart

# 設計指針
- 状態の更新が発生するウィジェットはStateFullWidgetを利用します
- riverpodはriverpod generatorを利用します