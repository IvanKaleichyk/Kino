import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "people_details.g.dart";

@immutable
@JsonSerializable()
class PeopleDetails {
  @JsonKey(name: "birthday")
  final String birthday;
  @JsonKey(name: "known_for_department")
  final String knownForDepartment;
  @JsonKey(name: "deathday")
  final String? deathday;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "also_known_as")
  final List<String> alsoKnownAs;
  @JsonKey(name: "gender")
  final int gender;
  @JsonKey(name: "biography")
  final String biography;
  @JsonKey(name: "popularity")
  final double popularity;
  @JsonKey(name: "place_of_birth")
  final String placeOfBirth;
  @JsonKey(name: "profile_path")
  final String profilePath;
  @JsonKey(name: "adult")
  final bool? adult;
  @JsonKey(name: "imdb_id")
  final String imdbId;
  @JsonKey(name: "homepage")
  final String? homepage;

  const PeopleDetails(
      this.birthday,
      this.knownForDepartment,
      this.deathday,
      this.id,
      this.name,
      this.alsoKnownAs,
      this.gender,
      this.biography,
      this.popularity,
      this.placeOfBirth,
      this.profilePath,
      this.imdbId,
      this.homepage,
      {this.adult});

  @override
  String toString() =>
      "PeopleDetails{birthday: $birthday, knownForDepartment: $knownForDepartment, deathday: $deathday, id: $id, name: $name, alsoKnownAs: $alsoKnownAs, gender: $gender, biography: $biography, popularity: $popularity, placeOfBirth: $placeOfBirth, profilePath: $profilePath, adult: $adult, imdbId: $imdbId, homepage: $homepage}";

  factory PeopleDetails.fromJson(Map<String, dynamic> json) =>
      _$PeopleDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleDetailsToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeopleDetails &&
          runtimeType == other.runtimeType &&
          birthday == other.birthday &&
          knownForDepartment == other.knownForDepartment &&
          deathday == other.deathday &&
          id == other.id &&
          name == other.name &&
          alsoKnownAs == other.alsoKnownAs &&
          gender == other.gender &&
          biography == other.biography &&
          popularity == other.popularity &&
          placeOfBirth == other.placeOfBirth &&
          profilePath == other.profilePath &&
          adult == other.adult &&
          imdbId == other.imdbId &&
          homepage == other.homepage;

  @override
  int get hashCode =>
      birthday.hashCode ^
      knownForDepartment.hashCode ^
      deathday.hashCode ^
      id.hashCode ^
      name.hashCode ^
      alsoKnownAs.hashCode ^
      gender.hashCode ^
      biography.hashCode ^
      popularity.hashCode ^
      placeOfBirth.hashCode ^
      profilePath.hashCode ^
      adult.hashCode ^
      imdbId.hashCode ^
      homepage.hashCode;
}
