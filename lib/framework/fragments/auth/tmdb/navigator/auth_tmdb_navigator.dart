import 'package:injectable/injectable.dart';
import 'package:kino/navigation/app_route.gr.dart';

abstract class AuthTmdbNavigator {
  void moveToHome();
}

@Injectable(as: AuthTmdbNavigator)
class AuthTmdbNavigatorImpl extends AuthTmdbNavigator {
  final AppRouter router;

  AuthTmdbNavigatorImpl(this.router);

  @override
  void moveToHome() {
    router.navigate(const HomeRoute());
  }
}
