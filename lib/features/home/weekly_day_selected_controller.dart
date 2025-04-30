import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_day_selected_controller.g.dart';

@riverpod
class WeeklyDaySelectedControlloer extends _$WeeklyDaySelectedControlloer {
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
