import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/main.dart';

final authProvider = ChangeNotifierProvider<AuthService>((ref) => AuthService());

class AuthService with ChangeNotifier {
  FlutterAppAuth appAuth = const FlutterAppAuth();
  AuthorizationTokenResponse? authResult;

  Future<void> signIn(BuildContext context) async {
    try {
      authResult = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          dotenv.get('CLIENT_ID'),
          dotenv.get('REDIRECT_URL'),
          discoveryUrl: dotenv.get('DISCOVERY_URL'),
          scopes: ['openid'],
        ),
      );
      if (!context.mounted) return;
      // to-do 処理結果をセキュアなストレージに格納
      await Navigator.push(
        context, 
        MaterialPageRoute<HomePage>(builder: (context) => const HomePage()),);
    } catch (e) {
      print('Error during authorization: $e');
      rethrow;
    }
  }

  Future<void> signOut() async {
    // to-do ログアウト処理実装
  }
  bool get isSignedIn => authResult != null;
}