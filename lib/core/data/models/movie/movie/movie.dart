import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@immutable
@JsonSerializable()
class MovieResponse {
  @JsonKey(name: "page")
  final int page;
  @JsonKey(name: "results")
  final List<Movie> results;
  @JsonKey(name: "total_pages")
  final int totalPages;
  @JsonKey(name: "total_results")
  final int totalResults;

  const MovieResponse(
      this.page, this.results, this.totalPages, this.totalResults);

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);

  @override
  String toString() =>
      "MovieResponse{page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieResponse &&
          runtimeType == other.runtimeType &&
          page == other.page &&
          results == other.results &&
          totalPages == other.totalPages &&
          totalResults == other.totalResults;

  @override
  int get hashCode =>
      page.hashCode ^
      results.hashCode ^
      totalPages.hashCode ^
      totalResults.hashCode;
}

@immutable
@JsonSerializable()
class Movie {

  @JsonKey(name: "adult")
  final bool? adult;
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @JsonKey(name: "genre_ids")
  final List<int> genreIds;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @JsonKey(name: "original_title")
  final String originalTitle;
  @JsonKey(name: "overview")
  final String overview;
  @JsonKey(name: "release_date")
  final String releaseDate;
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @JsonKey(name: "popularity")
  final double popularity;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "video")
  final bool? video;
  @JsonKey(name: "vote_average")
  final int voteAverage;
  @JsonKey(name: "vote_count")
  final int voteCount;

  const Movie(
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.releaseDate,
      this.posterPath,
      this.popularity,
      this.title,
      this.voteAverage,
      this.voteCount,
      {this.adult,
      this.video});

  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  String toString() => "Movie{adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, releaseDate: $releaseDate, posterPath: $posterPath, popularity: $popularity, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          genreIds == other.genreIds &&
          id == other.id &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          releaseDate == other.releaseDate &&
          posterPath == other.posterPath &&
          popularity == other.popularity &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      genreIds.hashCode ^
      id.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      releaseDate.hashCode ^
      posterPath.hashCode ^
      popularity.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;
}
