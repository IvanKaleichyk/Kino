import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kino/core/data/models/movie/movie/movie.dart';

part "people.g.dart";

@immutable
@JsonSerializable()
class People {
  @JsonKey(name: "profile_path")
  final String profilePath;
  @JsonKey(name: "adult")
  final bool? adult;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "known_for")
  final List<Movie> knownFor;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "popularity")
  final double popularity;

  const People(this.profilePath, this.id, this.knownFor, this.name, this.popularity,
      {this.adult});

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleToJson(this);

  @override
  String toString() =>
      "People{profilePath: $profilePath, adult: $adult, id: $id, knownFor: $knownFor, name: $name, popularity: $popularity}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is People &&
          runtimeType == other.runtimeType &&
          profilePath == other.profilePath &&
          adult == other.adult &&
          id == other.id &&
          knownFor == other.knownFor &&
          name == other.name &&
          popularity == other.popularity;

  @override
  int get hashCode =>
      profilePath.hashCode ^
      adult.hashCode ^
      id.hashCode ^
      knownFor.hashCode ^
      name.hashCode ^
      popularity.hashCode;
}
