import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rockmate/features/trips/domain/entities/trip_entity.dart';

class TripModel {
  final String id;
  final String userId;
  final String location;
  final DateTime startDate;
  final DateTime endDate;
  final List<String> todoRoutes;
  final int minGrade;
  final int maxGrade;
  final bool isPublic;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  TripModel({
    required this.id,
    required this.userId,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.todoRoutes,
    required this.minGrade,
    required this.maxGrade,
    this.isPublic = true,
    this.createdAt,
    this.updatedAt,
  });

  /// Convert to domain entity
  TripEntity toEntity() {
    return TripEntity(
      id: id,
      userId: userId,
      location: location,
      startDate: startDate,
      endDate: endDate,
      todoRoutes: todoRoutes,
      minGrade: minGrade,
      maxGrade: maxGrade,
      isPublic: isPublic,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Create from domain entity
  factory TripModel.fromEntity(TripEntity entity) {
    return TripModel(
      id: entity.id,
      userId: entity.userId,
      location: entity.location,
      startDate: entity.startDate,
      endDate: entity.endDate,
      todoRoutes: entity.todoRoutes,
      minGrade: entity.minGrade,
      maxGrade: entity.maxGrade,
      isPublic: entity.isPublic,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  /// Convert to Firestore map
  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'location': location,
      'startDate': Timestamp.fromDate(startDate),
      'endDate': Timestamp.fromDate(endDate),
      'todoRoutes': todoRoutes,
      'minGrade': minGrade,
      'maxGrade': maxGrade,
      'isPublic': isPublic,
      if (createdAt != null) 'createdAt': Timestamp.fromDate(createdAt!),
      'updatedAt': FieldValue.serverTimestamp(),
    };
  }

  /// Create from Firestore map
  factory TripModel.fromFirestore(Map<String, dynamic> data, String id) {
    return TripModel(
      id: id,
      userId: data['userId'] as String,
      location: data['location'] as String,
      startDate: (data['startDate'] as Timestamp).toDate(),
      endDate: (data['endDate'] as Timestamp).toDate(),
      todoRoutes: (data['todoRoutes'] as List<dynamic>?)?.cast<String>() ?? [],
      minGrade: data['minGrade'] as int? ?? 0,
      maxGrade: data['maxGrade'] as int? ?? 100,
      isPublic: data['isPublic'] as bool? ?? true,
      createdAt: data['createdAt'] != null 
          ? (data['createdAt'] as Timestamp).toDate() 
          : null,
      updatedAt: data['updatedAt'] != null
          ? (data['updatedAt'] as Timestamp).toDate()
          : null,
    );
  }
}
