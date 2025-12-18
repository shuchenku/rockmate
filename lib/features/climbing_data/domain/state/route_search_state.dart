import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';

part 'route_search_state.freezed.dart';

@freezed
class RouteSearchState with _$RouteSearchState {
  const factory RouteSearchState.initial() = RouteSearchStateInitial;
  const factory RouteSearchState.loading() = RouteSearchStateLoading;
  const factory RouteSearchState.success(List<RouteEntity> routes) = RouteSearchStateSuccess;
  const factory RouteSearchState.error(String message) = RouteSearchStateError;
}
