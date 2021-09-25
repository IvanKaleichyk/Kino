import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "post_response.g.dart";

@immutable
@JsonSerializable()
class PostResponse{

  @JsonKey(name: "status_code")
  final int statusCode;
  @JsonKey(name: "status_message")
  final String statusMessage;

  const PostResponse(this.statusCode, this.statusMessage);

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);

  @override
  String toString() => "PostResponse{statusCode: $statusCode, statusMessage: $statusMessage}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostResponse &&
          runtimeType == other.runtimeType &&
          statusCode == other.statusCode &&
          statusMessage == other.statusMessage;

  @override
  int get hashCode => statusCode.hashCode ^ statusMessage.hashCode;
}