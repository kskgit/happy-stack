import 'package:freezed_annotation/freezed_annotation.dart';

part 'happiness.freezed.dart';

@freezed
class Happiness with _$Happiness {
  Happiness({
    required this.id,
    required this.name,
    required this.dayOfWeek,
    required this.notificationTime,
    required this.createdAt,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final String dayOfWeek;
  @override
  final String notificationTime;
  @override
  final DateTime createdAt;
}
