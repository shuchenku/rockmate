import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required String userId,
    required String displayName,
    String? photoUrl,
    String? bio,
    int? age,
    String? gender,
    String? location,
    String? sportGrade,
    String? boulderGrade,
    String? tradGrade,
    @Default(true) bool isPublic,
    String? favoriteClimbingType,
    List<String>? grades,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserProfileEntity;
}
