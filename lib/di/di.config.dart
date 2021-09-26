// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/auth/data/auth_data_source.dart' as _i11;
import '../core/auth/data/client/auth_client.dart' as _i10;
import '../core/data/client/accountClient/account_client.dart' as _i9;
import '../core/data/client/movieClient/movie_client.dart' as _i4;
import '../core/data/client/pageClient/page_client.dart' as _i5;
import '../core/data/client/peopleClient/people_client.dart' as _i7;
import '../core/data/client/searchClient/search_client.dart' as _i8;
import '../core/data/repositories/page_repository.dart' as _i6;
import 'modules/auth_module.dart' as _i13;
import 'modules/client_module.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i7.PeopleClient>(
      clientModule.providePeopleClient(get<_i3.Dio>()));
  gh.singleton<_i8.SearchClient>(
      clientModule.provideSearchClient(get<_i3.Dio>()));
  gh.singleton<_i9.AccountClient>(
      clientModule.provideAccountClient(get<_i3.Dio>()));
  gh.singleton<_i10.AuthClient>(authModule.provideAuthClient(get<_i3.Dio>()));
  gh.singleton<_i11.AuthDataSource>(
      _i11.AuthDataSourceImpl(get<_i10.AuthClient>()));
  return get;
}

class _$ClientModule extends _i12.ClientModule {}

class _$AuthModule extends _i13.AuthModule {}
