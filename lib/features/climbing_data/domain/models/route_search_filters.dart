import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_search_filters.freezed.dart';

@freezed
class RouteSearchFilters with _$RouteSearchFilters {
  const factory RouteSearchFilters({
    @Default('') String query,
    String? area,
    String? location,
    String? gradeMin,
    String? gradeMax,
    @Default([]) List<String> types, // sport, trad, boulder, etc
  }) = _RouteSearchFilters;

  const RouteSearchFilters._();

  bool get isEmpty => query.isEmpty && 
                      area == null && 
                      location == null && 
                      gradeMin == null && 
                      gradeMax == null && 
                      types.isEmpty;
}
