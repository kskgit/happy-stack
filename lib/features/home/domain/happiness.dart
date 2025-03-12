import 'package:freezed_annotation/freezed_annotation.dart';

part 'happiness.freezed.dart';
part 'happiness.g.dart';

@freezed
sealed class Happiness with _$Happiness {
  const factory Happiness({
    required int id,
    required String name,
    @JsonKey(name: 'day_of_week') required String dayOfWeek,
    @JsonKey(name: 'notification_time') required String notificationTime,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Happiness;

  factory Happiness.fromJson(Map<String, dynamic> json) =>
      _$HappinessFromJson(json);
}
