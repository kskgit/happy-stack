import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/weekly_day_card.dart';

class WeeklyDayList extends StatelessWidget {
  const WeeklyDayList({
    required this.ref,
    required this.selectedDay,
    super.key,
  });

  final WidgetRef ref;
  final DayOfWeek selectedDay;

  // todo 件数を取得するAPIを追加する
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

              return WeeklyDayCard(
                date: date,
                dayOfWeek: dayOfWeek,
                isSelected: dayOfWeek == selectedDay,
              );
            },
          ),
        ),
      ),
    );
  }
}
