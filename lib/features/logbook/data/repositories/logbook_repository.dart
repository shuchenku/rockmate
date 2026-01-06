import 'dart:async';
import 'package:rockmate/core/domain/entities/tick_entity.dart';

/// Abstract repository interface for logbook operations
/// Designed to be easily swapped with Firestore implementation later
abstract class LogbookRepository {
  /// Watch all ticks (reactive stream for UI)
  Stream<List<TickEntity>> watchTicks();
  
  /// Add a new tick
  Future<void> addTick(TickEntity tick);
  
  /// Update an existing tick
  Future<void> updateTick(TickEntity tick);
  
  /// Delete a tick by ID
  Future<void> deleteTick(String tickId);
  
  /// Get all projects (status == TickStatus.todo)
  List<TickEntity> getProjects();
  
  /// Get all sends (status != TickStatus.todo)
  List<TickEntity> getSends();
  
  /// Get all ticks for a specific route
  List<TickEntity> getTicksByRoute(String routeId);
  
  /// Dispose resources
  void dispose();
}
