import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/common_widgets/primary_button.dart';
import 'package:flutter_tutorial/features/edit/save_button/save_button_controller.dart';
import 'package:flutter_tutorial/routing/app_router.dart';

class SubmitButton extends ConsumerWidget {
  const SubmitButton({
    // todo 値の受け渡しをriverpod経由で検討する
    required this.title,
    required this.selectedDayOfWeek,
    required this.notificationTime,
    required this.isValid,
    super.key,
  });

  final String title;
  final int selectedDayOfWeek;
  final TimeOfDay notificationTime;
  final bool Function() isValid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      saveButtonControllerProvider,
    );
    return PrimaryButton(
      text: '保存',
      isLading: state.isLoading,
      onPressed: () async {
        if (!isValid()) {
          return;
        }
        await ref
            .read(
              saveButtonControllerProvider.notifier,
            )
            .create(
              title,
              selectedDayOfWeek,
              notificationTime,
            );
        if (context.mounted) {
          await context.router.push(const HomeRoute());
        }
      },
    );
  }
}
