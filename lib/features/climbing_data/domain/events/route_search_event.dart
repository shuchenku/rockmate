import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_type.dart';
import 'package:rockmate/features/climbing_data/domain/models/location_filter.dart';

part 'route_search_event.freezed.dart';

@freezed
class RouteSearchEvent with _$RouteSearchEvent {
  const factory RouteSearchEvent.queryChanged(String query) = RouteSearchEventQueryChanged;
  
  const factory RouteSearchEvent.locationFilterChanged(LocationFilter locationFilter) = RouteSearchEventLocationFilterChanged;
  
  const factory RouteSearchEvent.gradeRangeChanged({
    String? gradeMin,
    String? gradeMax,
  }) = RouteSearchEventGradeRangeChanged;
  
  const factory RouteSearchEvent.routeTypesChanged(Set<RouteType> types) = RouteSearchEventRouteTypesChanged;
  
  const factory RouteSearchEvent.searchSubmitted() = RouteSearchEventSearchSubmitted;
  
  const factory RouteSearchEvent.filtersCleared() = RouteSearchEventFiltersCleared;
}
