import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/edit/day_of_week_toggle_button.dart';
import 'package:flutter_tutorial/features/edit/save_button/save_button.dart';
import 'package:flutter_tutorial/features/edit/time_picker.dart';
import 'package:flutter_tutorial/features/edit/title_text_field.dart';
import 'package:flutter_tutorial/features/edit/update_button/update_button.dart';

class InputForm extends StatefulWidget {
  const InputForm({
    this.happinessId,
    this.initialTitle,
    this.initialSelectedDayOfWeek,
    this.initialNotificationTime,
    super.key,
  });

  final int? happinessId;
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
    bool isValid() {
      return formKey.currentState?.validate() ?? false;
    }

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
                if (widget.happinessId == null)
                  SaveButton(
                    title: title,
                    selectedDayOfWeek: selectedDayOfWeek,
                    notificationTime: notificationTime,
                    isValid: isValid,
                  )
                else
                  UpdateButton(
                    happinessId: widget.happinessId!,
                    title: title,
                    notificationTime: notificationTime,
                    selectedDayOfWeek: selectedDayOfWeek,
                    isValid: isValid,
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
