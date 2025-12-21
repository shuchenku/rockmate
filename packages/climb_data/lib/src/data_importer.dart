import 'dart:convert';
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
    // Parse type flags
    final type = json['type'] as Map<String, dynamic>? ?? {};
    
    // Parse grades
    final grades = json['grades'] as Map<String, dynamic>? ?? {};
    final yds = grades['yds'] as String?;
    final vscale = grades['vscale'] as String?;
    final french = grades['french'] as String?;
    
    // Calculate numeric grade (0-100 scale)
    int gradeNumeric = _calculateNumericGrade(yds, vscale);
    
    // Parse path tokens
    final pathTokens = (json['pathTokens'] as List<dynamic>?)
        ?.map((e) => e.toString())
        .toList() ?? [];
    
    return ClimbEntity(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      fa: json['fa'] as String?,
      gradeYds: yds,
      gradeVscale: vscale,
      gradeFrench: french,
      gradeNumeric: gradeNumeric,
      typeSport: type['sport'] as bool? ?? false,
      typeTrad: type['trad'] as bool? ?? false,
      typeBouldering: type['bouldering'] as bool? ?? false,
      typeTr: type['tr'] as bool? ?? false,
      typeAlpine: type['alpine'] as bool? ?? false,
      typeIce: type['ice'] as bool? ?? false,
      typeMixed: type['mixed'] as bool? ?? false,
      typeAid: type['aid'] as bool? ?? false,
      length: json['length'] as int? ?? -1,
      boltsCount: json['boltsCount'] as int? ?? -1,
      safety: json['safety'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      description: json['description'] as String?,
      protection: json['protection'] as String?,
      areaUuid: json['areaUuid'] as String? ?? '',
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
