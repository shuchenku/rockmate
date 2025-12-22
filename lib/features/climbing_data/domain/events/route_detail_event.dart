import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_detail_event.freezed.dart';

/// Events for Route Detail screen
@freezed
class RouteDetailEvent with _$RouteDetailEvent {
  /// Event to load route details by UUID
  const factory RouteDetailEvent.loadRoute(String routeId) = RouteDetailEventLoadRoute;
}
