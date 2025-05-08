import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constants/theme.dart';
import 'package:flutter_tutorial/features/input_form/common/day_of_week_toggle_button.dart';
import 'package:flutter_tutorial/features/input_form/common/time_picker.dart';
import 'package:flutter_tutorial/features/input_form/common/title_text_field.dart';
import 'package:flutter_tutorial/features/input_form/edit/delete_button/delete_button.dart';
import 'package:flutter_tutorial/features/input_form/edit/update_button/update_button.dart';
import 'package:flutter_tutorial/features/input_form/registration/registration_button/registration_button.dart';

class InputForm extends StatefulWidget {
  const InputForm({
    this.happinessId,
    this.initialTitle,
    this.initialSelectedDayOfWeek,
    this.initialNotificationTime,
    this.initialEmoji,
    super.key,
  });

  final int? happinessId;
  final String? initialTitle;
  final int? initialSelectedDayOfWeek;
  final TimeOfDay? initialNotificationTime;
  final String? initialEmoji;

  @override
  State<InputForm> createState() {
    return _InputFormState();
  }
}

class _InputFormState extends State<InputForm> {
  late String title;
  late int selectedDayOfWeek;
  late TimeOfDay notificationTime;
  String? emoji;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    title = widget.initialTitle ?? '';
    selectedDayOfWeek = widget.initialSelectedDayOfWeek ?? 0;
    notificationTime = widget.initialNotificationTime ?? TimeOfDay.now();
    emoji = widget.initialEmoji;
  }

  bool isValid() {
    return formKey.currentState?.validate() ?? false;
  }

  @override
  Widget build(BuildContext context) {
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
                  initialEmoji: emoji,
                  onChanged: (value) {
                    setState(() {
                      title = value;
                    });
                  },
                  onEmojiChanged: (value) {
                    setState(() {
                      emoji = value;
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
                  RegistrationButton(
                    title: title,
                    selectedDayOfWeek: selectedDayOfWeek,
                    notificationTime: notificationTime,
                    emoji: emoji,
                    isValid: isValid,
                  )
                else
                  Column(
                    children: [
                      UpdateButton(
                        happinessId: widget.happinessId!,
                        title: title,
                        notificationTime: notificationTime,
                        selectedDayOfWeek: selectedDayOfWeek,
                        emoji: emoji,
                        isValid: isValid,
                      ),
                      const SizedBox(height: 20),
                      DeleteButton(widget.happinessId!),
                    ],
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
