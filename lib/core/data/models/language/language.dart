import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "language.g.dart";

@immutable
@JsonSerializable()
class SpokenLanguage {
  @JsonKey(name: "iso_639_1")
  final String iso6391;
  @JsonKey(name: "name")
  final String name;

  const SpokenLanguage(
    this.iso6391,
    this.name,
  );

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageToJson(this);

  @override
  String toString() => "SpokenLanguages{iso6391: $iso6391, name: $name}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpokenLanguage &&
          runtimeType == other.runtimeType &&
          iso6391 == other.iso6391 &&
          name == other.name;

  @override
  int get hashCode => iso6391.hashCode ^ name.hashCode;
}
