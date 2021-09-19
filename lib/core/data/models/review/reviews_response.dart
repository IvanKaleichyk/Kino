import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "reviews_response.g.dart";

@immutable
@JsonSerializable()
class ReviewsResponse {

  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "page")
  final int page;
  @JsonKey(name: "results")
  final List<Review> results;
  @JsonKey(name: "total_pages")
  final int totalPages;
  @JsonKey(name: "total_results")
  final int totalResults;

  const ReviewsResponse(
      this.id, 
      this.page, 
      this.results, 
      this.totalPages, 
      this.totalResults,);

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewsResponseToJson(this);

  @override
  String toString() => "ReviewsResponse{id: $id, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewsResponse &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          page == other.page &&
          results == other.results &&
          totalPages == other.totalPages &&
          totalResults == other.totalResults;

  @override
  int get hashCode =>
      id.hashCode ^
      page.hashCode ^
      results.hashCode ^
      totalPages.hashCode ^
      totalResults.hashCode;
}

@immutable
@JsonSerializable()
class Review {

  @JsonKey(name: "author")
  final String author;
  @JsonKey(name: "author_details")
  final ReviewAuthorDetails authorDetails;
  @JsonKey(name: "content")
  final String content;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "updated_at")
  final String updatedAt;
  @JsonKey(name: "url")
  final String url;

  const Review(
    this.author,
    this.authorDetails,
    this.content,
    this.createdAt,
    this.id,
    this.updatedAt,
    this.url);

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  @override
  String toString() => "Review{author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Review &&
          runtimeType == other.runtimeType &&
          author == other.author &&
          authorDetails == other.authorDetails &&
          content == other.content &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          url == other.url;

  @override
  int get hashCode =>
      author.hashCode ^
      authorDetails.hashCode ^
      content.hashCode ^
      createdAt.hashCode ^
      id.hashCode ^
      updatedAt.hashCode ^
      url.hashCode;
}

@immutable
@JsonSerializable()
class ReviewAuthorDetails {

  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "username")
  final String username;
  @JsonKey(name: "avatar_path")
  final String avatarPath;
  @JsonKey(name: "rating")
  final int rating;

  const ReviewAuthorDetails(
    this.name,
    this.username,
    this.avatarPath,
    this.rating);

  factory ReviewAuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$ReviewAuthorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewAuthorDetailsToJson(this);

  @override
  String toString() => "ReviewAuthorDetails{name: $name, username: $username, avatarPath: $avatarPath, rating: $rating}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewAuthorDetails &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          username == other.username &&
          avatarPath == other.avatarPath &&
          rating == other.rating;

  @override
  int get hashCode =>
      name.hashCode ^ username.hashCode ^ avatarPath.hashCode ^ rating.hashCode;
}