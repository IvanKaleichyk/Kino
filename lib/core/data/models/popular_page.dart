import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'popular_page.g.dart';

@immutable
@JsonSerializable()
class PopularPage {
  @JsonKey(name: "page")
  final int? page;
  @JsonKey(name: "results")
  final List<PopularMovie>? results;
  @JsonKey(name: "total_results")
  final int? totalResults;
  @JsonKey(name: "total_pages")
  final int? totalPages;

  const PopularPage(this.page, this.results, this.totalResults, this.totalPages);

  factory PopularPage.fromJson(Map<String, dynamic> json) =>
      _$PopularPageFromJson(json);

  Map<String, dynamic> toJson() => _$PopularPageToJson(this);

  @override
  String toString() => 'PopularPage{page: $page, results: $results, totalResults: $totalResults, totalPages: $totalPages}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PopularPage &&
          runtimeType == other.runtimeType &&
          page == other.page &&
          results == other.results &&
          totalResults == other.totalResults &&
          totalPages == other.totalPages;

  @override
  int get hashCode =>
      page.hashCode ^
      results.hashCode ^
      totalResults.hashCode ^
      totalPages.hashCode;
}

@immutable
@JsonSerializable()
class PopularMovie {
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: "adult")
  final bool adult;
  @JsonKey(name: "overview")
  final String? overview;
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @JsonKey(name: "genre_ids")
  final List<int>? genreIds;
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @JsonKey(name: "popularity")
  final double? popularity;
  @JsonKey(name: "vote_count")
  final int? voteCount;
  @JsonKey(name: "video")
  final bool video;
  @JsonKey(name: "vote_average")
  final double? voteAverage;

  const PopularMovie(
      this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.genreIds,
      this.id,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage);

  factory PopularMovie.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMovieToJson(this);

  @override
  String toString() => 'PopularMovie{posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PopularMovie &&
          runtimeType == other.runtimeType &&
          posterPath == other.posterPath &&
          adult == other.adult &&
          overview == other.overview &&
          releaseDate == other.releaseDate &&
          genreIds == other.genreIds &&
          id == other.id &&
          originalTitle == other.originalTitle &&
          originalLanguage == other.originalLanguage &&
          title == other.title &&
          backdropPath == other.backdropPath &&
          popularity == other.popularity &&
          voteCount == other.voteCount &&
          video == other.video &&
          voteAverage == other.voteAverage;

  @override
  int get hashCode =>
      posterPath.hashCode ^
      adult.hashCode ^
      overview.hashCode ^
      releaseDate.hashCode ^
      genreIds.hashCode ^
      id.hashCode ^
      originalTitle.hashCode ^
      originalLanguage.hashCode ^
      title.hashCode ^
      backdropPath.hashCode ^
      popularity.hashCode ^
      voteCount.hashCode ^
      video.hashCode ^
      voteAverage.hashCode;
}
