import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kino/core/auth/data/client/auth_client.dart';

@module
abstract class AuthModule{

  @singleton
  AuthClient provideAuthClient(Dio dio) => AuthClient(dio);
}