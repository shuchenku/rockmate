import 'package:hive/hive.dart';
import 'package:rockmate/core/data/models/cached_routes.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/core/data/adapters/route_entity_adapter.dart';

class CachedRoutesAdapter extends TypeAdapter<CachedRoutes> {
  @override
  final int typeId = 1;

  @override
  CachedRoutes read(BinaryReader reader) {
    final routesLength = reader.readInt();
    final routes = <RouteEntity>[];
    final routeAdapter = RouteEntityAdapter();
    
    for (int i = 0; i < routesLength; i++) {
      routes.add(routeAdapter.read(reader));
    }
    
    final timestamp = reader.readInt();
    
    return CachedRoutes(
      routes: routes,
      timestamp: timestamp,
    );
  }

  @override
  void write(BinaryWriter writer, CachedRoutes obj) {
    writer.writeInt(obj.routes.length);
    final routeAdapter = RouteEntityAdapter();
    
    for (final route in obj.routes) {
      routeAdapter.write(writer, route);
    }
    
    writer.writeInt(obj.timestamp);
  }
}
