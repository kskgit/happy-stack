import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'save_button_controller.g.dart';

@riverpod
class SaveButtonController extends _$SaveButtonController {
  @override
  AsyncValue<void> build() {
    return const AsyncData(null);
  }

  Future<void> create(
    String title,
    int selectedDayOfWeek,
    TimeOfDay notificationTime,
  ) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = Supabase.instance.client;
      await supabase.from('happiness').insert({
        'name': title,
        'day_of_week': selectedDayOfWeek,
        'notification_time': _timeToString(notificationTime),
      });
    });
  }

  Future<void> update({
    required int happinessId,
    required String title,
    required int selectedDayOfWeek,
    required TimeOfDay notificationTime,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = Supabase.instance.client;
      await supabase.from('happiness').update({
        'name': title,
        'day_of_week': selectedDayOfWeek,
        'notification_time': _timeToString(notificationTime),
      }).eq('id', happinessId);
    });
  }

  String _timeToString(TimeOfDay time) {
    // 改行した方が見づらいため
    // ignore: lines_longer_than_80_chars
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
