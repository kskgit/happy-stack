import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/daily_list_state.dart';
import 'package:flutter_tutorial/features/home/event_card.dart';

class DailyList extends ConsumerWidget {
  const DailyList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(dailyListStateProvider).when(
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
