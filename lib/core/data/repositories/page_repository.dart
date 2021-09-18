import 'package:injectable/injectable.dart';
import 'package:kino/core/data/client/page_client.dart';
import 'package:kino/core/data/models/popular_page.dart';

abstract class PageRepository {

  const PageRepository();

  Future<PopularPage?> getPopularPage([int page = 1]);
}

@Singleton(as: PageRepository)
class PageRepositoryImpl extends PageRepository{
  final PageClient _client;

  const PageRepositoryImpl(this._client): super();

  @override
  Future<PopularPage?> getPopularPage([int page = 1]) => _client.getPopularSection(page);
}