import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'climb_local_data_source.dart';
import 'models/climb_entity.dart';

class DataImporter {
  final ClimbLocalDataSource _dataSource;

  DataImporter(this._dataSource);

  /// Import climbs from bundled JSON asset
  Future<void> importFromAsset(String assetPath,
      {Function(int current, int total)? onProgress}) async {
    // Load JSON from assets
    final jsonString = await rootBundle.loadString(assetPath);
    await _importFromString(jsonString, onProgress: onProgress);
  }

  /// Import climbs from downloaded file
  Future<void> importFromFile(String filePath,
      {Function(int current, int total)? onProgress}) async {
    // Read JSON from file
    final file = File(filePath);
    final jsonString = await file.readAsString();
    await _importFromString(jsonString, onProgress: onProgress);
  }

  /// Internal method to import from JSON string
  Future<void> _importFromString(String jsonString,
      {Function(int current, int total)? onProgress}) async {
    // Parse JSON Lines format (each line is a separate JSON object)
    final lines = LineSplitter.split(jsonString);
    final climbs = <ClimbEntity>[];
    
    int current = 0;
    final total = lines.length;
    
    for (final line in lines) {
      if (line.trim().isEmpty) continue;
      
      try {
        final json = jsonDecode(line) as Map<String, dynamic>;
        final climb = _parseClimb(json);
        climbs.add(climb);
        
        current++;
        if (onProgress != null && current % 1000 == 0) {
          onProgress(current, total);
        }
      } catch (e) {
        // Skip malformed lines
        continue;
      }
    }

    // Store in batches for better performance
    const batchSize = 1000;
    for (var i = 0; i < climbs.length; i += batchSize) {
      final end = (i + batchSize < climbs.length) ? i + batchSize : climbs.length;
      final batch = climbs.sublist(i, end);
      await _dataSource.storeClimbs(batch);
      
      if (onProgress != null) {
        onProgress(end, total);
      }
    }
  }

  /// Parse a single climb from JSON
  ClimbEntity _parseClimb(Map<String, dynamic> json) {
    // Parse type flags - actual field names from parquet export
    final isSport = json['is_sport'] as bool? ?? false;
    final isTrad = json['is_trad'] as bool? ?? false;
    final isBoulder = json['is_boulder'] as bool? ?? false;
    final isTr = json['is_tr'] as bool? ?? false;
    final isAlpine = json['is_alpine'] as bool? ?? false;
    final isIce = json['is_ice'] as bool? ?? false;
    final isMixed = json['is_mixed'] as bool? ?? false;
    final isAid = json['is_aid'] as bool? ?? false;
    
    // Parse grades - actual field names are flat, not nested
    final yds = json['grade_yds'] as String?;
    final vscale = json['grade_vscale'] as String?;
    final french = json['grade_french'] as String?;
    
    // Calculate numeric grade (0-100 scale)
    int gradeNumeric = _calculateNumericGrade(yds, vscale);
    
    // Build path tokens from separate location fields
    final pathTokens = <String>[];
    final country = json['country'] as String?;
    final stateProvince = json['state_province'] as String?;
    final region = json['region'] as String?;
    final area = json['area'] as String?;
    final crag = json['crag'] as String?;
    
    if (country != null && country.isNotEmpty) pathTokens.add(country);
    if (stateProvince != null && stateProvince.isNotEmpty) pathTokens.add(stateProvince);
    if (region != null && region.isNotEmpty) pathTokens.add(region);
    if (area != null && area.isNotEmpty) pathTokens.add(area);
    if (crag != null && crag.isNotEmpty) pathTokens.add(crag);
    
    return ClimbEntity(
      uuid: json['climb_id'] as String,
      name: json['climb_name'] as String,
      fa: json['first_ascent'] as String?,
      gradeYds: yds,
      gradeVscale: vscale,
      gradeFrench: french,
      gradeNumeric: gradeNumeric,
      typeSport: isSport,
      typeTrad: isTrad,
      typeBouldering: isBoulder,
      typeTr: isTr,
      typeAlpine: isAlpine,
      typeIce: isIce,
      typeMixed: isMixed,
      typeAid: isAid,
      length: json['length_meters'] as int? ?? -1,
      boltsCount: json['bolts_count'] as int? ?? -1,
      safety: json['safety'] as String?,
      lat: (json['latitude'] as num?)?.toDouble(),
      lng: (json['longitude'] as num?)?.toDouble(),
      description: json['description'] as String?,
      protection: json['protection'] as String?,
      areaUuid: json['area_id'] as String? ?? '',
      pathTokens: pathTokens,
    );
  }

  /// Calculate numeric grade on 0-100 scale
  /// YDS: 5.5 = 10, 5.10a = 30, 5.12a = 50, 5.14a = 70
  /// V-scale: V0 = 15, V5 = 40, V10 = 65
  int _calculateNumericGrade(String? yds, String? vscale) {
    if (yds != null) {
      return _parseYds(yds);
    }
    if (vscale != null) {
      return _parseVscale(vscale);
    }
    return 0; // Unknown
  }

  int _parseYds(String yds) {
    // Parse YDS grade like "5.10a", "5.12c", "5.14"
    final regex = RegExp(r'5\.(\d+)([a-d])?');
    final match = regex.firstMatch(yds.toLowerCase());
    
    if (match == null) return 0;
    
    final number = int.tryParse(match.group(1)!) ?? 0;
    final letter = match.group(2);
    
    // Base mapping: 5.5=10, 5.6=12, 5.7=14, ... 5.15=80
    int base = (number - 5) * 10;
    
    // Letter grade adjustment: a=0, b=+1, c=+2, d=+3
    int letterBonus = 0;
    if (letter != null) {
      letterBonus = letter.codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
    }
    
    return base + letterBonus;
  }

  int _parseVscale(String vscale) {
    // Parse V-scale like "V0", "V5", "V10"
    final regex = RegExp(r'V(\d+)');
    final match = regex.firstMatch(vscale.toUpperCase());
    
    if (match == null) return 0;
    
    final number = int.tryParse(match.group(1)!) ?? 0;
    
    // V0 = 15, V1 = 20, V2 = 25, ... V10 = 65
    return 15 + (number * 5);
  }
}
