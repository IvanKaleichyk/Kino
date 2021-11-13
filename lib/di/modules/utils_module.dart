import 'package:injectable/injectable.dart';
import 'package:kino/navigation/app_route.gr.dart';

@module
abstract class UtilsModule {
  @singleton
  AppRouter provideAppRouter() => AppRouter();
}
