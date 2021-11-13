part of 'auth_tmdb_bloc.dart';

abstract class AuthTmdbState extends Equatable {
  const AuthTmdbState();

  @override
  List<Object> get props => <Object>[];
}

class AuthTmdbStateRequestDenied extends AuthTmdbState {}

class AuthTmdbStateLoadingUrl extends AuthTmdbState {}

class AuthTmdbStateLoadedUrl extends AuthTmdbState {
  final String url;

  const AuthTmdbStateLoadedUrl(this.url);
}
