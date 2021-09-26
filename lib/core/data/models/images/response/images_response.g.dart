// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) =>
    ImagesResponse(
      json['id'] as int,
      (json['profiles'] as List<dynamic>)
          .map((e) => TMDBImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImagesResponseToJson(ImagesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profiles': instance.profiles,
    };
