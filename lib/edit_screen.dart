import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final List<bool> _selectedDays = List.generate(7, (index) => false);

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
                isSelected: _selectedDays,
                onPressed: (int index) {
                  setState(() {
                    _selectedDays[index] = !_selectedDays[index];
                  });
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
                    '通知',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                '21:00',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
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
