import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kino/core/data/models/company/company.dart';
import 'package:kino/core/data/models/genre/genre.dart';
import 'package:kino/core/data/models/language/language.dart';

part 'movie_details.g.dart';

@immutable
@JsonSerializable()
class MovieDetails {
  @JsonKey(name: "adult")
  final bool? adult;
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @JsonKey(name: "budget")
  final int budget;
  @JsonKey(name: "genres")
  final List<Genre> genres;
  @JsonKey(name: "homepage")
  final String homepage;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "imdb_id")
  final String imdbId;
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @JsonKey(name: "original_title")
  final String originalTitle;
  @JsonKey(name: "overview")
  final String overview;
  @JsonKey(name: "popularity")
  final double popularity;
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @JsonKey(name: "production_countries")
  final List<Company> productionCountries;
  @JsonKey(name: "release_date")
  final String releaseDate;
  @JsonKey(name: "revenue")
  final int revenue;
  @JsonKey(name: "runtime")
  final int runtime;
  @JsonKey(name: "spoken_languages")
  final List<SpokenLanguage> spokenLanguages;
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "tagline")
  final String tagline;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "video")
  final bool? video;
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @JsonKey(name: "vote_count")
  final int voteCount;

  const MovieDetails(
    this.backdropPath,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.voteAverage,
    this.voteCount, {
    this.adult,
    this.video,
  });

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsToJson(this);

  @override
  String toString() =>
      "MovieDetails{adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetails &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          budget == other.budget &&
          genres == other.genres &&
          homepage == other.homepage &&
          id == other.id &&
          imdbId == other.imdbId &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          productionCountries == other.productionCountries &&
          releaseDate == other.releaseDate &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          spokenLanguages == other.spokenLanguages &&
          status == other.status &&
          tagline == other.tagline &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      budget.hashCode ^
      genres.hashCode ^
      homepage.hashCode ^
      id.hashCode ^
      imdbId.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      productionCountries.hashCode ^
      releaseDate.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      spokenLanguages.hashCode ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;
}
