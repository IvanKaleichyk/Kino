import 'package:injectable/injectable.dart';
import 'package:kino/navigation/app_route.gr.dart';

abstract class StartNavigator {
  void moveToAuthentication();
}

@Injectable(as: StartNavigator)
class StartNavigatorImpl extends StartNavigator {
  final AppRouter router;

  StartNavigatorImpl(this.router);

  @override
  void moveToAuthentication() {
    router.navigate(const AuthRoute());
  }
}
