import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "image.g.dart";

@immutable
@JsonSerializable()
class MovieImage {
  @JsonKey(name: "aspect_ratio")
  final double aspectRatio;
  @JsonKey(name: "file_path")
  final String filePath;
  @JsonKey(name: "height")
  final int height;
  @JsonKey(name: "iso_639_1")
  final String iso6391;
  @JsonKey(name: "vote_average")
  final int voteAverage;
  @JsonKey(name: "vote_count")
  final int voteCount;
  @JsonKey(name: "width")
  final int width;

  const MovieImage(this.aspectRatio, this.filePath, this.height, this.iso6391,
      this.voteAverage, this.voteCount, this.width);

  factory MovieImage.fromJson(Map<String, dynamic> json) => _$MovieImageFromJson(json);

  Map<String, dynamic> toJson() => _$MovieImageToJson(this);

  @override
  String toString() =>
      "Image{aspectRatio: $aspectRatio, filePath: $filePath, height: $height, iso6391: $iso6391, voteAverage: $voteAverage, voteCount: $voteCount, width: $width}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieImage &&
          runtimeType == other.runtimeType &&
          aspectRatio == other.aspectRatio &&
          filePath == other.filePath &&
          height == other.height &&
          iso6391 == other.iso6391 &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount &&
          width == other.width;

  @override
  int get hashCode =>
      aspectRatio.hashCode ^
      filePath.hashCode ^
      height.hashCode ^
      iso6391.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode ^
      width.hashCode;
}
