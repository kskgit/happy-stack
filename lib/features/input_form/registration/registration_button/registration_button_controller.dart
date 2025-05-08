import 'package:flutter/material.dart';
import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'registration_button_controller.g.dart';

@riverpod
class RegistrationButtonController extends _$RegistrationButtonController {
  @override
  AsyncValue<void> build() {
    return const AsyncData(null);
  }

  Future<void> create(
    String title,
    int selectedDayOfWeek,
    TimeOfDay notificationTime,
    String? emoji,
  ) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = ref.read(supabaseClientProvider);
      await supabase.from('happiness').insert({
        'name': title,
        'day_of_week': selectedDayOfWeek,
        'notification_time': _timeToString(notificationTime),
        'emoji': emoji,
      });
    });
  }

  String _timeToString(TimeOfDay time) {
    // 改行した方が見づらいため
    // ignore: lines_longer_than_80_chars
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
