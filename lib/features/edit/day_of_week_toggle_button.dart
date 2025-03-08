import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/edit/edit_screen.dart';

class DayOfWeekFormField extends FormField<List<SelectedDayOfWeek>> {
  DayOfWeekFormField({
    required List<SelectedDayOfWeek> selectedDays,
    super.key,
  }) : super(
          initialValue: selectedDays,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => (value?.any((day) => day.isSelected) ?? false)
              ? null
              : '曜日を1つ以上選択してください',
          builder: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DayOfWeekToggleButton(
                selectedDays: state.value!,
                onPressed: (index) {
                  final newSelectedDays =
                      List<SelectedDayOfWeek>.from(state.value!);
                  newSelectedDays[index].isSelected =
                      !newSelectedDays[index].isSelected;
                  state.didChange(newSelectedDays);
                },
              ),
              if (state.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    state.errorText!,
                    style: const TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
            ],
          ),
        );
}

class _DayOfWeekToggleButton extends StatelessWidget {
  const _DayOfWeekToggleButton({
    required this.selectedDays,
    required this.onPressed,
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
