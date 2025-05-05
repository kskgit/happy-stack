import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/common_widgets/primary_button.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/home/daily_list_state.dart';
import 'package:flutter_tutorial/features/home/weekly_day_card_controller.dart';
import 'package:flutter_tutorial/features/input_form/edit/update_button/update_button_controller.dart';
import 'package:flutter_tutorial/features/input_form/registration/registration_button/registration_button_controller.dart';
import 'package:flutter_tutorial/routing/app_router.dart';

class UpdateButton extends ConsumerWidget {
  const UpdateButton({
    required this.happinessId,
    required this.title,
    required this.notificationTime,
    required this.selectedDayOfWeek,
    required this.isValid,
    super.key,
  });

  final bool Function() isValid;
  final int happinessId;
  final String title;
  final TimeOfDay notificationTime;
  final int selectedDayOfWeek;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      registrationButtonControllerProvider,
    );
    return PrimaryButton(
      text: '更新',
      isLading: state.isLoading,
      onPressed: () async {
        if (!isValid()) {
          return;
        }
        await ref.read(updatButtunoCntrollerProvider.notifier).update(
              happinessId: happinessId,
              title: title,
              selectedDayOfWeek: selectedDayOfWeek,
              notificationTime: notificationTime,
            );
        for (final day in DayOfWeek.values) {
          ref
            ..invalidate(weeklyDayCardControllerProvider(day))
            ..invalidate(dailyListStateProvider(day));
        }
        if (context.mounted) {
          await context.router.push(const HomeRoute());
        }
      },
    );
  }
}
