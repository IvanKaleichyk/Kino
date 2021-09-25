import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "token_response.g.dart";

@immutable
@JsonSerializable()
class TokenResponse {
  @JsonKey(name: "success")
  final bool? success;
  @JsonKey(name: "expires_at")
  final String expiresAt;
  @JsonKey(name: "request_token")
  final String token;

  const TokenResponse(
    this.expiresAt,
    this.token, {this.success});

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);

  @override
  String toString() => "TokenResponse{success: $success, expiresAt: $expiresAt, token: $token}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenResponse &&
          runtimeType == other.runtimeType &&
          success == other.success &&
          expiresAt == other.expiresAt &&
          token == other.token;

  @override
  int get hashCode => success.hashCode ^ expiresAt.hashCode ^ token.hashCode;
}