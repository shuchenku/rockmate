import 'package:freezed_annotation/freezed_annotation.dart';
import 'tick_status.dart';

part 'tick_entity.freezed.dart';

@freezed
class TickEntity with _$TickEntity {
  const factory TickEntity({
    required String id,
    required String routeId,
    required String routeName,
    required DateTime date,
    required TickStatus status,
    required String comment,
    required String location,
    required String routeGrade,
  }) = _TickEntity;
}
