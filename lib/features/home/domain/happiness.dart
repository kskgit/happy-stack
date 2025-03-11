import 'package:freezed_annotation/freezed_annotation.dart';

part 'happiness.freezed.dart';
part 'happiness.g.dart';

@freezed
sealed class Happiness with _$Happiness {
  const factory Happiness({
    required int id,
    required String name,
    required String dayOfWeek,
    required String notificationTime,
    required DateTime createdAt,
  }) = _Happiness;

  factory Happiness.fromJson(Map<String, dynamic> json) =>
      _$HappinessFromJson(json);
}
