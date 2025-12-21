import 'package:hive/hive.dart';
import 'models/climb_entity.dart';

class ClimbLocalDataSource {
  static const String _boxName = 'climbs';
  Box<ClimbEntity>? _box;

  /// Initialize Hive and open climbs box
  Future<void> init() async {
    // Register adapter if not already registered
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(ClimbEntityAdapter());
    }
    
    if (_box == null || !_box!.isOpen) {
      _box = await Hive.openBox<ClimbEntity>(_boxName);
    }
  }

  /// Get climb by UUID
  Future<ClimbEntity?> getClimbByUuid(String uuid) async {
    await init();
    return _box!.get(uuid);
  }

  /// Search climbs with filters
  Future<List<ClimbEntity>> searchClimbs({
    String? query,
    String? state,
    List<String>? types,
    int? minGrade,
    int? maxGrade,
  }) async {
    await init();
   
    var results = _box!.values.toList();

    // Filter by query (name or area match)
    if (query != null && query.isNotEmpty) {
      final lowerQuery = query.toLowerCase();
      results = results.where((climb) {
        return climb.name.toLowerCase().contains(lowerQuery) ||
               climb.locationString.toLowerCase().contains(lowerQuery) ||
               climb.pathTokens.any((token) => token.toLowerCase().contains(lowerQuery));
      }).toList();
    }

    // Filter by state (first path token)
    if (state != null && state.isNotEmpty && state != 'All States') {
      results = results.where((climb) {
        return climb.pathTokens.isNotEmpty && climb.pathTokens.first == state;
      }).toList();
    }

    // Filter by types
    if (types != null && types.isNotEmpty) {
      results = results.where((climb) {
        return types.any((type) {
          switch (type.toLowerCase()) {
            case 'sport':
              return climb.typeSport;
            case 'trad':
              return climb.typeTrad;
            case 'boulder':
            case 'bouldering':
              return climb.typeBouldering;
            case 'top rope':
            case 'tr':
              return climb.typeTr;
            case 'alpine':
              return climb.typeAlpine;
            case 'ice':
              return climb.typeIce;
            case 'mixed':
              return climb.typeMixed;
            case 'aid':
              return climb.typeAid;
            default:
              return false;
          }
        });
      }).toList();
    }

    // Filter by grade range
    if (minGrade != null) {
      results = results.where((climb) => climb.gradeNumeric >= minGrade).toList();
    }
    if (maxGrade != null) {
      results = results.where((climb) => climb.gradeNumeric <= maxGrade).toList();
    }

    return results;
  }

  /// Get unique states from all climbs
  List<String> getUniqueStates() {
    if (_box == null || !_box!.isOpen) {
      return [];
    }
    
    final states = <String>{};
    for (final climb in _box!.values) {
      if (climb.pathTokens.isNotEmpty) {
        states.add(climb.pathTokens.first);
      }
    }
    return states.toList()..sort();
  }

  /// Get unique regions for a given state
  List<String> getUniqueRegions(String state) {
    if (_box == null || !_box!.isOpen) {
      return [];
    }
    
    final regions = <String>{};
    for (final climb in _box!.values) {
      if (climb.pathTokens.isNotEmpty && 
          climb.pathTokens.first == state &&
          climb.pathTokens.length >= 2) {
        regions.add(climb.pathTokens[1]);
      }
    }
    return regions.toList()..sort();
  }

  /// Store a single climb
  Future<void> storeClimb(ClimbEntity climb) async {
    await init();
    await _box!.put(climb.uuid, climb);
  }

  /// Store multiple climbs in batch
  Future<void> storeClimbs(List<ClimbEntity> climbs) async {
    await init();
    final Map<String, ClimbEntity> climbMap = {
      for (var climb in climbs) climb.uuid: climb
    };
    await _box!.putAll(climbMap);
  }

  /// Clear all climbs
  Future<void> clearAll() async {
    await init();
    await _box!.clear();
  }

  /// Get total climb count
  int get climbCount {
    if (_box == null || !_box!.isOpen) {
      return 0;
    }
    return _box!.length;
  }

  /// Check if data exists
  bool get hasData {
    return climbCount > 0;
  }

  /// Close the box
  Future<void> close() async {
    if (_box != null && _box!.isOpen) {
      await _box!.close();
    }
  }
}
