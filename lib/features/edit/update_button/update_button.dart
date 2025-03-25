import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/common_widgets/primary_button.dart';
import 'package:flutter_tutorial/features/edit/save_button/save_button_controller.dart';
import 'package:flutter_tutorial/features/edit/update_button/update_button_controller.dart';

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
      saveButtonControllerProvider,
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
      },
    );
  }
}
