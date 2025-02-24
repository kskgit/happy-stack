import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/common_widgets/secondary_button.dart';
import 'package:flutter_tutorial/features/edit/delete_button_controller.dart';

class DeleteButton extends ConsumerWidget {
  const DeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(deleteButtonControllerProvider);
    return SecondaryButton(
      text: '削除',
      isLading: asyncValue.isLoading,
      onPressed: () async {
        await ref
            .read(deleteButtonControllerProvider.notifier)
            .delete(context.router);
      },
    );
  }
}
