import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_day_provider.g.dart';

@riverpod
class SelectedDay extends _$SelectedDay {
  @override
  DayOfWeek build() {
    final now = DateTime.now();
    return DayOfWeek.values.firstWhere(
      (day) => day.weekdayIndex == (now.weekday),
    );
  }

  void updateDay(DayOfWeek newDay) {
    state = newDay;
  }
}
