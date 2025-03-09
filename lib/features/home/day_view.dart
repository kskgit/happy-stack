import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/day_view_state.dart';
import 'package:flutter_tutorial/features/home/event_card.dart';

class DayView extends ConsumerWidget {
  const DayView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(dayViewStateProvider).when(
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
