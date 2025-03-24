import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/edit/day_of_week_toggle_button.dart';
import 'package:flutter_tutorial/features/edit/edit_screen_controller.dart';
import 'package:flutter_tutorial/features/edit/save_button/save_button.dart';
import 'package:flutter_tutorial/features/edit/time_picker.dart';
import 'package:flutter_tutorial/features/edit/title_text_field.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
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
class EditScreen extends ConsumerStatefulWidget {
  const EditScreen({@queryParam this.happinessId, super.key});
  final int? happinessId;

  @override
  ConsumerState<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends ConsumerState<EditScreen> {
  String _title = '';
  int _selectedDays = 0;

  TimeOfDay _notificationTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    late final AsyncValue<Happiness> happiness;

    if (widget.happinessId == null) {
      return const InputForm();
    } else {
      happiness = ref.watch(happinessDetailStateProvider(widget.happinessId!));
      return happiness.when(
        loading: CircularProgressIndicator.new,
        error: (error, stackTrace) => Center(child: Text('エラーが発生しました: $error')),
        data: (data) {
          _title = data.name;
          _selectedDays = data.dayOfWeek;
          _notificationTime = data.notificationTime;
          return InputForm(
            initialTitle: _title,
            initialSelectedDayOfWeek: _selectedDays,
            initialNotificationTime: _notificationTime,
          );
        },
      );
    }
  }
}

class InputForm extends StatefulWidget {
  const InputForm({
    this.initialTitle,
    this.initialSelectedDayOfWeek,
    this.initialNotificationTime,
    super.key,
  });

  final String? initialTitle;
  final int? initialSelectedDayOfWeek;
  final TimeOfDay? initialNotificationTime;

  @override
  State<InputForm> createState() {
    return _InputFormState();
  }
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    var title = widget.initialTitle ?? '';
    var selectedDayOfWeek = widget.initialSelectedDayOfWeek ?? 0;
    var notificationTime = widget.initialNotificationTime ?? TimeOfDay.now();
    final formKey = GlobalKey<FormState>();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '登録',
          style: TextStyle(color: AppColors.text),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.text),
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TitleTextField(
                  initialValue: title,
                  onChanged: (value) {
                    setState(() {
                      title = value;
                    });
                  },
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      '曜日',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                DayOfWeekFormField(
                  selectedDays: selectedDayOfWeek,
                  onChanged: (value) {
                    setState(() {
                      selectedDayOfWeek = value;
                    });
                  },
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      '通知時間',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TimePickerWidget(
                  initialTime: notificationTime,
                  onTimeSelected: (TimeOfDay selectedTime) {
                    setState(() {
                      notificationTime = selectedTime;
                    });
                  },
                ),
                const SizedBox(height: 50),
                SubmitButton(
                  title: title,
                  selectedDayOfWeek: selectedDayOfWeek,
                  notificationTime: notificationTime,
                  isValid: () {
                    if (formKey.currentState?.validate() ?? false) {
                      return true;
                    }
                    return false;
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
