import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    required this.onChanged,
    this.initialValue,
    super.key,
  });

  final void Function(String) onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.lightbulb,
          size: 50,
          color: Colors.orange,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            initialValue: initialValue,
            decoration: const InputDecoration(
              labelText: 'タイトル',
              hintText: 'アニメを見る',
              border: UnderlineInputBorder(),
            ),
            onChanged: onChanged,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'タイトルを入力してください';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}
