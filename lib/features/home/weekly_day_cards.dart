import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/widgets/day_card.dart';

class WeeklyDayCards extends StatelessWidget {
  const WeeklyDayCards({
    required this.ref,
    required this.selectedDay,
    super.key,
  });

  final WidgetRef ref;
  final DayOfWeek selectedDay;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            DayOfWeek.values.length,
            (i) {
              final date = DateTime(now.year, now.month, now.day + i);
              final dayOfWeek = DayOfWeek.values.firstWhere(
                (day) => day.weekdayIndex == (date.weekday),
              );

              return DayCard(
                date: date,
                dayOfWeek: dayOfWeek,
                isSelected: dayOfWeek == selectedDay,
                happyCount: i % 2 == 0 ? i + 1 : null, // TODO: API経由で取得するように変更
              );
            },
          ),
        ),
      ),
    );
  }
}
