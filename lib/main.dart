import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/edit_screen.dart';

void main() async {
  // await dotenv.load();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final authService = ref.watch(authProvider);
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('トップページ'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: '月'),
              Tab(text: '火'),
              Tab(text: '水'),
              Tab(text: '木'),
              Tab(text: '金'),
              Tab(text: '土'),
              Tab(text: '日'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DayView(),
            DayView(),
            DayView(),
            DayView(),
            DayView(),
            DayView(),
            DayView(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const EditScreen(),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class DayView extends StatelessWidget {
  const DayView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        EventCard(
          icon: Icons.emoji_emotions,
          text: '呪術廻戦',
          iconBgColor: Colors.orange,
        ),
        EventCard(
          icon: Icons.coffee,
          text: '朝からハンドドリップでコーヒー淹れる',
          iconBgColor: Colors.brown,
        ),
        EventCard(
          icon: Icons.favorite,
          text: 'あああああああああああああああああああああああああ・・・',
          iconBgColor: Colors.red,
        ),
      ],
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
