import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = Initial;
  const factory UserProfileState.loading() = Loading;
  const factory UserProfileState.loaded(UserProfileEntity profile, {@Default(false) bool isEditing}) = Loaded;
  const factory UserProfileState.uploading(double progress) = Uploading;
  const factory UserProfileState.error(String message) = Error;
}
