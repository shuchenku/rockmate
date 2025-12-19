import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';

part 'route_search_state.freezed.dart';

@freezed
class RouteSearchState with _$RouteSearchState {
  const factory RouteSearchState.initial({
    @Default(RouteSearchFilters()) RouteSearchFilters filters,
    @Default([]) List<String> availableAreas,
  }) = RouteSearchStateInitial;
  
  const factory RouteSearchState.loading({
    required RouteSearchFilters filters,
    @Default([]) List<String> availableAreas,
  }) = RouteSearchStateLoading;
  
  const factory RouteSearchState.success({
    required RouteSearchFilters filters,
    required List<RouteEntity> routes,
    @Default([]) List<String> availableAreas,
  }) = RouteSearchStateSuccess;
  
  const factory RouteSearchState.error({
    required RouteSearchFilters filters,
    required String message,
    @Default([]) List<String> availableAreas,
  }) = RouteSearchStateError;
}
