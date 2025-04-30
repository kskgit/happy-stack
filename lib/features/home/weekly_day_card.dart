import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/weekly_day_selected_controller.dart';

class WeeklyDayCard extends ConsumerWidget {
  const WeeklyDayCard({
    required this.date,
    required this.dayOfWeek,
    required this.isSelected,
    required this.happyCount,
    super.key,
  });

  final DateTime date;
  final DayOfWeek dayOfWeek;
  final bool isSelected;
  final int? happyCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: () {
          ref
              .read(weeklyDaySelectedControlloerProvider.notifier)
              .updateDay(dayOfWeek);
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 80,
          decoration: BoxDecoration(
            color: isSelected ? Colors.purple.shade100 : Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.2),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dayOfWeek.displayValue,
                style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.purple : Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                date.day.toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.purple : Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              if (happyCount != null)
                _HappyCountBadge(
                  count: happyCount!,
                  isSelected: isSelected,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HappyCountBadge extends StatelessWidget {
  const _HappyCountBadge({
    required this.count,
    required this.isSelected,
  });

  final int count;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.circle,
          size: 8,
          color: isSelected ? Colors.purple.shade300 : Colors.grey.shade400,
        ),
        const SizedBox(width: 4),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 10,
            color: isSelected ? Colors.purple.shade700 : Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
