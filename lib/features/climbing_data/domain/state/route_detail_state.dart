import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:climb_data/climb_data.dart';

part 'route_detail_state.freezed.dart';

/// State for Route Detail screen
@freezed
class RouteDetailState with _$RouteDetailState {
  /// Initial state before any route is loaded
  const factory RouteDetailState.initial() = RouteDetailStateInitial;

  /// Loading state while fetching route from database
  const factory RouteDetailState.loading({
    required String routeId,
  }) = RouteDetailStateLoading;

  /// Success state with loaded climb details
  const factory RouteDetailState.success({
    required ClimbEntity climb,
  }) = RouteDetailStateSuccess;

  /// Error state when route fails to load
  const factory RouteDetailState.error({
    required String routeId,
    required String message,
  }) = RouteDetailStateError;
}
