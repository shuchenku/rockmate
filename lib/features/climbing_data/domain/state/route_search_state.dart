import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';

part 'route_search_state.freezed.dart';

@freezed
class RouteSearchState with _$RouteSearchState {
  const factory RouteSearchState.initial() = RouteSearchStateInitial;
  const factory RouteSearchState.loading(String query) = RouteSearchStateLoading;
  const factory RouteSearchState.success({
    required String query,
    required List<RouteEntity> routes,
  }) = RouteSearchStateSuccess;
  const factory RouteSearchState.error({
    required String query,
    required String message,
  }) = RouteSearchStateError;
}
