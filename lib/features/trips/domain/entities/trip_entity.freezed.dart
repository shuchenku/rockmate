// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TripEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<String> get todoRoutes => throw _privateConstructorUsedError;
  int get minGrade => throw _privateConstructorUsedError;
  int get maxGrade => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripEntityCopyWith<TripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEntityCopyWith<$Res> {
  factory $TripEntityCopyWith(
    TripEntity value,
    $Res Function(TripEntity) then,
  ) = _$TripEntityCopyWithImpl<$Res, TripEntity>;
  @useResult
  $Res call({
    String id,
    String userId,
    String location,
    DateTime startDate,
    DateTime endDate,
    List<String> todoRoutes,
    int minGrade,
    int maxGrade,
    bool isPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$TripEntityCopyWithImpl<$Res, $Val extends TripEntity>
    implements $TripEntityCopyWith<$Res> {
  _$TripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? location = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? todoRoutes = null,
    Object? minGrade = null,
    Object? maxGrade = null,
    Object? isPublic = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            todoRoutes: null == todoRoutes
                ? _value.todoRoutes
                : todoRoutes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            minGrade: null == minGrade
                ? _value.minGrade
                : minGrade // ignore: cast_nullable_to_non_nullable
                      as int,
            maxGrade: null == maxGrade
                ? _value.maxGrade
                : maxGrade // ignore: cast_nullable_to_non_nullable
                      as int,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$TripEntityImplCopyWith<$Res>
    implements $TripEntityCopyWith<$Res> {
  factory _$$TripEntityImplCopyWith(
    _$TripEntityImpl value,
    $Res Function(_$TripEntityImpl) then,
  ) = __$$TripEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String location,
    DateTime startDate,
    DateTime endDate,
    List<String> todoRoutes,
    int minGrade,
    int maxGrade,
    bool isPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$TripEntityImplCopyWithImpl<$Res>
    extends _$TripEntityCopyWithImpl<$Res, _$TripEntityImpl>
    implements _$$TripEntityImplCopyWith<$Res> {
  __$$TripEntityImplCopyWithImpl(
    _$TripEntityImpl _value,
    $Res Function(_$TripEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? location = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? todoRoutes = null,
    Object? minGrade = null,
    Object? maxGrade = null,
    Object? isPublic = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$TripEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        todoRoutes: null == todoRoutes
            ? _value._todoRoutes
            : todoRoutes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        minGrade: null == minGrade
            ? _value.minGrade
            : minGrade // ignore: cast_nullable_to_non_nullable
                  as int,
        maxGrade: null == maxGrade
            ? _value.maxGrade
            : maxGrade // ignore: cast_nullable_to_non_nullable
                  as int,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
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

class _$TripEntityImpl implements _TripEntity {
  const _$TripEntityImpl({
    required this.id,
    required this.userId,
    required this.location,
    required this.startDate,
    required this.endDate,
    final List<String> todoRoutes = const [],
    this.minGrade = 0,
    this.maxGrade = 0,
    this.isPublic = true,
    this.createdAt,
    this.updatedAt,
  }) : _todoRoutes = todoRoutes;

  @override
  final String id;
  @override
  final String userId;
  @override
  final String location;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<String> _todoRoutes;
  @override
  @JsonKey()
  List<String> get todoRoutes {
    if (_todoRoutes is EqualUnmodifiableListView) return _todoRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoRoutes);
  }

  @override
  @JsonKey()
  final int minGrade;
  @override
  @JsonKey()
  final int maxGrade;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TripEntity(id: $id, userId: $userId, location: $location, startDate: $startDate, endDate: $endDate, todoRoutes: $todoRoutes, minGrade: $minGrade, maxGrade: $maxGrade, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(
              other._todoRoutes,
              _todoRoutes,
            ) &&
            (identical(other.minGrade, minGrade) ||
                other.minGrade == minGrade) &&
            (identical(other.maxGrade, maxGrade) ||
                other.maxGrade == maxGrade) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    location,
    startDate,
    endDate,
    const DeepCollectionEquality().hash(_todoRoutes),
    minGrade,
    maxGrade,
    isPublic,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripEntityImplCopyWith<_$TripEntityImpl> get copyWith =>
      __$$TripEntityImplCopyWithImpl<_$TripEntityImpl>(this, _$identity);
}

abstract class _TripEntity implements TripEntity {
  const factory _TripEntity({
    required final String id,
    required final String userId,
    required final String location,
    required final DateTime startDate,
    required final DateTime endDate,
    final List<String> todoRoutes,
    final int minGrade,
    final int maxGrade,
    final bool isPublic,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$TripEntityImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get location;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<String> get todoRoutes;
  @override
  int get minGrade;
  @override
  int get maxGrade;
  @override
  bool get isPublic;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripEntityImplCopyWith<_$TripEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
