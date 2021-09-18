import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kino/core/data/client/client_data.dart';
import 'package:kino/core/data/client/page_client.dart';

@module
abstract class ClientModule {
  Dio provideDio() {
    final Dio dio = Dio();
    if (dio.options.baseUrl.startsWith(ClientData.BASE_URL_VERSION_3)) {
      dio.options.queryParameters[ClientParameters.API_KEY] = ClientData.ACCESS_TOKEN_V3;
    }
    else if (dio.options.baseUrl.startsWith(ClientData.BASE_URL_VERSION_4)){
      dio.options.queryParameters[ClientParameters.API_KEY] = ClientData.ACCESS_TOKEN_V4;
    }
    return dio;
  }

  @singleton
  PageClient providePageClient(Dio dio) => PageClient(dio);
}
