import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

abstract class UserProfileRepository {
  /// Get profile for a specific user
  Future<UserProfileEntity?> getProfile(String userId);
  
  /// Save or update a profile
  Future<void> saveProfile(UserProfileEntity profile);
  
  /// Delete a profile
  Future<void> deleteProfile(String userId);
  
  /// Watch profile changes (reactive)
  Stream<UserProfileEntity?> watchProfile(String userId);
}
