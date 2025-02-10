import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/app_router.dart';
import 'package:flutter_tutorial/day_view_state.dart';
import 'package:flutter_tutorial/edit_screen.dart';
import 'package:flutter_tutorial/env/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://psdiicyjdgkrmsyxesxd.supabase.co',
    anonKey: Env.apiKey,
  );

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
