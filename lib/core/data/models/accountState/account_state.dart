import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part "account_state.g.dart";

@immutable
@JsonSerializable()
class AccountState {

  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "favorite")
  final bool? favorite;
  @JsonKey(name: "rated")
  final Rated rated;
  @JsonKey(name: "watchlist")
  final bool? watchlist;

  const AccountState(this.id, this.rated, {this.favorite, this.watchlist});

  factory AccountState.fromJson(Map<String, dynamic> json) => _$AccountStateFromJson(json);

  Map<String, dynamic> toJson() => _$AccountStateToJson(this);

  @override
  String toString() =>
      "AccountState{id: $id, favorite: $favorite, rated: $rated, watchlist: $watchlist}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountState &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          favorite == other.favorite &&
          rated == other.rated &&
          watchlist == other.watchlist;

  @override
  int get hashCode =>
      id.hashCode ^ favorite.hashCode ^ rated.hashCode ^ watchlist.hashCode;
}

@immutable
@JsonSerializable()
class Rated {

  @JsonKey(name: "value")
  final int value;

  const Rated(this.value,);

  @override
  String toString() => "Rated{value: $value}";

  factory Rated.fromJson(Map<String, dynamic> json) => _$RatedFromJson(json);

  Map<String, dynamic> toJson() => _$RatedToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rated &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
