// time_picker_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimePickerWidget extends HookConsumerWidget {
  const TimePickerWidget({
    required this.onTimeSelected,
    this.initialTime,
    super.key,
  });
  final void Function(TimeOfDay) onTimeSelected;
  final TimeOfDay? initialTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTime = initialTime ?? TimeOfDay.now();

    Future<void> selectTime() async {
      final picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );

      if (picked != null && picked != selectedTime) {
        onTimeSelected(picked);
      }
    }

    return TextButton(
      onPressed: selectTime,
      child: Text(
        _getFormattedTime(selectedTime),
        style: const TextStyle(fontSize: 22, color: AppColors.text),
      ),
    );
  }
}

// hh:mm形式で時刻を返却
String _getFormattedTime(TimeOfDay target) {
  final hour = target.hour.toString().padLeft(2, '0');
  final minute = target.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
