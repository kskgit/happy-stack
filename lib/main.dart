import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
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
        body: TabBarView(
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
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class DayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
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
  final IconData icon;
  final String text;
  final Color iconBgColor;

  EventCard({required this.icon, required this.text, required this.iconBgColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
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


FlutterAppAuth appAuth = const FlutterAppAuth();

auth() async {
  try {
    final AuthorizationTokenResponse? result = await appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        dotenv.get('CLIENT_ID'),
        dotenv.get('REDIRECT_URL'),
        discoveryUrl: dotenv.get('DISCOVERY_URL'),
        scopes: ['openid'],
      ),
    );
    print(result?.accessToken);
  } catch (e) {
    print('Error during authorization: $e');
    throw e;
  }
}