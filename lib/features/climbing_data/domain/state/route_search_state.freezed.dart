// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, List<RouteEntity> routes) success,
    required TResult Function(String query, String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? loading,
    TResult? Function(String query, List<RouteEntity> routes)? success,
    TResult? Function(String query, String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, List<RouteEntity> routes)? success,
    TResult Function(String query, String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchStateInitial value) initial,
    required TResult Function(RouteSearchStateLoading value) loading,
    required TResult Function(RouteSearchStateSuccess value) success,
    required TResult Function(RouteSearchStateError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchStateInitial value)? initial,
    TResult? Function(RouteSearchStateLoading value)? loading,
    TResult? Function(RouteSearchStateSuccess value)? success,
    TResult? Function(RouteSearchStateError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchStateInitial value)? initial,
    TResult Function(RouteSearchStateLoading value)? loading,
    TResult Function(RouteSearchStateSuccess value)? success,
    TResult Function(RouteSearchStateError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSearchStateCopyWith<$Res> {
  factory $RouteSearchStateCopyWith(
    RouteSearchState value,
    $Res Function(RouteSearchState) then,
  ) = _$RouteSearchStateCopyWithImpl<$Res, RouteSearchState>;
}

/// @nodoc
class _$RouteSearchStateCopyWithImpl<$Res, $Val extends RouteSearchState>
    implements $RouteSearchStateCopyWith<$Res> {
  _$RouteSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RouteSearchStateInitialImplCopyWith<$Res> {
  factory _$$RouteSearchStateInitialImplCopyWith(
    _$RouteSearchStateInitialImpl value,
    $Res Function(_$RouteSearchStateInitialImpl) then,
  ) = __$$RouteSearchStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouteSearchStateInitialImplCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res, _$RouteSearchStateInitialImpl>
    implements _$$RouteSearchStateInitialImplCopyWith<$Res> {
  __$$RouteSearchStateInitialImplCopyWithImpl(
    _$RouteSearchStateInitialImpl _value,
    $Res Function(_$RouteSearchStateInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RouteSearchStateInitialImpl implements RouteSearchStateInitial {
  const _$RouteSearchStateInitialImpl();

  @override
  String toString() {
    return 'RouteSearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, List<RouteEntity> routes) success,
    required TResult Function(String query, String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? loading,
    TResult? Function(String query, List<RouteEntity> routes)? success,
    TResult? Function(String query, String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, List<RouteEntity> routes)? success,
    TResult Function(String query, String message)? error,
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
    required TResult Function(RouteSearchStateInitial value) initial,
    required TResult Function(RouteSearchStateLoading value) loading,
    required TResult Function(RouteSearchStateSuccess value) success,
    required TResult Function(RouteSearchStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchStateInitial value)? initial,
    TResult? Function(RouteSearchStateLoading value)? loading,
    TResult? Function(RouteSearchStateSuccess value)? success,
    TResult? Function(RouteSearchStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchStateInitial value)? initial,
    TResult Function(RouteSearchStateLoading value)? loading,
    TResult Function(RouteSearchStateSuccess value)? success,
    TResult Function(RouteSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RouteSearchStateInitial implements RouteSearchState {
  const factory RouteSearchStateInitial() = _$RouteSearchStateInitialImpl;
}

/// @nodoc
abstract class _$$RouteSearchStateLoadingImplCopyWith<$Res> {
  factory _$$RouteSearchStateLoadingImplCopyWith(
    _$RouteSearchStateLoadingImpl value,
    $Res Function(_$RouteSearchStateLoadingImpl) then,
  ) = __$$RouteSearchStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$RouteSearchStateLoadingImplCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res, _$RouteSearchStateLoadingImpl>
    implements _$$RouteSearchStateLoadingImplCopyWith<$Res> {
  __$$RouteSearchStateLoadingImplCopyWithImpl(
    _$RouteSearchStateLoadingImpl _value,
    $Res Function(_$RouteSearchStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$RouteSearchStateLoadingImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchStateLoadingImpl implements RouteSearchStateLoading {
  const _$RouteSearchStateLoadingImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'RouteSearchState.loading(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateLoadingImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchStateLoadingImplCopyWith<_$RouteSearchStateLoadingImpl>
  get copyWith =>
      __$$RouteSearchStateLoadingImplCopyWithImpl<
        _$RouteSearchStateLoadingImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, List<RouteEntity> routes) success,
    required TResult Function(String query, String message) error,
  }) {
    return loading(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? loading,
    TResult? Function(String query, List<RouteEntity> routes)? success,
    TResult? Function(String query, String message)? error,
  }) {
    return loading?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, List<RouteEntity> routes)? success,
    TResult Function(String query, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchStateInitial value) initial,
    required TResult Function(RouteSearchStateLoading value) loading,
    required TResult Function(RouteSearchStateSuccess value) success,
    required TResult Function(RouteSearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchStateInitial value)? initial,
    TResult? Function(RouteSearchStateLoading value)? loading,
    TResult? Function(RouteSearchStateSuccess value)? success,
    TResult? Function(RouteSearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchStateInitial value)? initial,
    TResult Function(RouteSearchStateLoading value)? loading,
    TResult Function(RouteSearchStateSuccess value)? success,
    TResult Function(RouteSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RouteSearchStateLoading implements RouteSearchState {
  const factory RouteSearchStateLoading(final String query) =
      _$RouteSearchStateLoadingImpl;

  String get query;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateLoadingImplCopyWith<_$RouteSearchStateLoadingImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchStateSuccessImplCopyWith<$Res> {
  factory _$$RouteSearchStateSuccessImplCopyWith(
    _$RouteSearchStateSuccessImpl value,
    $Res Function(_$RouteSearchStateSuccessImpl) then,
  ) = __$$RouteSearchStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, List<RouteEntity> routes});
}

/// @nodoc
class __$$RouteSearchStateSuccessImplCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res, _$RouteSearchStateSuccessImpl>
    implements _$$RouteSearchStateSuccessImplCopyWith<$Res> {
  __$$RouteSearchStateSuccessImplCopyWithImpl(
    _$RouteSearchStateSuccessImpl _value,
    $Res Function(_$RouteSearchStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null, Object? routes = null}) {
    return _then(
      _$RouteSearchStateSuccessImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        routes: null == routes
            ? _value._routes
            : routes // ignore: cast_nullable_to_non_nullable
                  as List<RouteEntity>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchStateSuccessImpl implements RouteSearchStateSuccess {
  const _$RouteSearchStateSuccessImpl({
    required this.query,
    required final List<RouteEntity> routes,
  }) : _routes = routes;

  @override
  final String query;
  final List<RouteEntity> _routes;
  @override
  List<RouteEntity> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'RouteSearchState.success(query: $query, routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateSuccessImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    const DeepCollectionEquality().hash(_routes),
  );

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchStateSuccessImplCopyWith<_$RouteSearchStateSuccessImpl>
  get copyWith =>
      __$$RouteSearchStateSuccessImplCopyWithImpl<
        _$RouteSearchStateSuccessImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, List<RouteEntity> routes) success,
    required TResult Function(String query, String message) error,
  }) {
    return success(query, routes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? loading,
    TResult? Function(String query, List<RouteEntity> routes)? success,
    TResult? Function(String query, String message)? error,
  }) {
    return success?.call(query, routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, List<RouteEntity> routes)? success,
    TResult Function(String query, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchStateInitial value) initial,
    required TResult Function(RouteSearchStateLoading value) loading,
    required TResult Function(RouteSearchStateSuccess value) success,
    required TResult Function(RouteSearchStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchStateInitial value)? initial,
    TResult? Function(RouteSearchStateLoading value)? loading,
    TResult? Function(RouteSearchStateSuccess value)? success,
    TResult? Function(RouteSearchStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchStateInitial value)? initial,
    TResult Function(RouteSearchStateLoading value)? loading,
    TResult Function(RouteSearchStateSuccess value)? success,
    TResult Function(RouteSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RouteSearchStateSuccess implements RouteSearchState {
  const factory RouteSearchStateSuccess({
    required final String query,
    required final List<RouteEntity> routes,
  }) = _$RouteSearchStateSuccessImpl;

  String get query;
  List<RouteEntity> get routes;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateSuccessImplCopyWith<_$RouteSearchStateSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchStateErrorImplCopyWith<$Res> {
  factory _$$RouteSearchStateErrorImplCopyWith(
    _$RouteSearchStateErrorImpl value,
    $Res Function(_$RouteSearchStateErrorImpl) then,
  ) = __$$RouteSearchStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String message});
}

/// @nodoc
class __$$RouteSearchStateErrorImplCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res, _$RouteSearchStateErrorImpl>
    implements _$$RouteSearchStateErrorImplCopyWith<$Res> {
  __$$RouteSearchStateErrorImplCopyWithImpl(
    _$RouteSearchStateErrorImpl _value,
    $Res Function(_$RouteSearchStateErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null, Object? message = null}) {
    return _then(
      _$RouteSearchStateErrorImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
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

class _$RouteSearchStateErrorImpl implements RouteSearchStateError {
  const _$RouteSearchStateErrorImpl({
    required this.query,
    required this.message,
  });

  @override
  final String query;
  @override
  final String message;

  @override
  String toString() {
    return 'RouteSearchState.error(query: $query, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateErrorImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, message);

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchStateErrorImplCopyWith<_$RouteSearchStateErrorImpl>
  get copyWith =>
      __$$RouteSearchStateErrorImplCopyWithImpl<_$RouteSearchStateErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String query) loading,
    required TResult Function(String query, List<RouteEntity> routes) success,
    required TResult Function(String query, String message) error,
  }) {
    return error(query, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String query)? loading,
    TResult? Function(String query, List<RouteEntity> routes)? success,
    TResult? Function(String query, String message)? error,
  }) {
    return error?.call(query, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String query)? loading,
    TResult Function(String query, List<RouteEntity> routes)? success,
    TResult Function(String query, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(query, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchStateInitial value) initial,
    required TResult Function(RouteSearchStateLoading value) loading,
    required TResult Function(RouteSearchStateSuccess value) success,
    required TResult Function(RouteSearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchStateInitial value)? initial,
    TResult? Function(RouteSearchStateLoading value)? loading,
    TResult? Function(RouteSearchStateSuccess value)? success,
    TResult? Function(RouteSearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchStateInitial value)? initial,
    TResult Function(RouteSearchStateLoading value)? loading,
    TResult Function(RouteSearchStateSuccess value)? success,
    TResult Function(RouteSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RouteSearchStateError implements RouteSearchState {
  const factory RouteSearchStateError({
    required final String query,
    required final String message,
  }) = _$RouteSearchStateErrorImpl;

  String get query;
  String get message;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateErrorImplCopyWith<_$RouteSearchStateErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
