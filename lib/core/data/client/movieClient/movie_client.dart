import 'package:dio/dio.dart';
import 'package:kino/core/data/models/accountState/account_state.dart';
import 'package:kino/core/data/models/images/movieImages/movie_images.dart';
import 'package:kino/core/data/models/movie/movie/movie.dart';
import 'package:kino/core/data/models/movie/movieDetails/movie_details.dart';
import 'package:retrofit/http.dart';

part 'movie_client.g.dart';

@RestApi()
abstract class MovieClient {
  factory MovieClient(Dio dio) => _MovieClient(dio);

  @GET("/movie/{movie_id}")
  Future<MovieDetails> getMovieDetails(@Path("movie_id") int id);

  @GET("/movie/{movie_id}/account_states")
  Future<AccountState> getAccountState(
      @Path("movie_id") int id, @Query("session_id") int sessionId);

  @GET("/movie/{movie_id}/images")
  Future<MovieImages> getMovieImages(@Path("movie_id") int id);

  @GET("/movie/{movie_id}/recommendations")
  Future<MovieResponse> getRecommendations(@Path("movie_id") int id, {@Query("page") int page = 1});

  @GET(" /movie/{movie_id}/similar")
  Future<MovieResponse> getSimilarMovies(@Path("movie_id") int id, {@Query("page") int page = 1});

  @GET("/movie/{movie_id}/reviews")
  Future<MovieResponse> getReviews(@Path("movie_id") int id,
      {@Query("page") int page = 1});
}
