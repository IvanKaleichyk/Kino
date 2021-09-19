import 'package:injectable/injectable.dart';
import 'package:kino/core/data/client/pageClient/page_client.dart';
import 'package:kino/core/data/models/section/section.dart';

abstract class PageRepository {

  const PageRepository();

  Future<Section?> getPopularSection([int page = 1]);

  Future<Section?> getTopSection([int page = 1]);

  Future<Section?> getLatest([int page = 1]);

  Future<Section?> getNowPlaying([int page = 1]);

  Future<Section?> getUpcoming([int page = 1]);
}

@Singleton(as: PageRepository)
class PageRepositoryImpl extends PageRepository{
  final PageClient _client;

  const PageRepositoryImpl(this._client): super();

  @override
  Future<Section?> getPopularSection([int page = 1]) => _client.getPopularSection(page);

  @override
  Future<Section?> getTopSection([int page = 1]) => _client.getTopSection(page);

  @override
  Future<Section?> getLatest([int page = 1]) => _client.getLatest(page);

  @override
  Future<Section?> getNowPlaying([int page = 1]) => _client.getNowPlaying(page);

  @override
  Future<Section?> getUpcoming([int page = 1]) => _client.getUpcoming(page);
}