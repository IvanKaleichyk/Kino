part of 'auth_tmdb_bloc.dart';

abstract class AuthTmdbEvent extends Equatable {
  const AuthTmdbEvent();
}

class AuthTmdbEventAuthGetUrl extends AuthTmdbEvent {
  @override
  List<Object?> get props => <Object?>[];
}

class AuthTmdbEventAuthSuccessful extends AuthTmdbEvent {
  @override
  List<Object?> get props => <Object?>[];
}

class AuthTmdbEventAuthFailed extends AuthTmdbEvent {
  @override
  List<Object?> get props => <Object?>[];
}
