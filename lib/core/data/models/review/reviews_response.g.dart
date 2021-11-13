// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) =>
    ReviewsResponse(
      json['id'] as int,
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total_pages'] as int,
      json['total_results'] as int,
    );

Map<String, dynamic> _$ReviewsResponseToJson(ReviewsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      json['author'] as String,
      ReviewAuthorDetails.fromJson(
          json['author_details'] as Map<String, dynamic>),
      json['content'] as String,
      json['created_at'] as String,
      json['id'] as String,
      json['updated_at'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'author': instance.author,
      'author_details': instance.authorDetails,
      'content': instance.content,
      'created_at': instance.createdAt,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'url': instance.url,
    };

ReviewAuthorDetails _$ReviewAuthorDetailsFromJson(Map<String, dynamic> json) =>
    ReviewAuthorDetails(
      json['name'] as String,
      json['username'] as String,
      json['avatar_path'] as String,
      json['rating'] as int,
    );

Map<String, dynamic> _$ReviewAuthorDetailsToJson(
        ReviewAuthorDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatar_path': instance.avatarPath,
      'rating': instance.rating,
    };
