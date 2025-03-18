import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/constants/theme.dart';

class DayOfWeekFormField extends FormField<int> {
  DayOfWeekFormField({
    required int selectedDays,
    super.key,
  }) : super(
          initialValue: selectedDays,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => (value != null) ? null : '曜日を1つ以上選択してください',
          builder: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DayOfWeekToggleButton(
                selectedDays: state.value!,
                onPressed: (index) {
                  // todo どうなるか分からないため固定値
                  // const newSelectedDays = 1;
                  print(index);
                  state
                      .didChange(selectedDays += DayOfWeek.values[index].value);
                  print(selectedDays);
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
  final int selectedDays;
  final void Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: DayOfWeek.values
          .map((day) => (day.value & selectedDays) != 0)
          .toList(),
      onPressed: onPressed,
      constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
      color: AppColors.secondary,
      selectedColor: AppColors.primary,
      borderRadius: BorderRadius.circular(10),
      children: DayOfWeek.values
          .map(
            (day) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                day.displayValue,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          )
          .toList(),
    );
  }
}
