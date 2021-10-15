// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AccountClient implements AccountClient {
  _AccountClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AccountDetails> getAccountDetails(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AccountDetails>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/account',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AccountDetails.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResponse> getFavoritesMovie(accountId, sessionId, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'session_id': sessionId,
      r'page': page
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/account/$accountId/favorite/movies',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PostResponse> addToFavorite(postMovie, accountId, sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(postMovie.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PostResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/account/$accountId/favorite',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieResponse> getWatchlist(accountId, sessionId, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'session_id': sessionId,
      r'page': page
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/account/$accountId/watchlist/movies',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PostResponse> addToWatchlist(postMovie, accountId, sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(postMovie.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PostResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/account/$accountId/watchlist',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PostResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
