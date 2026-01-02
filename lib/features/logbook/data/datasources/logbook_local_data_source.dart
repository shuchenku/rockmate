import 'dart:async';
import 'package:rockmate/core/domain/entities/tick_entity.dart';
import 'package:rockmate/core/domain/entities/tick_status.dart';
import 'package:rockmate/features/logbook/data/repositories/logbook_repository.dart';

/// In-memory implementation of LogbookRepository
/// Session-only storage with mock data for development
class LogbookLocalDataSource implements LogbookRepository {
  final List<TickEntity> _ticks = [];
  final StreamController<List<TickEntity>> _ticksController = 
      StreamController<List<TickEntity>>.broadcast();
  
  LogbookLocalDataSource() {
    _initMockData();
  }
  
  /// Initialize with 10 varied mock ticks
  void _initMockData() {
    final now = DateTime.now();
    
    _ticks.addAll([
      // Projects (to-do)
      TickEntity(
        id: '1',
        routeId: 'route-001',
        routeName: 'The Nose',
        date: now.subtract(const Duration(days: 2)),
        status: TickStatus.todo,
        comment: 'Dream project! Need to work on crack technique.',
        location: 'Yosemite Valley, CA',
        routeGrade: '5.14a',
      ),
      TickEntity(
        id: '2',
        routeId: 'route-002',
        routeName: 'Action Directe',
        date: now.subtract(const Duration(days: 15)),
        status: TickStatus.todo,
        comment: 'The classic! Maybe next season...',
        location: 'Frankenjura, Germany',
        routeGrade: '5.14d',
      ),
      TickEntity(
        id: '3',
        routeId: 'route-003',
        routeName: 'Dreamcatcher',
        date: now.subtract(const Duration(days: 8)),
        status: TickStatus.todo,
        comment: 'Such beautiful movement',
        location: 'Squamish, BC',
        routeGrade: 'V15',
      ),
      
      // Sends - Fell/Take
      TickEntity(
        id: '4',
        routeId: 'route-004',
        routeName: 'Golden Ticket',
        date: now.subtract(const Duration(days: 3)),
        status: TickStatus.fell,
        comment: 'Got close! Fell on last move.',
        location: 'Red River Gorge, KY',
        routeGrade: '5.13c',
      ),
      TickEntity(
        id: '5',
        routeId: 'route-005',
        routeName: 'Biographie',
        date: now.subtract(const Duration(days: 20)),
        status: TickStatus.take,
        comment: 'Took at the crux, but finished!',
        location: 'Ceuse, France',
        routeGrade: '5.15a',
      ),
      
      // Sends - On-sight
      TickEntity(
        id: '6',
        routeId: 'route-006',
        routeName: 'Midnight Lightning',
        date: now.subtract(const Duration(days: 5)),
        status: TickStatus.onSight,
        comment: 'Clean on first try! Conditions were perfect.',
        location: 'Camp 4, Yosemite',
        routeGrade: 'V8',
      ),
      
      // Sends - Flash
      TickEntity(
        id: '7',
        routeId: 'route-007',
        routeName: 'Pumping Rhinos',
        date: now.subtract(const Duration(days: 12)),
        status: TickStatus.flash,
        comment: 'Watched beta video beforehand, crushed it!',
        location: 'Hueco Tanks, TX',
        routeGrade: 'V10',
      ),
      TickEntity(
        id: '8',
        routeId: 'route-008',
        routeName: 'Pure Imagination',
        date: now.subtract(const Duration(days: 7)),
        status: TickStatus.flash,
        comment: 'Felt strong today',
        location: 'Red Rocks, NV',
        routeGrade: '5.12c',
      ),
      
      // Sends - Red-point
      TickEntity(
        id: '9',
        routeId: 'route-009',
        routeName: 'Lucid Dreaming',
        date: now.subtract(const Duration(days: 10)),
        status: TickStatus.redPoint,
        comment: 'Finally sent after 5 sessions!',
        location: 'Bishop, CA',
        routeGrade: 'V11',
      ),
      TickEntity(
        id: '10',
        routeId: 'route-010',
        routeName: 'Necessary Evil',
        date: now.subtract(const Duration(days: 25)),
        status: TickStatus.redPoint,
        comment: 'What a battle. Three weeks of work paid off!',
        location: 'Virgin River Gorge, AZ',
        routeGrade: '5.14c',
      ),
    ]);
    
    // Emit initial data
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
