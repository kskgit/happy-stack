import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_tutorial/features/home/domain/happiness.dart';
import 'package:flutter_tutorial/features/home/home_screen.dart';
import 'package:flutter_tutorial/features/input_form/edit/edit_screen.dart';
import 'package:flutter_tutorial/features/input_form/registration/registration_screen.dart';
import 'package:flutter_tutorial/features/login/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: HomeRoute.page, guards: [AuthGuard()], initial: true),
        AutoRoute(
          page: EditRoute.page,
          guards: [AuthGuard()],
        ),
        AutoRoute(page: RegistrationRoute.page, guards: [AuthGuard()]),
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
      Supabase.instance.client.auth.refreshSession().then((_) {
        resolver.next();
      });
      router.push(const LoginRoute());
    }
  }
}
