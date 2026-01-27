import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

part 'user_profile_event.freezed.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.loadProfile(String userId) = LoadProfile;
  const factory UserProfileEvent.updateProfile(UserProfileEntity profile) = UpdateProfile;
  const factory UserProfileEvent.setEditMode(bool isEditing) = SetEditMode;
  const factory UserProfileEvent.uploadPhoto(String photoPath) = UploadPhoto;
  const factory UserProfileEvent.signOut() = SignOut;
  const factory UserProfileEvent.deleteProfile() = DeleteProfile;
}
