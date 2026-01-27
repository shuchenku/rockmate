import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    required String id,
    required String userId,
    required String location,
    required DateTime startDate,
    required DateTime endDate,
    @Default([]) List<String> todoRoutes,
    @Default(0) int minGrade,
    @Default(0) int maxGrade,
    @Default(true) bool isPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TripEntity;
}
