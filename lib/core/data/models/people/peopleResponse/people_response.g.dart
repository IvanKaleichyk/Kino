// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleResponse _$PeopleResponseFromJson(Map<String, dynamic> json) =>
    PeopleResponse(
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => People.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total_results'] as int,
      json['total_pages'] as int,
    );

Map<String, dynamic> _$PeopleResponseToJson(PeopleResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
