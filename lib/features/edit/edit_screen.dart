import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/constants/day_of_week.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/edit/day_of_week_toggle_button.dart';
import 'package:flutter_tutorial/features/edit/delete_button/delete_button.dart';
import 'package:flutter_tutorial/features/edit/edit_screen_controller.dart';
import 'package:flutter_tutorial/features/edit/save_button/save_button.dart';
import 'package:flutter_tutorial/features/edit/time_picker/time_picker.dart';
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
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  final List<SelectedDayOfWeek> _selectedDays =
      DayOfWeek.values.map((day) => SelectedDayOfWeek(dayOfWeek: day)).toList();
  TimeOfDay _notificationTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    late final AsyncValue<Happiness> happiness;

    if (widget.happinessId != null) {
      happiness = ref.watch(happinessDetailStateProvider(widget.happinessId!));
      return happiness.when(
        loading: CircularProgressIndicator.new,
        error: (error, stackTrace) => Center(child: Text('エラーが発生しました: $error')),
        data: (data) {
          _title = data.name;
          return _build();
        },
      );
    } else {
      return _build();
    }
  }

  Scaffold _build() {
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
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TitleTextField(
                  onChanged: (value) {
                    setState(() {
                      _title = value;
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
                  selectedDays: _selectedDays,
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
                  onTimeSelected: (TimeOfDay selectedTime) {
                    setState(() {
                      _notificationTime = selectedTime;
                    });
                  },
                ),
                const SizedBox(height: 50),
                SaveButton(
                  title: _title,
                  selectedDayOfWeek: _selectedDays,
                  notificationTime: _notificationTime,
                  isValid: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      return true;
                    }
                    return false;
                  },
                ),
                const SizedBox(height: 20),
                const DeleteButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
