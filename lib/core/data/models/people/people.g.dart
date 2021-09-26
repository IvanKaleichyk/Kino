// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) => People(
      json['profile_path'] as String,
      json['id'] as int,
      (json['known_for'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String,
      (json['popularity'] as num).toDouble(),
      adult: json['adult'] as bool?,
    );

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'profile_path': instance.profilePath,
      'adult': instance.adult,
      'id': instance.id,
      'known_for': instance.knownFor,
      'name': instance.name,
      'popularity': instance.popularity,
    };
