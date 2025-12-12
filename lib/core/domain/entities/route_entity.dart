import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_entity.freezed.dart';

@freezed
class RouteEntity with _$RouteEntity {
  const factory RouteEntity({
    required String id,
    required String name,
    required String grade,
    required String type,
    required double rating,
    required String location,
    String? imageUrl,
  }) = _RouteEntity;
}
