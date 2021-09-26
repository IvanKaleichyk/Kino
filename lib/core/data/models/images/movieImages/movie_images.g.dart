// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImages _$MovieImagesFromJson(Map<String, dynamic> json) => MovieImages(
      json['id'] as int,
      (json['backdrops'] as List<dynamic>)
          .map((e) => TMDBImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['posters'] as List<dynamic>)
          .map((e) => TMDBImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieImagesToJson(MovieImages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrops': instance.backdrops,
      'posters': instance.posters,
    };
