import 'dart:async';
import 'package:rockmate/core/domain/entities/tick_entity.dart';
import 'package:rockmate/core/domain/entities/tick_status.dart';
import 'package:rockmate/features/logbook/data/repositories/logbook_repository.dart';

/// In-memory implementation of LogbookRepository
/// Session-only storage for development
class LogbookLocalDataSource implements LogbookRepository {
  final List<TickEntity> _ticks = [];
  final StreamController<List<TickEntity>> _ticksController = 
      StreamController<List<TickEntity>>.broadcast();
  
  LogbookLocalDataSource() {
    // Start with empty list - data will be added through UI
    _ticksController.add(List.from(_ticks));
  }
  
  @override
  Stream<List<TickEntity>> watchTicks() {
    return _ticksController.stream;
  }
  
  @override
  Future<void> addTick(TickEntity tick) async {
    _ticks.add(tick);
    _ticksController.add(List.from(_ticks));
  }
  
  @override
  Future<void> updateTick(TickEntity tick) async {
    final index = _ticks.indexWhere((t) => t.id == tick.id);
    if (index != -1) {
      _ticks[index] = tick;
      _ticksController.add(List.from(_ticks));
    }
  }
  
  @override
  Future<void> deleteTick(String tickId) async {
    _ticks.removeWhere((t) => t.id == tickId);
    _ticksController.add(List.from(_ticks));
  }
  
  @override
  List<TickEntity> getProjects() {
    return _ticks.where((t) => t.status == TickStatus.todo).toList();
  }
  
  @override
  List<TickEntity> getSends() {
    return _ticks.where((t) => t.status != TickStatus.todo).toList();
  }
  
  @override
  List<TickEntity> getTicksByRoute(String routeId) {
    return _ticks.where((t) => t.routeId == routeId).toList();
  }
  
  @override
  void dispose() {
    _ticksController.close();
  }
}
