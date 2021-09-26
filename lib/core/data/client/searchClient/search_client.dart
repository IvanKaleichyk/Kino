import 'package:dio/dio.dart';
import 'package:kino/core/data/models/movie/movie/movie.dart';
import 'package:kino/core/data/models/people/peopleResponse/people_response.dart';
import 'package:retrofit/http.dart';

part "search_client.g.dart";

@RestApi()
abstract class SearchClient {
  factory SearchClient(Dio dio) => _SearchClient(dio);

  @GET("/search/movie")
  Future<MovieResponse> searchMovies(
      {@Query("page") int page = 1,
      @Query("include_adult") bool isIncludeAdult = false});

  @GET("/search/person")
  Future<PeopleResponse> searchPeople(
      {@Query("page") int page = 1,
      @Query("include_adult") bool isIncludeAdult = false});
}
