import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_tutorial/auth_service.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Microsoft Entra'),
      ),
      body: Center(
        child: authService.isSignedIn
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: authService.signOut,
              child: const Text('Sign Out'),
            ),
          ],
        )
            : ElevatedButton(
          onPressed: () async {await authService.signIn(context);},
          child: const Text('Sign In with Microsoft Entra'),
        ),
      ),
    );
  }
}