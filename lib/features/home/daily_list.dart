import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/daily_list_state.dart';
import 'package:flutter_tutorial/features/home/event_card.dart';

class DailyList extends ConsumerWidget {
  const DailyList({
    required this.dayOfWeek,
    super.key,
  });
  final DayOfWeek dayOfWeek;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(dailyListStateProvider(dayOfWeek.value)).when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) =>
              Center(child: Text('エラーが発生しました: $error')),
          data: (happinessList) => ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ...happinessList.map(
                (happiness) => EventCard(
                  happiness: happiness,
                ),
              ),
            ],
          ),
        );
  }
}
