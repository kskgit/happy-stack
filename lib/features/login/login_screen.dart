import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/env/env.dart';
import 'package:flutter_tutorial/providers/supabase_provider.dart';
import 'package:flutter_tutorial/routing/app_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Object?> callBackFunction() =>
        context.router.push(const HomeRoute());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ログイン画面'),
            ElevatedButton(
              onPressed: () => _login(ref, callBackFunction),
              child: const Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _login(WidgetRef ref, void Function() callBackFunction) async {
    final iosClientId = Env.clientId;

    final googleSignIn = GoogleSignIn(
      clientId: iosClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    await ref.read(supabaseClientProvider).auth.signInWithIdToken(
          provider: OAuthProvider.google,
          idToken: idToken,
          accessToken: accessToken,
        );
    callBackFunction();
  }
}
