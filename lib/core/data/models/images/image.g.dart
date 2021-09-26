// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TMDBImage _$TMDBImageFromJson(Map<String, dynamic> json) => TMDBImage(
      (json['aspect_ratio'] as num).toDouble(),
      json['file_path'] as String,
      json['height'] as int,
      json['iso_639_1'] as String,
      json['vote_average'] as int,
      json['vote_count'] as int,
      json['width'] as int,
    );

Map<String, dynamic> _$TMDBImageToJson(TMDBImage instance) => <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'file_path': instance.filePath,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'width': instance.width,
    };
