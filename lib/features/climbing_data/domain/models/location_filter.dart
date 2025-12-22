import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_filter.freezed.dart';

/// Hierarchical location filter matching pathTokens: Country → State/Province → Region → Area
@freezed
class LocationFilter with _$LocationFilter {
  const factory LocationFilter({
    String? country,        // pathTokens[0]
    String? stateProvince,  // pathTokens[1]
    String? region,         // pathTokens[2]
    String? area,           // pathTokens[3]
  }) = _LocationFilter;

  const LocationFilter._();

  bool get isEmpty => 
    country == null && 
    stateProvince == null && 
    region == null && 
    area == null;

  /// Returns the most specific location level set
  String? get mostSpecific =>
    area ?? region ?? stateProvince ?? country;
}
