// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PageClient implements PageClient {
  _PageClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Section?> getPopularSection([page = 1]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Section>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/movie/popular',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null ? null : Section.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Section> getTopSection([page = 1]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Section>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/movie/top_rated',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Section.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Section> getUpcoming([page = 1]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Section>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/movie/upcoming',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Section.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Section> getNowPlaying([page = 1]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Section>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/movie/now_playing',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Section.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Section> getLatest([page = 1]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Section>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/movie/latest',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Section.fromJson(_result.data!);
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
