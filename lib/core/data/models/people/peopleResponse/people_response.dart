import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../people.dart';

part "people_response.g.dart";

@immutable
@JsonSerializable()
class PeopleResponse {
  @JsonKey(name: "page")
  final int page;
  @JsonKey(name: "results")
  final List<People> results;
  @JsonKey(name: "total_results")
  final int totalResults;
  @JsonKey(name: "total_pages")
  final int totalPages;

  const PeopleResponse(
      this.page, this.results, this.totalResults, this.totalPages);

  factory PeopleResponse.fromJson(Map<String, dynamic> json) => _$PeopleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleResponseToJson(this);

  @override
  String toString() => "PeopleResponse{page: $page, results: $results, totalResults: $totalResults, totalPages: $totalPages}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeopleResponse &&
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
