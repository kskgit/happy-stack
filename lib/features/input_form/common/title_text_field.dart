import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatefulWidget {
  const TitleTextField({
    required this.onChanged,
    required this.onEmojiChanged,
    this.initialValue,
    this.initialEmoji,
    super.key,
  });

  final void Function(String) onChanged;
  final void Function(String) onEmojiChanged;
  final String? initialValue;
  final String? initialEmoji;

  @override
  State<TitleTextField> createState() => _TitleTextFieldState();
}

class _TitleTextFieldState extends State<TitleTextField> {
  late TextEditingController _textEditingController;
  bool _isEmojiPickerVisible = false;
  String? _selectedEmoji;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(text: widget.initialValue);
    _selectedEmoji = widget.initialEmoji;
    _textEditingController.addListener(() {
      widget.onChanged(_textEditingController.text);
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isEmojiPickerVisible = !_isEmojiPickerVisible;
                });
              },
              icon: _selectedEmoji != null && _selectedEmoji!.isNotEmpty
                  ? Text(
                      _selectedEmoji!,
                      style: const TextStyle(fontSize: 24),
                    )
                  : const Icon(Icons.emoji_emotions),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  labelText: 'タイトル',
                  hintText: 'アニメを見る',
                  border: UnderlineInputBorder(),
                ),
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
        ),
        if (_isEmojiPickerVisible)
          SizedBox(
            height: 250,
            child: EmojiPicker(
              onEmojiSelected: (category, emoji) {
                setState(() {
                  _selectedEmoji = emoji.emoji;
                  widget.onEmojiChanged(emoji.emoji);
                  _isEmojiPickerVisible = false;
                });
              },
              config: const Config(
                emojiViewConfig: EmojiViewConfig(
                  emojiSizeMax: 30,
                  columns: 7,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
