// 自動生成結果が問題ないため
// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'happiness.freezed.dart';
part 'happiness.g.dart';

TimeOfDay _timeFromJson(String time) {
  final parts = time.split(':');
  return TimeOfDay(
    hour: int.parse(parts[0]),
    minute: int.parse(parts[1].split(':')[0]),
  );
}

String _timeToJson(TimeOfDay time) {
  return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}

@freezed
sealed class Happiness with _$Happiness {
  const factory Happiness({
    required int id,
    required String name,
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    @JsonKey(
      name: 'notification_time',
      fromJson: _timeFromJson,
      toJson: _timeToJson,
    )
    required TimeOfDay notificationTime,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Happiness;

  factory Happiness.fromJson(Map<String, dynamic> json) =>
      _$HappinessFromJson(json);
}
