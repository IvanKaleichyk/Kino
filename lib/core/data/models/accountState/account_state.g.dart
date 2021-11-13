// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountState _$AccountStateFromJson(Map<String, dynamic> json) => AccountState(
      json['id'] as int,
      Rated.fromJson(json['rated'] as Map<String, dynamic>),
      favorite: json['favorite'] as bool?,
      watchlist: json['watchlist'] as bool?,
    );

Map<String, dynamic> _$AccountStateToJson(AccountState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'favorite': instance.favorite,
      'rated': instance.rated,
      'watchlist': instance.watchlist,
    };

Rated _$RatedFromJson(Map<String, dynamic> json) => Rated(
      json['value'] as int,
    );

Map<String, dynamic> _$RatedToJson(Rated instance) => <String, dynamic>{
      'value': instance.value,
    };
