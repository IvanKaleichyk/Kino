import 'package:auto_route/annotations.dart';
import 'package:kino/framework/fragments/auth/tmdb/ui/auth_tmdb_screen.dart';
import 'package:kino/framework/fragments/home/home_screen.dart';
import 'package:kino/framework/fragments/start/start_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute<dynamic>>[
    AutoRoute<HomeScreen>(page: HomeScreen, path: "home"),
    AutoRoute<StartScreen>(page: StartScreen, path: "start", initial: true),
    AutoRoute<AuthScreen>(page: AuthScreen, path: "auth"),
  ],
)
class $AppRouter {}
