import 'package:injectable/injectable.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/features/climbing_data/data/datasources/route_local_data_source.dart';
// TODO: Replace with ClimbRepository from climb_data package

@injectable
class RouteRepository {
  final RouteLocalDataSource _localDataSource;
  // final ClimbRepository _climbRepository; // Will be added in Task 2

  RouteRepository(this._localDataSource);

  /// Searches for routes using cache-first strategy
  /// TODO: Replace with local climb data from Hive
  Future<List<RouteEntity>> searchRoutes(String query) async {
    // Temporarily return cached routes only
    final cachedRoutes = await _localDataSource.getCachedRoutes(query);
    if (cachedRoutes != null && cachedRoutes.isNotEmpty) {
      return cachedRoutes;
    }

    // Network fetch removed - will be replaced with local Hive query
    return [];
  }

  /// Clears all cached routes
  Future<void> clearCache() async {
    await _localDataSource.clearCache();
  }
}
