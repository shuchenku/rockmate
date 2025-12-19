import 'package:injectable/injectable.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/features/climbing_data/data/datasources/route_local_data_source.dart';
import 'package:openbeta_client/openbeta_client.dart';

@injectable
class RouteRepository {
  final RouteLocalDataSource _localDataSource;
  final OpenBetaClient _networkClient;

  RouteRepository(this._localDataSource, this._networkClient);

  /// Searches for routes using cache-first strategy
  /// 1. Check local cache
  /// 2. If cache miss, fetch from network
  /// 3. Cache network results
  Future<List<RouteEntity>> searchRoutes(String query) async {
    // Try cache first
    final cachedRoutes = await _localDataSource.getCachedRoutes(query);
    if (cachedRoutes != null && cachedRoutes.isNotEmpty) {
      return cachedRoutes;
    }

    // Cache miss: fetch from network
    final networkResults = await _networkClient.searchRoutes(query);

    // Convert models to entities
    final routes = networkResults
        .map((model) => RouteEntity(
              id: model.id,
              name: model.name,
              grade: model.grade,
              type: model.type,
              rating: model.rating,
              location: model.location,
            ))
        .toList();

    // Cache the results
    await _localDataSource.cacheRoutes(query, routes);

    return routes;
  }

  /// Clears all cached routes
  Future<void> clearCache() async {
    await _localDataSource.clearCache();
  }
}
