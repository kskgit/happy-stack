import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/common_widgets/primary_button.dart';
import 'package:flutter_tutorial/features/edit/edit_screen.dart';
import 'package:flutter_tutorial/features/edit/save_button_controller.dart';

class SaveButton extends ConsumerWidget {
  const SaveButton({
    // todo 値の受け渡しをriverpod経由で検討する
    required this.title,
    required this.selectedDayOfWeek,
    required this.notificationTime,
    super.key,
  });

  final String title;
  final List<SelectedDayOfWeek> selectedDayOfWeek;
  final TimeOfDay notificationTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      saveButtonControllerProvider,
    );
    return PrimaryButton(
      text: '保存',
      isLading: state.isLoading,
      onPressed: () async {
        await ref
            .read(
              saveButtonControllerProvider.notifier,
            )
            .create(
              title,
              selectedDayOfWeek,
              notificationTime,
              context.router,
            );
      },
    );
  }
}
