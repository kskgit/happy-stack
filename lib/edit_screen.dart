import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tutorial/time_picker.dart';
import 'package:flutter_tutorial/time_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditScreen extends HookConsumerWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDays = useState(List.generate(7, (_) => false));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '編集ページ',
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Icon(
                Icons.abc, // ハロウィン風のアイコン
                size: 50,
                color: Colors.orange,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'タイトル',
                  hintText: '呪術廻戦',
                  border: UnderlineInputBorder(),
                ),
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
              ToggleButtons(
                isSelected: selectedDays.value,
                onPressed: (int index) {
                  selectedDays.value = [
                    for (var i = 0; i < selectedDays.value.length; i++)
                      i == index
                          ? !selectedDays.value[i]
                          : selectedDays.value[i],
                  ];
                },
                constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
                color: Colors.grey,
                selectedColor: Colors.teal,
                fillColor: Colors.teal.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
                children: ['月', '火', '水', '木', '金', '土', '日']
                    .map(
                      (day) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(day, style: const TextStyle(fontSize: 16)),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Text(
                    '時間',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const TimePickerWidget(),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  '保存',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  '削除',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 時刻選択を表示する関数
Future<void> _selectTime(BuildContext context, WidgetRef ref) async {
  final picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  ref.read(timeStateProvider.notifier).updateTime(picked!);
}
