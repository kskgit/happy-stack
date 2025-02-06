import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('ログイン画面'),
            ElevatedButton(onPressed: _login, child: const Text('ログイン')),
          ],
        ),
      ),
    );
  }

  void _login() {
    debugPrint('ログイン');
  }
}
