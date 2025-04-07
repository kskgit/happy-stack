import 'package:flutter/material.dart';
import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_button_controller.g.dart';

@riverpod
class UpdatButtunoCntroller extends _$UpdatButtunoCntroller {
  @override
  AsyncValue<void> build() {
    return const AsyncData(null);
  }

  Future<void> update({
    required int happinessId,
    required String title,
    required int selectedDayOfWeek,
    required TimeOfDay notificationTime,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = ref.read(supabaseClientProvider);
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
