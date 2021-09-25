import 'package:dio/dio.dart';
import 'package:kino/core/auth/models/session/session_response.dart';
import 'package:kino/core/auth/models/token/token_response.dart';
import 'package:retrofit/http.dart';

part "auth_client.g.dart";

@RestApi()
abstract class AuthClient{
  factory AuthClient(Dio dio) => _AuthClient(dio);

  @GET("/authentication/token/new")
  Future<TokenResponse> createToken();

  @GET("/authentication/session/new")
  Future<SessionResponse> createSession();
}