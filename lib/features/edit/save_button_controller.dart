import 'package:flutter/material.dart';
import 'package:flutter_tutorial/features/edit/edit_screen.dart';
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
    List<SelectedDayOfWeek> selectedDayOfWeek,
    TimeOfDay notificationTime,
  ) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final supabase = Supabase.instance.client;
      await supabase.from('stocks').insert({
        'name': title,
        'day_of_week': selectedDayOfWeek,
        'notification_time': _timeToString(notificationTime),
      });
    });
  }
}

String _timeToString(TimeOfDay time) {
  return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}
