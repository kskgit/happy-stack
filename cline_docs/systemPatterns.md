# クラスの種類

##  Widget
### 役割
UIを実装します

### 命名規約
- `役割_widget名`
  - 例）`registration_button.dart`

##  Controller
### 役割
- 非同期処理が発生するウィジェットの状態を管理します。
  - 例）ローディング、エラー、データ取得完了
- riverpodを利用します

### 命名規約
- `{管理対象のウィジェット}_controller`
  - 例）`registration_button_controller.dart`

- Domain

# 各ディレクトリ毎の役割
common_widgets
- 特定のscreenに依存しない共通で利用するwidgetを格納するフォルダです

feature
- 機能単位でフォルダを分けています
- 基本的にはscreen毎に1フォルダ用意しています
- widget,controllerが存在する場合、更にその下にフォルダを作ってまとめて格納します
  - これは可読性向上のためです 

constants
- 固定値


- その他のクラスには現在命名規約はありません。
  - 例）day_of_week.dart

# 設計指針
- 状態の更新が発生するウィジェットはStateFullWidgetを利用します
- riverpodはriverpod generatorを利用します

- theme.dartに色は記述します