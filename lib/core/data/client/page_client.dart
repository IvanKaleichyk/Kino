import 'package:dio/dio.dart';
import 'package:kino/core/data/models/section/section.dart';
import 'package:retrofit/http.dart';

part 'page_client.g.dart';

@RestApi()
abstract class PageClient{

  factory PageClient(Dio dio) => _PageClient(dio);

  @GET("/movie/popular")
  Future<Section?> getPopularSection([@Query("page") int page = 1]);

  @GET("/movie/top_rated")
  Future<Section> getTopSection([@Query("page") int page = 1]);

  @GET("/movie/upcoming")
  Future<Section> getUpcoming([@Query("page") int page = 1]);

  @GET("/movie/now_playing")
  Future<Section> getNowPlaying([@Query("page") int page = 1]);

  @GET("/movie/latest")
  Future<Section> getLatest([@Query("page") int page = 1]);
}