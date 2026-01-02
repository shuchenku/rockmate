import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rockmate/features/logbook/data/repositories/logbook_repository.dart';
import 'package:rockmate/features/logbook/domain/events/logbook_event.dart';
import 'package:rockmate/features/logbook/domain/state/logbook_state.dart';

@injectable
class LogbookBloc extends Bloc<LogbookEvent, LogbookState> {
  final LogbookRepository _repository;
  
  LogbookBloc(this._repository) : super(const LogbookState.initial()) {
    on<LogbookEventLoadLogbook>(_onLoadLogbook);
    on<LogbookEventAddTick>(_onAddTick);
    on<LogbookEventUpdateTick>(_onUpdateTick);
    on<LogbookEventDeleteTick>(_onDeleteTick);
  }
  
  Future<void> _onLoadLogbook(
    LogbookEventLoadLogbook event,
    Emitter<LogbookState> emit,
  ) async {
    emit(const LogbookState.loading());
    
    try {
      final projects = _repository.getProjects();
      final sends = _repository.getSends();
      
      emit(LogbookState.success(
        projects: projects,
        sends: sends,
      ));
    } catch (e) {
      emit(LogbookState.failure(
        errorMessage: 'Failed to load logbook: $e',
      ));
    }
  }
  
  Future<void> _onAddTick(
    LogbookEventAddTick event,
    Emitter<LogbookState> emit,
  ) async {
    try {
      await _repository.addTick(event.tick);
      
      // Reload to get updated lists
      final projects = _repository.getProjects();
      final sends = _repository.getSends();
      
      emit(LogbookState.success(
        projects: projects,
        sends: sends,
      ));
    } catch (e) {
      emit(LogbookState.failure(
        errorMessage: 'Failed to add tick: $e',
      ));
    }
  }
  
  Future<void> _onUpdateTick(
    LogbookEventUpdateTick event,
    Emitter<LogbookState> emit,
  ) async {
    try {
      await _repository.updateTick(event.tick);
      
      final projects = _repository.getProjects();
      final sends = _repository.getSends();
      
      emit(LogbookState.success(
        projects: projects,
        sends: sends,
      ));
    } catch (e) {
      emit(LogbookState.failure(
        errorMessage: 'Failed to update tick: $e',
      ));
    }
  }
  
  Future<void> _onDeleteTick(
    LogbookEventDeleteTick event,
    Emitter<LogbookState> emit,
  ) async {
    try {
      await _repository.deleteTick(event.tickId);
      
      final projects = _repository.getProjects();
      final sends = _repository.getSends();
      
      emit(LogbookState.success(
        projects: projects,
        sends: sends,
      ));
    } catch (e) {
      emit(LogbookState.failure(
        errorMessage: 'Failed to delete tick: $e',
      ));
    }
  }
}
