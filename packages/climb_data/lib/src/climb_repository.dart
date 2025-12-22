import 'climb_local_data_source.dart';
import 'models/climb_entity.dart';

class ClimbRepository {
  final ClimbLocalDataSource _dataSource;

  ClimbRepository(this._dataSource);

  /// Expose data source for import operations
  ClimbLocalDataSource get dataSource => _dataSource;

  /// Search climbs with filters
  Future<List<ClimbEntity>> searchClimbs({
    String? query,
    String? state,
    List<String>? types,
    int? minGrade,
    int? maxGrade,
  }) async {
    return await _dataSource.searchClimbs(
      query: query,
      state: state,
      types: types,
      minGrade: minGrade,
      maxGrade: maxGrade,
    );
  }

  /// Get climb by UUID
  Future<ClimbEntity?> getClimbByUuid(String uuid) async {
    return await _dataSource.getClimbByUuid(uuid);
  }

  /// Get unique countries for filter dropdowns
  List<String> getUniqueCountries() {
    return _dataSource.getUniqueCountries();
  }

  /// Get unique states for filter dropdowns, optionally filtered by country
  List<String> getUniqueStates({String? country}) {
    return _dataSource.getUniqueStates(country: country);
  }

  /// Get unique regions for a given state
  List<String> getUniqueRegions(String state) {
    return _dataSource.getUniqueRegions(state);
  }

  /// Check if local data exists
  bool get hasData {
    return _dataSource.hasData;
  }

  /// Get total climb count
  int get climbCount {
    return _dataSource.climbCount;
  }

  /// Clear all data
  Future<void> clearAll() async {
    await _dataSource.clearAll();
  }
}
