import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

class UserProfileModel {
  final String userId;
  final String displayName;
  final String? photoUrl;
  final String? bio;
  final int? age;
  final String? gender;
  final String? location;
  final String? sportGrade;
  final String? boulderGrade;
  final String? tradGrade;
  final bool isPublic;
  final String? favoriteClimbingType;
  final List<String>? grades;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserProfileModel({
    required this.userId,
    required this.displayName,
    this.photoUrl,
    this.bio,
    this.age,
    this.gender,
    this.location,
    this.sportGrade,
    this.boulderGrade,
    this.tradGrade,
    this.isPublic = true,
    this.favoriteClimbingType,
    this.grades,
    this.createdAt,
    this.updatedAt,
  });

  /// Convert to domain entity
  UserProfileEntity toEntity() {
    return UserProfileEntity(
      userId: userId,
      displayName: displayName,
      photoUrl: photoUrl,
      bio: bio,
      age: age,
      gender: gender,
      location: location,
      sportGrade: sportGrade,
      boulderGrade: boulderGrade,
      tradGrade: tradGrade,
      isPublic: isPublic,
      favoriteClimbingType: favoriteClimbingType,
      grades: grades,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Create from domain entity
  factory UserProfileModel.fromEntity(UserProfileEntity entity) {
    return UserProfileModel(
      userId: entity.userId,
      displayName: entity.displayName,
      photoUrl: entity.photoUrl,
      bio: entity.bio,
      age: entity.age,
      gender: entity.gender,
      location: entity.location,
      sportGrade: entity.sportGrade,
      boulderGrade: entity.boulderGrade,
      tradGrade: entity.tradGrade,
      isPublic: entity.isPublic,
      favoriteClimbingType: entity.favoriteClimbingType,
      grades: entity.grades,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  /// Convert to Firestore map
  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'displayName': displayName,
      if (photoUrl != null) 'photoUrl': photoUrl,
      if (bio != null) 'bio': bio,
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender,
      if (location != null) 'location': location,
      if (sportGrade != null) 'sportGrade': sportGrade,
      if (boulderGrade != null) 'boulderGrade': boulderGrade,
      if (tradGrade != null) 'tradGrade': tradGrade,
      'isPublic': isPublic,
      if (favoriteClimbingType != null) 'favoriteClimbingType': favoriteClimbingType,
      if (grades != null) 'grades': grades,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  /// Create from Firestore map
  factory UserProfileModel.fromFirestore(Map<String, dynamic> data) {
    return UserProfileModel(
      userId: data['userId'] as String,
      displayName: data['displayName'] as String,
      photoUrl: data['photoUrl'] as String?,
      bio: data['bio'] as String?,
      age: data['age'] as int?,
      gender: data['gender'] as String?,
      location: data['location'] as String?,
      sportGrade: data['sportGrade'] as String?,
      boulderGrade: data['boulderGrade'] as String?,
      tradGrade: data['tradGrade'] as String?,
      isPublic: data['isPublic'] as bool? ?? true,
      favoriteClimbingType: data['favoriteClimbingType'] as String?,
      grades: (data['grades'] as List<dynamic>?)?.cast<String>(),
      createdAt: data['createdAt'] != null 
          ? DateTime.parse(data['createdAt'] as String)
          : null,
      updatedAt: data['updatedAt'] != null
          ? DateTime.parse(data['updatedAt'] as String)
          : null,
    );
  }
}
