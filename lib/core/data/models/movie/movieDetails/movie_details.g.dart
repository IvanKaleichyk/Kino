// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) => MovieDetails(
      json['backdrop_path'] as String,
      json['budget'] as int,
      (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['homepage'] as String,
      json['id'] as int,
      json['imdb_id'] as String,
      json['original_language'] as String,
      json['original_title'] as String,
      json['overview'] as String,
      (json['popularity'] as num).toDouble(),
      json['poster_path'] as String?,
      (json['production_countries'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['release_date'] as String,
      json['revenue'] as int,
      json['runtime'] as int,
      (json['spoken_languages'] as List<dynamic>)
          .map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
      json['tagline'] as String,
      json['title'] as String,
      (json['vote_average'] as num).toDouble(),
      json['vote_count'] as int,
      adult: json['adult'] as bool?,
      video: json['video'] as bool?,
    );

Map<String, dynamic> _$MovieDetailsToJson(MovieDetails instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_countries': instance.productionCountries,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
