import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../image.dart';

part "images_response.g.dart";

@immutable
@JsonSerializable()
class ImagesResponse {

  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "profiles")
  final List<TMDBImage> profiles;

  const ImagesResponse(
    this.id,
    this.profiles);

  factory ImagesResponse.fromJson(Map<String, dynamic> json) => _$ImagesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesResponseToJson(this);

  @override
  String toString() => "ImagesResponse{id: $id, profiles: $profiles}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImagesResponse &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          profiles == other.profiles;

  @override
  int get hashCode => id.hashCode ^ profiles.hashCode;
}