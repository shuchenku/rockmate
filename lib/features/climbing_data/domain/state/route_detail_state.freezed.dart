// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String routeId) loading,
    required TResult Function(ClimbEntity climb) success,
    required TResult Function(String routeId, String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String routeId)? loading,
    TResult? Function(ClimbEntity climb)? success,
    TResult? Function(String routeId, String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String routeId)? loading,
    TResult Function(ClimbEntity climb)? success,
    TResult Function(String routeId, String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailStateInitial value) initial,
    required TResult Function(RouteDetailStateLoading value) loading,
    required TResult Function(RouteDetailStateSuccess value) success,
    required TResult Function(RouteDetailStateError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailStateInitial value)? initial,
    TResult? Function(RouteDetailStateLoading value)? loading,
    TResult? Function(RouteDetailStateSuccess value)? success,
    TResult? Function(RouteDetailStateError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailStateInitial value)? initial,
    TResult Function(RouteDetailStateLoading value)? loading,
    TResult Function(RouteDetailStateSuccess value)? success,
    TResult Function(RouteDetailStateError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDetailStateCopyWith<$Res> {
  factory $RouteDetailStateCopyWith(
    RouteDetailState value,
    $Res Function(RouteDetailState) then,
  ) = _$RouteDetailStateCopyWithImpl<$Res, RouteDetailState>;
}

/// @nodoc
class _$RouteDetailStateCopyWithImpl<$Res, $Val extends RouteDetailState>
    implements $RouteDetailStateCopyWith<$Res> {
  _$RouteDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RouteDetailStateInitialImplCopyWith<$Res> {
  factory _$$RouteDetailStateInitialImplCopyWith(
    _$RouteDetailStateInitialImpl value,
    $Res Function(_$RouteDetailStateInitialImpl) then,
  ) = __$$RouteDetailStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouteDetailStateInitialImplCopyWithImpl<$Res>
    extends _$RouteDetailStateCopyWithImpl<$Res, _$RouteDetailStateInitialImpl>
    implements _$$RouteDetailStateInitialImplCopyWith<$Res> {
  __$$RouteDetailStateInitialImplCopyWithImpl(
    _$RouteDetailStateInitialImpl _value,
    $Res Function(_$RouteDetailStateInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RouteDetailStateInitialImpl implements RouteDetailStateInitial {
  const _$RouteDetailStateInitialImpl();

  @override
  String toString() {
    return 'RouteDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String routeId) loading,
    required TResult Function(ClimbEntity climb) success,
    required TResult Function(String routeId, String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String routeId)? loading,
    TResult? Function(ClimbEntity climb)? success,
    TResult? Function(String routeId, String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String routeId)? loading,
    TResult Function(ClimbEntity climb)? success,
    TResult Function(String routeId, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailStateInitial value) initial,
    required TResult Function(RouteDetailStateLoading value) loading,
    required TResult Function(RouteDetailStateSuccess value) success,
    required TResult Function(RouteDetailStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailStateInitial value)? initial,
    TResult? Function(RouteDetailStateLoading value)? loading,
    TResult? Function(RouteDetailStateSuccess value)? success,
    TResult? Function(RouteDetailStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailStateInitial value)? initial,
    TResult Function(RouteDetailStateLoading value)? loading,
    TResult Function(RouteDetailStateSuccess value)? success,
    TResult Function(RouteDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RouteDetailStateInitial implements RouteDetailState {
  const factory RouteDetailStateInitial() = _$RouteDetailStateInitialImpl;
}

/// @nodoc
abstract class _$$RouteDetailStateLoadingImplCopyWith<$Res> {
  factory _$$RouteDetailStateLoadingImplCopyWith(
    _$RouteDetailStateLoadingImpl value,
    $Res Function(_$RouteDetailStateLoadingImpl) then,
  ) = __$$RouteDetailStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeId});
}

/// @nodoc
class __$$RouteDetailStateLoadingImplCopyWithImpl<$Res>
    extends _$RouteDetailStateCopyWithImpl<$Res, _$RouteDetailStateLoadingImpl>
    implements _$$RouteDetailStateLoadingImplCopyWith<$Res> {
  __$$RouteDetailStateLoadingImplCopyWithImpl(
    _$RouteDetailStateLoadingImpl _value,
    $Res Function(_$RouteDetailStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? routeId = null}) {
    return _then(
      _$RouteDetailStateLoadingImpl(
        routeId: null == routeId
            ? _value.routeId
            : routeId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RouteDetailStateLoadingImpl implements RouteDetailStateLoading {
  const _$RouteDetailStateLoadingImpl({required this.routeId});

  @override
  final String routeId;

  @override
  String toString() {
    return 'RouteDetailState.loading(routeId: $routeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailStateLoadingImpl &&
            (identical(other.routeId, routeId) || other.routeId == routeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeId);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDetailStateLoadingImplCopyWith<_$RouteDetailStateLoadingImpl>
  get copyWith =>
      __$$RouteDetailStateLoadingImplCopyWithImpl<
        _$RouteDetailStateLoadingImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String routeId) loading,
    required TResult Function(ClimbEntity climb) success,
    required TResult Function(String routeId, String message) error,
  }) {
    return loading(routeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String routeId)? loading,
    TResult? Function(ClimbEntity climb)? success,
    TResult? Function(String routeId, String message)? error,
  }) {
    return loading?.call(routeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String routeId)? loading,
    TResult Function(ClimbEntity climb)? success,
    TResult Function(String routeId, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(routeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailStateInitial value) initial,
    required TResult Function(RouteDetailStateLoading value) loading,
    required TResult Function(RouteDetailStateSuccess value) success,
    required TResult Function(RouteDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailStateInitial value)? initial,
    TResult? Function(RouteDetailStateLoading value)? loading,
    TResult? Function(RouteDetailStateSuccess value)? success,
    TResult? Function(RouteDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailStateInitial value)? initial,
    TResult Function(RouteDetailStateLoading value)? loading,
    TResult Function(RouteDetailStateSuccess value)? success,
    TResult Function(RouteDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RouteDetailStateLoading implements RouteDetailState {
  const factory RouteDetailStateLoading({required final String routeId}) =
      _$RouteDetailStateLoadingImpl;

  String get routeId;

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteDetailStateLoadingImplCopyWith<_$RouteDetailStateLoadingImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteDetailStateSuccessImplCopyWith<$Res> {
  factory _$$RouteDetailStateSuccessImplCopyWith(
    _$RouteDetailStateSuccessImpl value,
    $Res Function(_$RouteDetailStateSuccessImpl) then,
  ) = __$$RouteDetailStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClimbEntity climb});
}

/// @nodoc
class __$$RouteDetailStateSuccessImplCopyWithImpl<$Res>
    extends _$RouteDetailStateCopyWithImpl<$Res, _$RouteDetailStateSuccessImpl>
    implements _$$RouteDetailStateSuccessImplCopyWith<$Res> {
  __$$RouteDetailStateSuccessImplCopyWithImpl(
    _$RouteDetailStateSuccessImpl _value,
    $Res Function(_$RouteDetailStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? climb = null}) {
    return _then(
      _$RouteDetailStateSuccessImpl(
        climb: null == climb
            ? _value.climb
            : climb // ignore: cast_nullable_to_non_nullable
                  as ClimbEntity,
      ),
    );
  }
}

/// @nodoc

class _$RouteDetailStateSuccessImpl implements RouteDetailStateSuccess {
  const _$RouteDetailStateSuccessImpl({required this.climb});

  @override
  final ClimbEntity climb;

  @override
  String toString() {
    return 'RouteDetailState.success(climb: $climb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailStateSuccessImpl &&
            (identical(other.climb, climb) || other.climb == climb));
  }

  @override
  int get hashCode => Object.hash(runtimeType, climb);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDetailStateSuccessImplCopyWith<_$RouteDetailStateSuccessImpl>
  get copyWith =>
      __$$RouteDetailStateSuccessImplCopyWithImpl<
        _$RouteDetailStateSuccessImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String routeId) loading,
    required TResult Function(ClimbEntity climb) success,
    required TResult Function(String routeId, String message) error,
  }) {
    return success(climb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String routeId)? loading,
    TResult? Function(ClimbEntity climb)? success,
    TResult? Function(String routeId, String message)? error,
  }) {
    return success?.call(climb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String routeId)? loading,
    TResult Function(ClimbEntity climb)? success,
    TResult Function(String routeId, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(climb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailStateInitial value) initial,
    required TResult Function(RouteDetailStateLoading value) loading,
    required TResult Function(RouteDetailStateSuccess value) success,
    required TResult Function(RouteDetailStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailStateInitial value)? initial,
    TResult? Function(RouteDetailStateLoading value)? loading,
    TResult? Function(RouteDetailStateSuccess value)? success,
    TResult? Function(RouteDetailStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailStateInitial value)? initial,
    TResult Function(RouteDetailStateLoading value)? loading,
    TResult Function(RouteDetailStateSuccess value)? success,
    TResult Function(RouteDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RouteDetailStateSuccess implements RouteDetailState {
  const factory RouteDetailStateSuccess({required final ClimbEntity climb}) =
      _$RouteDetailStateSuccessImpl;

  ClimbEntity get climb;

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteDetailStateSuccessImplCopyWith<_$RouteDetailStateSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteDetailStateErrorImplCopyWith<$Res> {
  factory _$$RouteDetailStateErrorImplCopyWith(
    _$RouteDetailStateErrorImpl value,
    $Res Function(_$RouteDetailStateErrorImpl) then,
  ) = __$$RouteDetailStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeId, String message});
}

/// @nodoc
class __$$RouteDetailStateErrorImplCopyWithImpl<$Res>
    extends _$RouteDetailStateCopyWithImpl<$Res, _$RouteDetailStateErrorImpl>
    implements _$$RouteDetailStateErrorImplCopyWith<$Res> {
  __$$RouteDetailStateErrorImplCopyWithImpl(
    _$RouteDetailStateErrorImpl _value,
    $Res Function(_$RouteDetailStateErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? routeId = null, Object? message = null}) {
    return _then(
      _$RouteDetailStateErrorImpl(
        routeId: null == routeId
            ? _value.routeId
            : routeId // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RouteDetailStateErrorImpl implements RouteDetailStateError {
  const _$RouteDetailStateErrorImpl({
    required this.routeId,
    required this.message,
  });

  @override
  final String routeId;
  @override
  final String message;

  @override
  String toString() {
    return 'RouteDetailState.error(routeId: $routeId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailStateErrorImpl &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeId, message);

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDetailStateErrorImplCopyWith<_$RouteDetailStateErrorImpl>
  get copyWith =>
      __$$RouteDetailStateErrorImplCopyWithImpl<_$RouteDetailStateErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String routeId) loading,
    required TResult Function(ClimbEntity climb) success,
    required TResult Function(String routeId, String message) error,
  }) {
    return error(routeId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String routeId)? loading,
    TResult? Function(ClimbEntity climb)? success,
    TResult? Function(String routeId, String message)? error,
  }) {
    return error?.call(routeId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String routeId)? loading,
    TResult Function(ClimbEntity climb)? success,
    TResult Function(String routeId, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(routeId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailStateInitial value) initial,
    required TResult Function(RouteDetailStateLoading value) loading,
    required TResult Function(RouteDetailStateSuccess value) success,
    required TResult Function(RouteDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailStateInitial value)? initial,
    TResult? Function(RouteDetailStateLoading value)? loading,
    TResult? Function(RouteDetailStateSuccess value)? success,
    TResult? Function(RouteDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailStateInitial value)? initial,
    TResult Function(RouteDetailStateLoading value)? loading,
    TResult Function(RouteDetailStateSuccess value)? success,
    TResult Function(RouteDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RouteDetailStateError implements RouteDetailState {
  const factory RouteDetailStateError({
    required final String routeId,
    required final String message,
  }) = _$RouteDetailStateErrorImpl;

  String get routeId;
  String get message;

  /// Create a copy of RouteDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteDetailStateErrorImplCopyWith<_$RouteDetailStateErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
