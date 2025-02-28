import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/features/home/day_view_state.dart';

class DayView extends ConsumerWidget {
  const DayView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(dayViewStateProvider).when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) =>
              Center(child: Text('エラーが発生しました: $error')),
          data: (data) => ListView(
            padding: const EdgeInsets.all(16),
            children: [
              EventCard(
                icon: Icons.emoji_emotions,
                text: data.toString(),
                iconBgColor: Colors.orange,
              ),
              const EventCard(
                icon: Icons.coffee,
                text: '朝からハンドドリップでコーヒー淹れる',
                iconBgColor: Colors.brown,
              ),
              const EventCard(
                icon: Icons.favorite,
                text: 'あああああああああああああああああああああああああ・・・',
                iconBgColor: Colors.red,
              ),
            ],
          ),
        );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    required this.icon,
    required this.text,
    required this.iconBgColor,
    super.key,
  });
  final IconData icon;
  final String text;
  final Color iconBgColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconBgColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(text),
      ),
    );
  }
}
