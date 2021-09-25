import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "post_watchlist.g.dart";

@immutable
@JsonSerializable()
class PostWatchlist{

  @JsonKey(name: "media_type")
  final String mediaType;
  @JsonKey(name: "media_id")
  final int mediaId;
  @JsonKey(name: "watchlist")
  final bool watchlist = true;

  const PostWatchlist(this.mediaType, this.mediaId);

  factory PostWatchlist.fromJson(Map<String, dynamic> json) =>
      _$PostWatchlistFromJson(json);

  Map<String, dynamic> toJson() => _$PostWatchlistToJson(this);

  @override
  String toString() => "PostWatchlist {mediaType: $mediaType, mediaId: $mediaId, watchlist: $watchlist}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PostWatchlist &&
              runtimeType == other.runtimeType &&
              mediaType == other.mediaType &&
              mediaId == other.mediaId &&
              watchlist == other.watchlist;

  @override
  int get hashCode => mediaType.hashCode ^ mediaId.hashCode ^ watchlist.hashCode;
}