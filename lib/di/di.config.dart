// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/auth/data/auth_repository.dart' as _i14;
import '../core/auth/data/client/auth_client.dart' as _i13;
import '../core/data/client/accountClient/account_client.dart' as _i12;
import '../core/data/client/movieClient/movie_client.dart' as _i7;
import '../core/data/client/pageClient/page_client.dart' as _i8;
import '../core/data/client/peopleClient/people_client.dart' as _i10;
import '../core/data/client/searchClient/search_client.dart' as _i11;
import '../core/data/repositories/page_repository.dart' as _i9;
import '../framework/fragments/auth/tmdb/auth_tmdb_interactor.dart' as _i15;
import '../framework/fragments/auth/tmdb/navigator/auth_tmdb_navigator.dart'
    as _i4;
import '../framework/fragments/start/navigator/start_navigator.dart' as _i6;
import '../navigation/app_route.gr.dart' as _i3;
import 'modules/auth_module.dart' as _i18;
import 'modules/client_module.dart' as _i17;
import 'modules/utils_module.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final utilsModule = _$UtilsModule();
  final clientModule = _$ClientModule();
  final authModule = _$AuthModule();
  gh.singleton<_i3.AppRouter>(utilsModule.provideAppRouter());
  gh.factory<_i4.AuthTmdbNavigator>(
      () => _i4.AuthTmdbNavigatorImpl(get<_i3.AppRouter>()));
  gh.singleton<_i5.LogInterceptor>(clientModule.provideLogInterceptor());
  gh.factory<_i6.StartNavigator>(
      () => _i6.StartNavigatorImpl(get<_i3.AppRouter>()));
  gh.singleton<_i5.Dio>(
      clientModule.provideDioVersion3(get<_i5.LogInterceptor>()));
  gh.singleton<_i7.MovieClient>(
      clientModule.provideMovieClient(get<_i5.Dio>()));
  gh.singleton<_i8.PageClient>(clientModule.providePageClient(get<_i5.Dio>()));
  gh.singleton<_i9.PageRepository>(
      _i9.PageRepositoryImpl(get<_i8.PageClient>()));
  gh.singleton<_i10.PeopleClient>(
      clientModule.providePeopleClient(get<_i5.Dio>()));
  gh.singleton<_i11.SearchClient>(
      clientModule.provideSearchClient(get<_i5.Dio>()));
  gh.singleton<_i12.AccountClient>(
      clientModule.provideAccountClient(get<_i5.Dio>()));
  gh.singleton<_i13.AuthClient>(authModule.provideAuthClient(get<_i5.Dio>()));
  gh.singleton<_i14.AuthRepository>(
      _i14.AuthRepositoryImpl(get<_i13.AuthClient>()));
  gh.singleton<_i15.AuthTmdbInteractor>(
      _i15.AuthTmdbInteractor(get<_i14.AuthRepository>()));
  return get;
}

class _$UtilsModule extends _i16.UtilsModule {}

class _$ClientModule extends _i17.ClientModule {}

class _$AuthModule extends _i18.AuthModule {}
