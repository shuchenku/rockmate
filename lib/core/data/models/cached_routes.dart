import 'package:rockmate/core/domain/entities/route_entity.dart';

class CachedRoutes {
  final List<RouteEntity> routes;
  final int timestamp; // milliseconds since epoch

  CachedRoutes({
    required this.routes,
    required this.timestamp,
  });

  bool isExpired() {
    final now = DateTime.now().millisecondsSinceEpoch;
    const sevenDaysInMs = 7 * 24 * 60 * 60 * 1000;
    return (now - timestamp) > sevenDaysInMs;
  }
}
