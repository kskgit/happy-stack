import 'package:auto_route/auto_route.dart';
import 'package:flutter_tutorial/login.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
      ];
  @override
  RouteType get defaultRouteType => const RouteType.material();
}
