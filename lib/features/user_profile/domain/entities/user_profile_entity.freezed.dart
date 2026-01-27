// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserProfileEntity {
  String get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get sportGrade => throw _privateConstructorUsedError;
  String? get boulderGrade => throw _privateConstructorUsedError;
  String? get tradGrade => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String? get favoriteClimbingType => throw _privateConstructorUsedError;
  List<String>? get grades => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileEntityCopyWith<UserProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEntityCopyWith<$Res> {
  factory $UserProfileEntityCopyWith(
    UserProfileEntity value,
    $Res Function(UserProfileEntity) then,
  ) = _$UserProfileEntityCopyWithImpl<$Res, UserProfileEntity>;
  @useResult
  $Res call({
    String userId,
    String displayName,
    String? photoUrl,
    String? bio,
    int? age,
    String? gender,
    String? location,
    String? sportGrade,
    String? boulderGrade,
    String? tradGrade,
    bool isPublic,
    String? favoriteClimbingType,
    List<String>? grades,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$UserProfileEntityCopyWithImpl<$Res, $Val extends UserProfileEntity>
    implements $UserProfileEntityCopyWith<$Res> {
  _$UserProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? photoUrl = freezed,
    Object? bio = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? sportGrade = freezed,
    Object? boulderGrade = freezed,
    Object? tradGrade = freezed,
    Object? isPublic = null,
    Object? favoriteClimbingType = freezed,
    Object? grades = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            photoUrl: freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            age: freezed == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as int?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            sportGrade: freezed == sportGrade
                ? _value.sportGrade
                : sportGrade // ignore: cast_nullable_to_non_nullable
                      as String?,
            boulderGrade: freezed == boulderGrade
                ? _value.boulderGrade
                : boulderGrade // ignore: cast_nullable_to_non_nullable
                      as String?,
            tradGrade: freezed == tradGrade
                ? _value.tradGrade
                : tradGrade // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            favoriteClimbingType: freezed == favoriteClimbingType
                ? _value.favoriteClimbingType
                : favoriteClimbingType // ignore: cast_nullable_to_non_nullable
                      as String?,
            grades: freezed == grades
                ? _value.grades
                : grades // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileEntityImplCopyWith<$Res>
    implements $UserProfileEntityCopyWith<$Res> {
  factory _$$UserProfileEntityImplCopyWith(
    _$UserProfileEntityImpl value,
    $Res Function(_$UserProfileEntityImpl) then,
  ) = __$$UserProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String displayName,
    String? photoUrl,
    String? bio,
    int? age,
    String? gender,
    String? location,
    String? sportGrade,
    String? boulderGrade,
    String? tradGrade,
    bool isPublic,
    String? favoriteClimbingType,
    List<String>? grades,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$UserProfileEntityImplCopyWithImpl<$Res>
    extends _$UserProfileEntityCopyWithImpl<$Res, _$UserProfileEntityImpl>
    implements _$$UserProfileEntityImplCopyWith<$Res> {
  __$$UserProfileEntityImplCopyWithImpl(
    _$UserProfileEntityImpl _value,
    $Res Function(_$UserProfileEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? photoUrl = freezed,
    Object? bio = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? sportGrade = freezed,
    Object? boulderGrade = freezed,
    Object? tradGrade = freezed,
    Object? isPublic = null,
    Object? favoriteClimbingType = freezed,
    Object? grades = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserProfileEntityImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        photoUrl: freezed == photoUrl
            ? _value.photoUrl
            : photoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        age: freezed == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as int?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        sportGrade: freezed == sportGrade
            ? _value.sportGrade
            : sportGrade // ignore: cast_nullable_to_non_nullable
                  as String?,
        boulderGrade: freezed == boulderGrade
            ? _value.boulderGrade
            : boulderGrade // ignore: cast_nullable_to_non_nullable
                  as String?,
        tradGrade: freezed == tradGrade
            ? _value.tradGrade
            : tradGrade // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        favoriteClimbingType: freezed == favoriteClimbingType
            ? _value.favoriteClimbingType
            : favoriteClimbingType // ignore: cast_nullable_to_non_nullable
                  as String?,
        grades: freezed == grades
            ? _value._grades
            : grades // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$UserProfileEntityImpl implements _UserProfileEntity {
  const _$UserProfileEntityImpl({
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
    final List<String>? grades,
    this.createdAt,
    this.updatedAt,
  }) : _grades = grades;

  @override
  final String userId;
  @override
  final String displayName;
  @override
  final String? photoUrl;
  @override
  final String? bio;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final String? location;
  @override
  final String? sportGrade;
  @override
  final String? boulderGrade;
  @override
  final String? tradGrade;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  final String? favoriteClimbingType;
  final List<String>? _grades;
  @override
  List<String>? get grades {
    final value = _grades;
    if (value == null) return null;
    if (_grades is EqualUnmodifiableListView) return _grades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserProfileEntity(userId: $userId, displayName: $displayName, photoUrl: $photoUrl, bio: $bio, age: $age, gender: $gender, location: $location, sportGrade: $sportGrade, boulderGrade: $boulderGrade, tradGrade: $tradGrade, isPublic: $isPublic, favoriteClimbingType: $favoriteClimbingType, grades: $grades, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.sportGrade, sportGrade) ||
                other.sportGrade == sportGrade) &&
            (identical(other.boulderGrade, boulderGrade) ||
                other.boulderGrade == boulderGrade) &&
            (identical(other.tradGrade, tradGrade) ||
                other.tradGrade == tradGrade) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.favoriteClimbingType, favoriteClimbingType) ||
                other.favoriteClimbingType == favoriteClimbingType) &&
            const DeepCollectionEquality().equals(other._grades, _grades) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    displayName,
    photoUrl,
    bio,
    age,
    gender,
    location,
    sportGrade,
    boulderGrade,
    tradGrade,
    isPublic,
    favoriteClimbingType,
    const DeepCollectionEquality().hash(_grades),
    createdAt,
    updatedAt,
  );

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileEntityImplCopyWith<_$UserProfileEntityImpl> get copyWith =>
      __$$UserProfileEntityImplCopyWithImpl<_$UserProfileEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _UserProfileEntity implements UserProfileEntity {
  const factory _UserProfileEntity({
    required final String userId,
    required final String displayName,
    final String? photoUrl,
    final String? bio,
    final int? age,
    final String? gender,
    final String? location,
    final String? sportGrade,
    final String? boulderGrade,
    final String? tradGrade,
    final bool isPublic,
    final String? favoriteClimbingType,
    final List<String>? grades,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$UserProfileEntityImpl;

  @override
  String get userId;
  @override
  String get displayName;
  @override
  String? get photoUrl;
  @override
  String? get bio;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  String? get location;
  @override
  String? get sportGrade;
  @override
  String? get boulderGrade;
  @override
  String? get tradGrade;
  @override
  bool get isPublic;
  @override
  String? get favoriteClimbingType;
  @override
  List<String>? get grades;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileEntityImplCopyWith<_$UserProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
