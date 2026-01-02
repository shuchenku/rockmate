import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/core/domain/entities/tick_entity.dart';

part 'logbook_event.freezed.dart';

@freezed
class LogbookEvent with _$LogbookEvent {
  // Load user's logbook
  const factory LogbookEvent.loadLogbook() = LogbookEventLoadLogbook;
  
  // Add new tick
  const factory LogbookEvent.addTick({
    required TickEntity tick,
  }) = LogbookEventAddTick;
  
  // Update existing tick
  const factory LogbookEvent.updateTick({
    required TickEntity tick,
  }) = LogbookEventUpdateTick;
  
  // Delete tick
  const factory LogbookEvent.deleteTick({
    required String tickId,
  }) = LogbookEventDeleteTick;
}
