// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostFavorite _$PostFavoriteFromJson(Map<String, dynamic> json) => PostFavorite(
      json['media_type'] as String,
      json['media_id'] as int,
    );

Map<String, dynamic> _$PostFavoriteToJson(PostFavorite instance) =>
    <String, dynamic>{
      'media_type': instance.mediaType,
      'media_id': instance.mediaId,
    };
