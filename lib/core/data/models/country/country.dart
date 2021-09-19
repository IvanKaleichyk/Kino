import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "country.g.dart";

@immutable
@JsonSerializable()
class ProductionCountry {

  @JsonKey(name: "iso_3166_1")
  final String iso31661;

  @JsonKey(name: "name")
  final String name;

  const ProductionCountry(
    this.iso31661,
    this.name,
  );

  factory ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryToJson(this);

  @override
  String toString() => "ProductionCountry{iso31661: $iso31661, name: $name}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountry &&
          runtimeType == other.runtimeType &&
          iso31661 == other.iso31661 &&
          name == other.name;

  @override
  int get hashCode => iso31661.hashCode ^ name.hashCode;
}
