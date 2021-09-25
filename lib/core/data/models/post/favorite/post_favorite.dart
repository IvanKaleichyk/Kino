import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "post_favorite.g.dart";

@immutable
@JsonSerializable()
class PostFavorite{

  @JsonKey(name: "media_type")
  final String mediaType;
  @JsonKey(name: "media_id")
  final int mediaId;
  @JsonKey(name: "favorite")
  final bool favorite = true;

  const PostFavorite(this.mediaType, this.mediaId);

  factory PostFavorite.fromJson(Map<String, dynamic> json) =>
      _$PostFavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$PostFavoriteToJson(this);

  @override
  String toString() => "PostFavorite {mediaType: $mediaType, mediaId: $mediaId, favorite: $favorite}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostFavorite &&
          runtimeType == other.runtimeType &&
          mediaType == other.mediaType &&
          mediaId == other.mediaId &&
          favorite == other.favorite;

  @override
  int get hashCode => mediaType.hashCode ^ mediaId.hashCode ^ favorite.hashCode;
}