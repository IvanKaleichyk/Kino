import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kino/core/data/client/client_data.dart';
import 'package:kino/core/data/client/movieClient/movie_client.dart';
import 'package:kino/core/data/client/pageClient/page_client.dart';

@module
abstract class ClientModule {
  @singleton
  Dio provideDioVersion3(LogInterceptor interceptor) {
    final Dio dio = Dio(BaseOptions(baseUrl: ClientData.BASE_URL_VERSION_3));
    return dio
      ..interceptors.add(interceptor)
      ..options.queryParameters[ClientParameters.API_KEY] =
          ClientData.ACCESS_TOKEN_V3;
  }

  @singleton
  LogInterceptor provideLogInterceptor() => LogInterceptor(
      error: true,
      request: true,
      requestHeader: true,
      responseBody: true,
      requestBody: true);

  @singleton
  PageClient providePageClient(Dio dio) => PageClient(dio);

  @singleton
  MovieClient provideMovieClient(Dio dio) => MovieClient(dio);
}
