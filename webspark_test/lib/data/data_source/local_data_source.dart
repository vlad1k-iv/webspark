import 'package:injectable/injectable.dart';

const String LINK_LOCAL_KEY = 'LINK_LOCAL_KEY';

abstract class LocalDataSource {
  void clearCache();

  void removeFromCache(String key);

  void saveLink(
    String link,
  );

  String? getLink();
}

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImplementer implements LocalDataSource {
  // run time cache
  Map<String, CachedItem> cacheMap = {};

  @override
  void clearCache() {
    cacheMap.clear();
  }

  @override
  void removeFromCache(String key) {
    cacheMap.remove(key);
  }

  @override
  String? getLink() {
    final cachedItem = cacheMap[LINK_LOCAL_KEY];

    return cachedItem?.data as String?;
  }

  @override
  void saveLink(
    String link,
  ) {
    cacheMap[LINK_LOCAL_KEY] = CachedItem(
      link,
    );
  }
}

class CachedItem {
  CachedItem(this._data);

  final dynamic _data;

  dynamic get data {
    return _data;
  }
}
