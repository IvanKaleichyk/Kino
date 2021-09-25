import 'package:dio/dio.dart';
import 'package:kino/core/data/models/account/account_details.dart';
import 'package:kino/core/data/models/movie/movie/movie.dart';
import 'package:kino/core/data/models/post/favorite/post_favorite.dart';
import 'package:kino/core/data/models/post/postResponse/post_response.dart';
import 'package:kino/core/data/models/post/watchlist/post_watchlist.dart';
import 'package:retrofit/http.dart';

part "account_client.g.dart";

@RestApi()
abstract class AccountClient {
  factory AccountClient(Dio dio) => _AccountClient(dio);

  @GET("/account")
  Future<AccountDetails> getAccountDetails(
      @Query("session_id") String sessionId);

  @GET("/account/{account_id}/favorite/movies")
  Future<MovieResponse> getFavoritesMovie(@Path("account_id") int accountId,
      @Query("session_id") String sessionId, @Query("page") int page);

  @POST("/account/{account_id}/favorite")
  Future<PostResponse> addToFavorite(@Body() PostFavorite postMovie,
      @Path("account_id") int accountId, @Query("session_id") String sessionId);
  
  @GET("/account/{account_id}/watchlist/movies")
  Future<MovieResponse> getWatchlist(@Path("account_id") int accountId,
      @Query("session_id") String sessionId, @Query("page") int page);

  @POST("/account/{account_id}/watchlist")
  Future<PostResponse> addToWatchlist(@Body() PostWatchlist postMovie,
      @Path("account_id") int accountId, @Query("session_id") String sessionId);
}
