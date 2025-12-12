import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/core/data/adapters/route_entity_adapter.dart';
import 'package:rockmate/core/data/adapters/cached_routes_adapter.dart';
import 'package:rockmate/core/data/models/cached_routes.dart';
import 'package:rockmate/features/climbing_data/data/datasources/route_local_data_source.dart';

void main() {
  late RouteLocalDataSource dataSource;
  late Directory tempDir;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp('hive_test_');
    Hive.init(tempDir.path);
    Hive.registerAdapter(RouteEntityAdapter());
    Hive.registerAdapter(CachedRoutesAdapter());
  });

  tearDownAll(() async {
    await Hive.close();
    await tempDir.delete(recursive: true);
  });

  setUp(() {
    dataSource = RouteLocalDataSource();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('route_cache');
  });

  group('RouteLocalDataSource', () {
    test('getCachedRoutes returns null when no cache exists', () async {
      final result = await dataSource.getCachedRoutes('test_query');
      expect(result, isNull);
    });

    test('cacheRoutes stores routes and getCachedRoutes retrieves them', () async {
      final routes = [
        const RouteEntity(
          id: '1',
          name: 'Test Route',
          grade: '5.10a',
          type: 'Sport',
          rating: 4.5,
          location: 'Test Area',
        ),
      ];

      await dataSource.cacheRoutes('test_query', routes);
      final result = await dataSource.getCachedRoutes('test_query');

      expect(result, isNotNull);
      expect(result!.length, 1);
      expect(result.first.name, 'Test Route');
    });

    test('getCachedRoutes returns null for expired cache', () async {
      final routes = [
        const RouteEntity(
          id: '1',
          name: 'Test Route',
          grade: '5.10a',
          type: 'Sport',
          rating: 4.5,
          location: 'Test Area',
        ),
      ];

      // Manually create an expired cache entry
      await dataSource.init();
      final box = await Hive.openBox<CachedRoutes>('route_cache');
      final expiredTimestamp = DateTime.now().millisecondsSinceEpoch - (8 * 24 * 60 * 60 * 1000); // 8 days ago
      final cached = CachedRoutes(routes: routes, timestamp: expiredTimestamp);
      await box.put('test_query', cached);

      final result = await dataSource.getCachedRoutes('test_query');
      expect(result, isNull);
    });

    test('clearCache removes all cached data', () async {
      final routes = [
        const RouteEntity(
          id: '1',
          name: 'Test Route',
          grade: '5.10a',
          type: 'Sport',
          rating: 4.5,
          location: 'Test Area',
        ),
      ];

      await dataSource.cacheRoutes('query1', routes);
      await dataSource.cacheRoutes('query2', routes);
      
      await dataSource.clearCache();
      
      final result1 = await dataSource.getCachedRoutes('query1');
      final result2 = await dataSource.getCachedRoutes('query2');
      
      expect(result1, isNull);
      expect(result2, isNull);
    });
  });
}
