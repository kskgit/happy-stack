import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/common_widgets/secondary_button.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/daily_list_state.dart';
import 'package:flutter_tutorial/features/input_form/edit/delete_button/delete_button_controller.dart';
import 'package:flutter_tutorial/routing/app_router.dart';

class DeleteButton extends ConsumerWidget {
  const DeleteButton(
    this.happinessId, {
    super.key,
  });
  final int happinessId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(deleteButtonControllerProvider);
    return SecondaryButton(
      text: '削除',
      isLading: asyncValue.isLoading,
      onPressed: () async {
        await ref
            .read(deleteButtonControllerProvider.notifier)
            .delete(happinessId);
        for (final day in DayOfWeek.values) {
          ref.invalidate(dailyListStateProvider(day));
        }
        if (context.mounted) {
          await context.router.push(const HomeRoute());
        }
      },
    );
  }
}
