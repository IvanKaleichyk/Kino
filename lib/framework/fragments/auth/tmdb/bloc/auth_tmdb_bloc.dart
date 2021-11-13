import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kino/framework/fragments/auth/tmdb/auth_tmdb_interactor.dart';
import 'package:kino/framework/fragments/auth/tmdb/navigator/auth_tmdb_navigator.dart';

part 'auth_tmdb_event.dart';
part 'auth_tmdb_state.dart';

class AuthTmdbBloc extends Bloc<AuthTmdbEvent, AuthTmdbState> {
  final AuthTmdbInteractor _interactor;
  final AuthTmdbNavigator navigator;

  AuthTmdbBloc(this._interactor, this.navigator)
      : super(AuthTmdbStateLoadingUrl()) {
    on<AuthTmdbEventAuthGetUrl>(mapAuthTmdbEventAuthGetUrlToState);
    on<AuthTmdbEventAuthFailed>(mapAuthTmdbEventAuthFailedToState);
    on<AuthTmdbEventAuthSuccessful>(mapAuthTmdbEventAuthSuccessfulToState);
    add(AuthTmdbEventAuthGetUrl());
  }

  void mapAuthTmdbEventAuthGetUrlToState(
      AuthTmdbEventAuthGetUrl event, Emitter<AuthTmdbState> emit) async {
    emit(AuthTmdbStateLoadingUrl());
    final String url = await _interactor.getAuthUrl();
    emit(AuthTmdbStateLoadedUrl(url));
  }

  void mapAuthTmdbEventAuthSuccessfulToState(
      AuthTmdbEventAuthSuccessful event, Emitter<AuthTmdbState> emit) async {
    _interactor.createSession();
    navigator.moveToHome();
  }

  void mapAuthTmdbEventAuthFailedToState(
      AuthTmdbEventAuthFailed event, Emitter<AuthTmdbState> emit) {
    emit(AuthTmdbStateRequestDenied());
  }
}
