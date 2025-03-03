import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    required this.onChanged,
    super.key,
  });

  final void Function(String) onChanged;

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
          child: TextField(
            decoration: const InputDecoration(
              labelText: 'タイトル',
              hintText: 'アニメを見る',
              border: UnderlineInputBorder(),
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
