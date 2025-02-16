import 'package:auto_route/auto_route.dart';
import 'package:flutter_tutorial/home/home_screen.dart';
import 'package:flutter_tutorial/login/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
  @override
  RouteType get defaultRouteType => const RouteType.material();
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final session = Supabase.instance.client.auth.currentSession;

    if (session != null && !session.isExpired) {
      resolver.next();
    } else {
      router.push(const LoginRoute());
    }
  }
}
