import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'time_state.g.dart';

@riverpod
// Riverpodの状態管理では、setterよりもメソッドベースの更新を推奨
// ignore_for_file: use_setters_to_change_properties
class _getHour extends _$TimeState {
  @override
  TimeOfDay build() {
    return TimeOfDay.now();
  }

  void updateTime(TimeOfDay newTime) {
    state = newTime;
  }

  // hh:mm形式で時刻を返却
  String getFormattedTime() {
    final hour = state.hour.toString().padLeft(2, '0');
    final minute = state.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
