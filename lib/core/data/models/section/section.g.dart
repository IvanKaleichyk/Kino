// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      json['page'] as int?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total_results'] as int?,
      json['total_pages'] as int?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      json['poster_path'] as String?,
      json['overview'] as String?,
      json['release_date'] as String?,
      (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['id'] as int?,
      json['original_title'] as String?,
      json['original_language'] as String?,
      json['title'] as String?,
      json['backdrop_path'] as String?,
      (json['popularity'] as num?)?.toDouble(),
      json['vote_count'] as int?,
      (json['vote_average'] as num?)?.toDouble(),
      adult: json['adult'] as bool? ?? false,
      video: json['video'] as bool? ?? false,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'video': instance.video,
      'vote_average': instance.voteAverage,
    };
