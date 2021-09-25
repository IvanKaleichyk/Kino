// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_watchlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostWatchlist _$PostWatchlistFromJson(Map<String, dynamic> json) =>
    PostWatchlist(
      json['media_type'] as String,
      json['media_id'] as int,
    );

Map<String, dynamic> _$PostWatchlistToJson(PostWatchlist instance) =>
    <String, dynamic>{
      'media_type': instance.mediaType,
      'media_id': instance.mediaId,
    };
