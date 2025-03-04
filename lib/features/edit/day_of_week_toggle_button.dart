import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/edit/edit_screen.dart';

class DayOfWeekToggleButton extends StatelessWidget {
  const DayOfWeekToggleButton({
    required this.selectedDays,
    required this.onPressed,
    super.key,
  });
  final List<SelectedDayOfWeek> selectedDays;
  final void Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: selectedDays.map((day) => day.isSelected).toList(),
      onPressed: onPressed,
      constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
      color: AppColors.secondary,
      selectedColor: AppColors.primary,
      borderRadius: BorderRadius.circular(10),
      children: selectedDays
          .map(
            (day) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                day.dayOfWeek.displayValue,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          )
          .toList(),
    );
  }
}
