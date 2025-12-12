// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tick_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TickEntity _$TickEntityFromJson(Map<String, dynamic> json) {
  return _TickEntity.fromJson(json);
}

/// @nodoc
mixin _$TickEntity {
  String get id => throw _privateConstructorUsedError;
  String get routeId => throw _privateConstructorUsedError;
  String get routeName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  TickStatus get status => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get routeGrade => throw _privateConstructorUsedError;

  /// Serializes this TickEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TickEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TickEntityCopyWith<TickEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickEntityCopyWith<$Res> {
  factory $TickEntityCopyWith(
    TickEntity value,
    $Res Function(TickEntity) then,
  ) = _$TickEntityCopyWithImpl<$Res, TickEntity>;
  @useResult
  $Res call({
    String id,
    String routeId,
    String routeName,
    DateTime date,
    TickStatus status,
    String comment,
    String location,
    String routeGrade,
  });
}

/// @nodoc
class _$TickEntityCopyWithImpl<$Res, $Val extends TickEntity>
    implements $TickEntityCopyWith<$Res> {
  _$TickEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TickEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeId = null,
    Object? routeName = null,
    Object? date = null,
    Object? status = null,
    Object? comment = null,
    Object? location = null,
    Object? routeGrade = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            routeId: null == routeId
                ? _value.routeId
                : routeId // ignore: cast_nullable_to_non_nullable
                      as String,
            routeName: null == routeName
                ? _value.routeName
                : routeName // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TickStatus,
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            routeGrade: null == routeGrade
                ? _value.routeGrade
                : routeGrade // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TickEntityImplCopyWith<$Res>
    implements $TickEntityCopyWith<$Res> {
  factory _$$TickEntityImplCopyWith(
    _$TickEntityImpl value,
    $Res Function(_$TickEntityImpl) then,
  ) = __$$TickEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String routeId,
    String routeName,
    DateTime date,
    TickStatus status,
    String comment,
    String location,
    String routeGrade,
  });
}

/// @nodoc
class __$$TickEntityImplCopyWithImpl<$Res>
    extends _$TickEntityCopyWithImpl<$Res, _$TickEntityImpl>
    implements _$$TickEntityImplCopyWith<$Res> {
  __$$TickEntityImplCopyWithImpl(
    _$TickEntityImpl _value,
    $Res Function(_$TickEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TickEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeId = null,
    Object? routeName = null,
    Object? date = null,
    Object? status = null,
    Object? comment = null,
    Object? location = null,
    Object? routeGrade = null,
  }) {
    return _then(
      _$TickEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        routeId: null == routeId
            ? _value.routeId
            : routeId // ignore: cast_nullable_to_non_nullable
                  as String,
        routeName: null == routeName
            ? _value.routeName
            : routeName // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TickStatus,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        routeGrade: null == routeGrade
            ? _value.routeGrade
            : routeGrade // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TickEntityImpl implements _TickEntity {
  const _$TickEntityImpl({
    required this.id,
    required this.routeId,
    required this.routeName,
    required this.date,
    required this.status,
    required this.comment,
    required this.location,
    required this.routeGrade,
  });

  factory _$TickEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TickEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String routeId;
  @override
  final String routeName;
  @override
  final DateTime date;
  @override
  final TickStatus status;
  @override
  final String comment;
  @override
  final String location;
  @override
  final String routeGrade;

  @override
  String toString() {
    return 'TickEntity(id: $id, routeId: $routeId, routeName: $routeName, date: $date, status: $status, comment: $comment, location: $location, routeGrade: $routeGrade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.routeGrade, routeGrade) ||
                other.routeGrade == routeGrade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    routeId,
    routeName,
    date,
    status,
    comment,
    location,
    routeGrade,
  );

  /// Create a copy of TickEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TickEntityImplCopyWith<_$TickEntityImpl> get copyWith =>
      __$$TickEntityImplCopyWithImpl<_$TickEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TickEntityImplToJson(this);
  }
}

abstract class _TickEntity implements TickEntity {
  const factory _TickEntity({
    required final String id,
    required final String routeId,
    required final String routeName,
    required final DateTime date,
    required final TickStatus status,
    required final String comment,
    required final String location,
    required final String routeGrade,
  }) = _$TickEntityImpl;

  factory _TickEntity.fromJson(Map<String, dynamic> json) =
      _$TickEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get routeId;
  @override
  String get routeName;
  @override
  DateTime get date;
  @override
  TickStatus get status;
  @override
  String get comment;
  @override
  String get location;
  @override
  String get routeGrade;

  /// Create a copy of TickEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TickEntityImplCopyWith<_$TickEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
