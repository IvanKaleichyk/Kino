import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "account_details.g.dart";

@immutable
@JsonSerializable()
class AccountDetails {
  @JsonKey(name: "avatar")
  final Avatar avatar;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "iso_639_1")
  final String iso6391;
  @JsonKey(name: "iso_3166_1")
  final String iso31661;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "include_adult")
  final bool? includeAdult;
  @JsonKey(name: "username")
  final String username;

  const AccountDetails(this.avatar, this.id, this.iso6391, this.iso31661,
      this.name, this.username,
      {this.includeAdult});

  factory AccountDetails.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDetailsToJson(this);

  @override
  String toString() =>
      "AccountDetails{avatar: $avatar, id: $id, iso6391: $iso6391, iso31661: $iso31661, name: $name, includeAdult: $includeAdult, username: $username}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountDetails &&
          runtimeType == other.runtimeType &&
          avatar == other.avatar &&
          id == other.id &&
          iso6391 == other.iso6391 &&
          iso31661 == other.iso31661 &&
          name == other.name &&
          includeAdult == other.includeAdult &&
          username == other.username;

  @override
  int get hashCode =>
      avatar.hashCode ^
      id.hashCode ^
      iso6391.hashCode ^
      iso31661.hashCode ^
      name.hashCode ^
      includeAdult.hashCode ^
      username.hashCode;
}

@immutable
@JsonSerializable()
class Avatar {
  @JsonKey(name: "gravatar")
  final Gravatar gravatar;

  const Avatar(this.gravatar);

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarToJson(this);

  @override
  String toString() => "Avatar{gravatar: $gravatar}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Avatar &&
          runtimeType == other.runtimeType &&
          gravatar == other.gravatar;

  @override
  int get hashCode => gravatar.hashCode;
}

@immutable
@JsonSerializable()
class Gravatar {
  @JsonKey(name: "hash")
  final String hash;

  const Gravatar(this.hash);

  factory Gravatar.fromJson(Map<String, dynamic> json) =>
      _$GravatarFromJson(json);

  Map<String, dynamic> toJson() => _$GravatarToJson(this);

  @override
  String toString() => "Gravatar{hash: $hash}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Gravatar &&
          runtimeType == other.runtimeType &&
          hash == other.hash;

  @override
  int get hashCode => hash.hashCode;
}
