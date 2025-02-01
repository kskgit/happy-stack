import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/time_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EditScreen extends ConsumerStatefulWidget {
  const EditScreen({super.key});

  @override
  ConsumerState<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends ConsumerState<EditScreen> {
  String _titel = '';

  @override
  Widget build(BuildContext context) {
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
              Text(_titel),
              const SizedBox(height: 20),
              const Icon(
                Icons.abc,
                size: 50,
                color: Colors.orange,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'タイトル',
                  hintText: '呪術廻戦',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _titel = value; // 入力値を普通の変数に保持
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
              // ToggleButtons(
              //   isSelected: selectedDays.value,
              //   onPressed: (int index) {
              //     selectedDays.value = [
              //       for (var i = 0; i < selectedDays.value.length; i++)
              //         i == index
              //             ? !selectedDays.value[i]
              //             : selectedDays.value[i],
              //     ];
              //   },
              //   constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
              //   color: Colors.grey,
              //   selectedColor: Colors.teal,
              //   fillColor: Colors.teal.withOpacity(0.2),
              //   borderRadius: BorderRadius.circular(10),
              //   children: ['月', '火', '水', '木', '金', '土', '日']
              //       .map(
              //         (day) => Padding(
              //           padding: const EdgeInsets.symmetric(horizontal: 12),
              //           child: Text(day, style: const TextStyle(fontSize: 16)),
              //         ),
              //       )
              //       .toList(),
              // ),
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
                onPressed: () async {
                  await sendDataToApi(_titel);
                },
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
// Future<void> _selectTime(BuildContext context, WidgetRef ref) async {
//   final picked = await showTimePicker(
//     context: context,
//     initialTime: TimeOfDay.now(),
//   );

//   ref.read(timeStateProvider.notifier).updateTime(picked!);
// }

// APIにデータを送信する関数を追加
Future<void> sendDataToApi(String title) async {
  debugPrint(title);
  final supabase = Supabase.instance.client;
  // supabase.from('stocks')
}
