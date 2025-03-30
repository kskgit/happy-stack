import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:flutter_tutorial/features/input_form/common/input_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class EditScreen extends ConsumerWidget {
  const EditScreen({required this.happiness, super.key});
  final Happiness happiness;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InputForm(
      happinessId: happiness.id,
      initialTitle: happiness.name,
      initialSelectedDayOfWeek: happiness.dayOfWeek,
      initialNotificationTime: happiness.notificationTime,
    );
  }
}
