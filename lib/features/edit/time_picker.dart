// time_picker_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/edit/time_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimePickerWidget extends HookConsumerWidget {
  const TimePickerWidget({required this.onTimeSelected, super.key});
  final void Function(TimeOfDay) onTimeSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 削除
    final selectedTime = ref.watch(timeStateProvider);

    Future<void> selectTime() async {
      final picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );

      if (picked != null && picked != selectedTime) {
        ref.read(timeStateProvider.notifier).updateTime(picked);
        onTimeSelected(picked);
      }
    }

    return TextButton(
      onPressed: selectTime,
      child: Text(
        ref.read(timeStateProvider.notifier).getFormattedTime(),
        style: const TextStyle(fontSize: 22, color: AppColors.text),
      ),
    );
  }
}
