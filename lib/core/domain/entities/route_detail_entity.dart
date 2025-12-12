import 'package:freezed_annotation/freezed_annotation.dart';
import 'route_entity.dart';

part 'route_detail_entity.freezed.dart';
part 'route_detail_entity.g.dart';

@freezed
class RouteDetailEntity with _$RouteDetailEntity implements RouteEntity {
  const factory RouteDetailEntity({
    required String id,
    required String name,
    required String grade,
    required String type,
    required double rating,
    required String location,
    String? imageUrl,
    // Detail specific fields
    required int bolts,
    required int pitches,
    required String description,
    required String protection,
    required String firstAscent,
  }) = _RouteDetailEntity;

  factory RouteDetailEntity.fromJson(Map<String, dynamic> json) => _$RouteDetailEntityFromJson(json);
}
