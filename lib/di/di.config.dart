// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/auth/data/auth_data_source.dart' as _i8;
import '../core/auth/data/client/auth_client.dart' as _i7;
import '../core/data/client/movieClient/movie_client.dart' as _i4;
import '../core/data/client/pageClient/page_client.dart' as _i5;
import '../core/data/repositories/page_repository.dart' as _i6;
import 'modules/auth_module.dart' as _i10;
import 'modules/client_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final clientModule = _$ClientModule();
  final authModule = _$AuthModule();
  gh.singleton<_i3.LogInterceptor>(clientModule.provideLogInterceptor());
  gh.singleton<_i3.Dio>(
      clientModule.provideDioVersion3(get<_i3.LogInterceptor>()));
  gh.singleton<_i4.MovieClient>(
      clientModule.provideMovieClient(get<_i3.Dio>()));
  gh.singleton<_i5.PageClient>(clientModule.providePageClient(get<_i3.Dio>()));
  gh.singleton<_i6.PageRepository>(
      _i6.PageRepositoryImpl(get<_i5.PageClient>()));
  gh.singleton<_i7.AuthClient>(authModule.provideAuthClient(get<_i3.Dio>()));
  gh.singleton<_i8.AuthDataSource>(
      _i8.AuthDataSourceImpl(get<_i7.AuthClient>()));
  return get;
}

class _$ClientModule extends _i9.ClientModule {}

class _$AuthModule extends _i10.AuthModule {}
