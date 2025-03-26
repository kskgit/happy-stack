import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/features/edit/edit_screen_controller.dart';
import 'package:flutter_tutorial/features/edit/input_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedDayOfWeek {
  SelectedDayOfWeek({
    required this.dayOfWeek,
  });
  final DayOfWeek dayOfWeek;
  bool isSelected = false;
  Map<String, dynamic> toJson() {
    return {
      'name': dayOfWeek.displayValue,
      'value': isSelected,
    };
  }
}

@RoutePage()
class EditScreen extends ConsumerWidget {
  const EditScreen({@queryParam this.happinessId, super.key});
  final int? happinessId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final happiness = ref.watch(happinessDetailStateProvider(happinessId!));
    return happiness.when(
      loading: CircularProgressIndicator.new,
      error: (error, stackTrace) => Center(child: Text('エラーが発生しました: $error')),
      data: (data) {
        return InputForm(
          happinessId: data.id,
          initialTitle: data.name,
          initialSelectedDayOfWeek: data.dayOfWeek,
          initialNotificationTime: data.notificationTime,
        );
      },
    );
  }
}
