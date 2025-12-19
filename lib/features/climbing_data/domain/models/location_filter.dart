import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_filter.freezed.dart';

/// Hierarchical location filter: Continent → Country → Region → Location
@freezed
class LocationFilter with _$LocationFilter {
  const factory LocationFilter({
    String? continent,
    String? country,
    String? region,
    String? location,
  }) = _LocationFilter;

  const LocationFilter._();

  bool get isEmpty => 
    continent == null && 
    country == null && 
    region == null && 
    location == null;

  /// Returns the most specific location level set
  String? get mostSpecific =>
    location ?? region ?? country ?? continent;
}
