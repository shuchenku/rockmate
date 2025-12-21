import 'package:hive/hive.dart';

part 'climb_entity.g.dart';

@HiveType(typeId: 1)
class ClimbEntity extends HiveObject {
  @HiveField(0)
  final String uuid;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String? fa;

  @HiveField(3)
  final String? gradeYds;

  @HiveField(4)
  final String? gradeVscale;

  @HiveField(5)
  final String? gradeFrench;

  /// Normalized grade on 0-100 scale for efficient range filtering
  @HiveField(6)
  final int gradeNumeric;

  @HiveField(7)
  final bool typeSport;

  @HiveField(8)
  final bool typeTrad;

  @HiveField(9)
  final bool typeBouldering;

  @HiveField(10)
  final bool typeTr;

  @HiveField(11)
  final bool typeAlpine;

  @HiveField(12)
  final bool typeIce;

  @HiveField(13)
  final bool typeMixed;

  @HiveField(14)
  final bool typeAid;

  @HiveField(15)
  final int length;

  @HiveField(16)
  final int boltsCount;

  @HiveField(17)
  final String? safety;

  @HiveField(18)
  final double? lat;

  @HiveField(19)
  final double? lng;

  @HiveField(20)
  final String? description;

  @HiveField(21)
  final String? protection;

  @HiveField(22)
  final String areaUuid;

  @HiveField(23)
  final List<String> pathTokens;

  ClimbEntity({
    required this.uuid,
    required this.name,
    this.fa,
    this.gradeYds,
    this.gradeVscale,
    this.gradeFrench,
    required this.gradeNumeric,
    this.typeSport = false,
    this.typeTrad = false,
    this.typeBouldering = false,
    this.typeTr = false,
    this.typeAlpine = false,
    this.typeIce = false,
    this.typeMixed = false,
    this.typeAid = false,
    this.length = -1,
    this.boltsCount = -1,
    this.safety,
    this.lat,
    this.lng,
    this.description,
    this.protection,
    required this.areaUuid,
    required this.pathTokens,
  });

  /// Get primary climb type as string
  String get primaryType {
    if (typeSport) return 'Sport';
    if (typeTrad) return 'Trad';
    if (typeBouldering) return 'Boulder';
    if (typeTr) return 'Top Rope';
    if (typeAlpine) return 'Alpine';
    if (typeIce) return 'Ice';
    if (typeMixed) return 'Mixed';
    if (typeAid) return 'Aid';
    return 'Unknown';
  }

  /// Get display grade (prefers YDS, falls back to V-scale, then French)
  String get displayGrade {
    if (gradeYds != null) return gradeYds!;
    if (gradeVscale != null) return gradeVscale!;
    if (gradeFrench != null) return gradeFrench!;
    return 'Unknown';
  }

  /// Get location string from path tokens
  String get locationString {
    if (pathTokens.isEmpty) return 'Unknown';
    if (pathTokens.length == 1) return pathTokens[0];
    // Return last 2 tokens: [State, Area] or [Area, Crag]
    if (pathTokens.length >= 2) {
      return '${pathTokens[pathTokens.length - 2]} > ${pathTokens.last}';
    }
    return pathTokens.last;
  }
}
