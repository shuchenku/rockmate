import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/core/data/models/cached_routes.dart';

@injectable
class RouteLocalDataSource {
  static const String _boxName = 'route_cache';
  Box<CachedRoutes>? _box;

  Future<void> init() async {
    if (_box == null || !_box!.isOpen) {
      _box = await Hive.openBox<CachedRoutes>(_boxName);
    }
  }

  Future<List<RouteEntity>?> getCachedRoutes(String query) async {
    await init();
    final cached = _box!.get(query);
    
    if (cached == null) {
      return null;
    }
    
    if (cached.isExpired()) {
      await _box!.delete(query);
      return null;
    }
    
    return cached.routes;
  }

  Future<void> cacheRoutes(String query, List<RouteEntity> routes) async {
    await init();
    final cached = CachedRoutes(
      routes: routes,
      timestamp: DateTime.now().millisecondsSinceEpoch,
    );
    await _box!.put(query, cached);
  }

  Future<void> clearCache() async {
    await init();
    await _box!.clear();
  }
}
