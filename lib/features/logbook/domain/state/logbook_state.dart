import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/core/domain/entities/tick_entity.dart';

part 'logbook_state.freezed.dart';

@freezed
class LogbookState with _$LogbookState {
  const factory LogbookState.initial() = LogbookStateInitial;
  
  const factory LogbookState.loading() = LogbookStateLoading;
  
  const factory LogbookState.success({
    required List<TickEntity> projects,  // status == TickStatus.toDo
    required List<TickEntity> sends,     // status != TickStatus.toDo
  }) = LogbookStateSuccess;
  
  const factory LogbookState.failure({
    required String errorMessage,
  }) = LogbookStateFailure;
}
