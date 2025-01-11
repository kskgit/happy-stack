// time_picker_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/time_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimePickerWidget extends HookConsumerWidget {
  const TimePickerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTime = ref.watch(timeStateProvider);

    Future<void> selectTime() async {
      final picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );

      if (picked != null && picked != selectedTime) {
        ref.read(timeStateProvider.notifier).updateTime(picked);
      }
    }

    return TextButton(
      onPressed: selectTime,
      child: Text(ref.read(timeStateProvider.notifier).getFormattedTime()),
    );
  }
}
