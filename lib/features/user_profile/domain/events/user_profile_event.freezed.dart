// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
    UserProfileEvent value,
    $Res Function(UserProfileEvent) then,
  ) = _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProfileImplCopyWith<$Res> {
  factory _$$LoadProfileImplCopyWith(
    _$LoadProfileImpl value,
    $Res Function(_$LoadProfileImpl) then,
  ) = __$$LoadProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadProfileImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$LoadProfileImpl>
    implements _$$LoadProfileImplCopyWith<$Res> {
  __$$LoadProfileImplCopyWithImpl(
    _$LoadProfileImpl _value,
    $Res Function(_$LoadProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$LoadProfileImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadProfileImpl implements LoadProfile {
  const _$LoadProfileImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserProfileEvent.loadProfile(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProfileImplCopyWith<_$LoadProfileImpl> get copyWith =>
      __$$LoadProfileImplCopyWithImpl<_$LoadProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) {
    return loadProfile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) {
    return loadProfile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class LoadProfile implements UserProfileEvent {
  const factory LoadProfile(final String userId) = _$LoadProfileImpl;

  String get userId;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadProfileImplCopyWith<_$LoadProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
    _$UpdateProfileImpl value,
    $Res Function(_$UpdateProfileImpl) then,
  ) = __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileEntity profile});

  $UserProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
    _$UpdateProfileImpl _value,
    $Res Function(_$UpdateProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null}) {
    return _then(
      _$UpdateProfileImpl(
        null == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as UserProfileEntity,
      ),
    );
  }

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileEntityCopyWith<$Res> get profile {
    return $UserProfileEntityCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$UpdateProfileImpl implements UpdateProfile {
  const _$UpdateProfileImpl(this.profile);

  @override
  final UserProfileEntity profile;

  @override
  String toString() {
    return 'UserProfileEvent.updateProfile(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) {
    return updateProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) {
    return updateProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements UserProfileEvent {
  const factory UpdateProfile(final UserProfileEntity profile) =
      _$UpdateProfileImpl;

  UserProfileEntity get profile;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetEditModeImplCopyWith<$Res> {
  factory _$$SetEditModeImplCopyWith(
    _$SetEditModeImpl value,
    $Res Function(_$SetEditModeImpl) then,
  ) = __$$SetEditModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class __$$SetEditModeImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$SetEditModeImpl>
    implements _$$SetEditModeImplCopyWith<$Res> {
  __$$SetEditModeImplCopyWithImpl(
    _$SetEditModeImpl _value,
    $Res Function(_$SetEditModeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isEditing = null}) {
    return _then(
      _$SetEditModeImpl(
        null == isEditing
            ? _value.isEditing
            : isEditing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SetEditModeImpl implements SetEditMode {
  const _$SetEditModeImpl(this.isEditing);

  @override
  final bool isEditing;

  @override
  String toString() {
    return 'UserProfileEvent.setEditMode(isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEditModeImpl &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditing);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetEditModeImplCopyWith<_$SetEditModeImpl> get copyWith =>
      __$$SetEditModeImplCopyWithImpl<_$SetEditModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) {
    return setEditMode(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) {
    return setEditMode?.call(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (setEditMode != null) {
      return setEditMode(isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return setEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return setEditMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (setEditMode != null) {
      return setEditMode(this);
    }
    return orElse();
  }
}

abstract class SetEditMode implements UserProfileEvent {
  const factory SetEditMode(final bool isEditing) = _$SetEditModeImpl;

  bool get isEditing;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetEditModeImplCopyWith<_$SetEditModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadPhotoImplCopyWith<$Res> {
  factory _$$UploadPhotoImplCopyWith(
    _$UploadPhotoImpl value,
    $Res Function(_$UploadPhotoImpl) then,
  ) = __$$UploadPhotoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String photoPath});
}

/// @nodoc
class __$$UploadPhotoImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$UploadPhotoImpl>
    implements _$$UploadPhotoImplCopyWith<$Res> {
  __$$UploadPhotoImplCopyWithImpl(
    _$UploadPhotoImpl _value,
    $Res Function(_$UploadPhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? photoPath = null}) {
    return _then(
      _$UploadPhotoImpl(
        null == photoPath
            ? _value.photoPath
            : photoPath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UploadPhotoImpl implements UploadPhoto {
  const _$UploadPhotoImpl(this.photoPath);

  @override
  final String photoPath;

  @override
  String toString() {
    return 'UserProfileEvent.uploadPhoto(photoPath: $photoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPhotoImpl &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoPath);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPhotoImplCopyWith<_$UploadPhotoImpl> get copyWith =>
      __$$UploadPhotoImplCopyWithImpl<_$UploadPhotoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) {
    return uploadPhoto(photoPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) {
    return uploadPhoto?.call(photoPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(photoPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return uploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return uploadPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(this);
    }
    return orElse();
  }
}

abstract class UploadPhoto implements UserProfileEvent {
  const factory UploadPhoto(final String photoPath) = _$UploadPhotoImpl;

  String get photoPath;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadPhotoImplCopyWith<_$UploadPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
    _$SignOutImpl value,
    $Res Function(_$SignOutImpl) then,
  ) = __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
    _$SignOutImpl _value,
    $Res Function(_$SignOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'UserProfileEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements UserProfileEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$DeleteProfileImplCopyWith<$Res> {
  factory _$$DeleteProfileImplCopyWith(
    _$DeleteProfileImpl value,
    $Res Function(_$DeleteProfileImpl) then,
  ) = __$$DeleteProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProfileImplCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$DeleteProfileImpl>
    implements _$$DeleteProfileImplCopyWith<$Res> {
  __$$DeleteProfileImplCopyWithImpl(
    _$DeleteProfileImpl _value,
    $Res Function(_$DeleteProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteProfileImpl implements DeleteProfile {
  const _$DeleteProfileImpl();

  @override
  String toString() {
    return 'UserProfileEvent.deleteProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadProfile,
    required TResult Function(UserProfileEntity profile) updateProfile,
    required TResult Function(bool isEditing) setEditMode,
    required TResult Function(String photoPath) uploadPhoto,
    required TResult Function() signOut,
    required TResult Function() deleteProfile,
  }) {
    return deleteProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadProfile,
    TResult? Function(UserProfileEntity profile)? updateProfile,
    TResult? Function(bool isEditing)? setEditMode,
    TResult? Function(String photoPath)? uploadPhoto,
    TResult? Function()? signOut,
    TResult? Function()? deleteProfile,
  }) {
    return deleteProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadProfile,
    TResult Function(UserProfileEntity profile)? updateProfile,
    TResult Function(bool isEditing)? setEditMode,
    TResult Function(String photoPath)? uploadPhoto,
    TResult Function()? signOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfile value) loadProfile,
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(SetEditMode value) setEditMode,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteProfile value) deleteProfile,
  }) {
    return deleteProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfile value)? loadProfile,
    TResult? Function(UpdateProfile value)? updateProfile,
    TResult? Function(SetEditMode value)? setEditMode,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(DeleteProfile value)? deleteProfile,
  }) {
    return deleteProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfile value)? loadProfile,
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(SetEditMode value)? setEditMode,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile(this);
    }
    return orElse();
  }
}

abstract class DeleteProfile implements UserProfileEvent {
  const factory DeleteProfile() = _$DeleteProfileImpl;
}
