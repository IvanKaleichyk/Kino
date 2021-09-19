import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "company.g.dart";

@immutable
@JsonSerializable()
class Company {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "logo_path")
  final String logoPath;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "origin_country")
  final String originCountry;

  const Company(
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  );

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  String toString() => "Company{id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          logoPath == other.logoPath &&
          name == other.name &&
          originCountry == other.originCountry;

  @override
  int get hashCode =>
      id.hashCode ^ logoPath.hashCode ^ name.hashCode ^ originCountry.hashCode;
}
