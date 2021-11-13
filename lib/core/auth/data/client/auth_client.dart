import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kino/core/auth/models/session/session_response.dart';
import 'package:kino/core/auth/models/token/token_response.dart';
import 'package:retrofit/http.dart';

part "auth_client.g.dart";

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio) => _AuthClient(dio);

  @GET("/authentication/token/new")
  Future<TokenResponse> createToken();

  @POST("/authentication/session/new")
  Future<SessionResponse> createSession(@Body() CreateSessionBody requestToken);
}

@immutable
@JsonSerializable()
class CreateSessionBody {
  @JsonKey(name: "request_token")
  final String token;

  const CreateSessionBody(this.token);

  factory CreateSessionBody.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSessionBodyToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateSessionBody &&
          runtimeType == other.runtimeType &&
          token == other.token;

  @override
  int get hashCode => token.hashCode;
}
