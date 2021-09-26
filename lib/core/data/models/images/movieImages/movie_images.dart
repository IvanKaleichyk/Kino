import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../image.dart';

part "movie_images.g.dart";

@immutable
@JsonSerializable()
class MovieImages {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "backdrops")
  final List<TMDBImage> backdrops;
  @JsonKey(name: "posters")
  final List<TMDBImage> posters;

  const MovieImages(this.id, this.backdrops, this.posters);

  factory MovieImages.fromJson(Map<String, dynamic> json) => _$MovieImagesFromJson(json);

  Map<String, dynamic> toJson() => _$MovieImagesToJson(this);

  @override
  String toString() => "MovieImages{id: $id, backdrops: $backdrops, posters: $posters}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieImages &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          backdrops == other.backdrops &&
          posters == other.posters;

  @override
  int get hashCode => id.hashCode ^ backdrops.hashCode ^ posters.hashCode;
}
