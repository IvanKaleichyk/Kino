import 'package:dio/dio.dart';
import 'package:kino/core/data/client/client_data.dart';
import 'package:kino/core/data/models/popular_page.dart';
import 'package:retrofit/http.dart';

part 'page_client.g.dart';

@RestApi(baseUrl: ClientData.BASE_URL_VERSION_3)
abstract class PageClient{

  factory PageClient(Dio dio) => _PageClient(dio);

  @GET("/movie/popular")
  Future<PopularPage?> getPopularSection([@Query("page") int page = 1, @Query(ClientParameters.API_KEY) String apiKey = ClientData.ACCESS_TOKEN_V3]);
}