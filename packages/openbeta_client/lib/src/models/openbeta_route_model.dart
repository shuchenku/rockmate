class OpenBetaRouteModel {
  final String id;
  final String name;
  final String grade;
  final String type;
  final double rating;
  final String location;

  OpenBetaRouteModel({
    required this.id,
    required this.name,
    required this.grade,
    required this.type,
    required this.rating,
    required this.location,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenBetaRouteModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          grade == other.grade &&
          type == other.type &&
          rating == other.rating &&
          location == other.location;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      grade.hashCode ^
      type.hashCode ^
      rating.hashCode ^
      location.hashCode;

  @override
  String toString() {
    return 'OpenBetaRouteModel{id: $id, name: $name, grade: $grade, type: $type, rating: $rating, location: $location}';
  }
}
