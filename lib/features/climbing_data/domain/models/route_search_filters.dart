import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_type.dart';
import 'package:rockmate/features/climbing_data/domain/models/location_filter.dart';

part 'route_search_filters.freezed.dart';

@freezed
class RouteSearchFilters with _$RouteSearchFilters {
  const factory RouteSearchFilters({
    @Default('') String query,
    @Default(LocationFilter()) LocationFilter locationFilter,
    String? gradeMin,
    String? gradeMax,
    @Default({}) Set<RouteType> types,
  }) = _RouteSearchFilters;

  const RouteSearchFilters._();

  bool get isEmpty => 
    query.isEmpty && 
    locationFilter.isEmpty && 
    gradeMin == null && 
    gradeMax == null && 
    types.isEmpty;
}
