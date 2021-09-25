import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "session_response.g.dart";

@immutable
@JsonSerializable()
class SessionResponse {
  @JsonKey(name: "success")
  final bool? success;
  @JsonKey(name: "session_id")
  final String sessionId;

  const SessionResponse(this.sessionId, {this.success});

  factory SessionResponse.fromJson(Map<String, dynamic> json) => _$SessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SessionResponseToJson(this);

  @override
  String toString() => "SessionResponse{success: $success, sessionId: $sessionId}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionResponse &&
          runtimeType == other.runtimeType &&
          success == other.success &&
          sessionId == other.sessionId;

  @override
  int get hashCode => success.hashCode ^ sessionId.hashCode;
}
