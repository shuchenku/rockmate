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
  RouteSearchFilters get filters => throw _privateConstructorUsedError;
  List<String> get availableAreas => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    initial,
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    loading,
    required TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )
    success,
    required TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult? Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult? Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
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

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteSearchStateCopyWith<RouteSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSearchStateCopyWith<$Res> {
  factory $RouteSearchStateCopyWith(
    RouteSearchState value,
    $Res Function(RouteSearchState) then,
  ) = _$RouteSearchStateCopyWithImpl<$Res, RouteSearchState>;
  @useResult
  $Res call({RouteSearchFilters filters, List<String> availableAreas});

  $RouteSearchFiltersCopyWith<$Res> get filters;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filters = null, Object? availableAreas = null}) {
    return _then(
      _value.copyWith(
            filters: null == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as RouteSearchFilters,
            availableAreas: null == availableAreas
                ? _value.availableAreas
                : availableAreas // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteSearchFiltersCopyWith<$Res> get filters {
    return $RouteSearchFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteSearchStateInitialImplCopyWith<$Res>
    implements $RouteSearchStateCopyWith<$Res> {
  factory _$$RouteSearchStateInitialImplCopyWith(
    _$RouteSearchStateInitialImpl value,
    $Res Function(_$RouteSearchStateInitialImpl) then,
  ) = __$$RouteSearchStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RouteSearchFilters filters, List<String> availableAreas});

  @override
  $RouteSearchFiltersCopyWith<$Res> get filters;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filters = null, Object? availableAreas = null}) {
    return _then(
      _$RouteSearchStateInitialImpl(
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as RouteSearchFilters,
        availableAreas: null == availableAreas
            ? _value._availableAreas
            : availableAreas // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchStateInitialImpl implements RouteSearchStateInitial {
  const _$RouteSearchStateInitialImpl({
    this.filters = const RouteSearchFilters(),
    final List<String> availableAreas = const [],
  }) : _availableAreas = availableAreas;

  @override
  @JsonKey()
  final RouteSearchFilters filters;
  final List<String> _availableAreas;
  @override
  @JsonKey()
  List<String> get availableAreas {
    if (_availableAreas is EqualUnmodifiableListView) return _availableAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableAreas);
  }

  @override
  String toString() {
    return 'RouteSearchState.initial(filters: $filters, availableAreas: $availableAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateInitialImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality().equals(
              other._availableAreas,
              _availableAreas,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    filters,
    const DeepCollectionEquality().hash(_availableAreas),
  );

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchStateInitialImplCopyWith<_$RouteSearchStateInitialImpl>
  get copyWith =>
      __$$RouteSearchStateInitialImplCopyWithImpl<
        _$RouteSearchStateInitialImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    initial,
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    loading,
    required TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )
    success,
    required TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )
    error,
  }) {
    return initial(filters, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult? Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult? Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
  }) {
    return initial?.call(filters, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(filters, availableAreas);
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
  const factory RouteSearchStateInitial({
    final RouteSearchFilters filters,
    final List<String> availableAreas,
  }) = _$RouteSearchStateInitialImpl;

  @override
  RouteSearchFilters get filters;
  @override
  List<String> get availableAreas;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateInitialImplCopyWith<_$RouteSearchStateInitialImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchStateLoadingImplCopyWith<$Res>
    implements $RouteSearchStateCopyWith<$Res> {
  factory _$$RouteSearchStateLoadingImplCopyWith(
    _$RouteSearchStateLoadingImpl value,
    $Res Function(_$RouteSearchStateLoadingImpl) then,
  ) = __$$RouteSearchStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RouteSearchFilters filters, List<String> availableAreas});

  @override
  $RouteSearchFiltersCopyWith<$Res> get filters;
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
  $Res call({Object? filters = null, Object? availableAreas = null}) {
    return _then(
      _$RouteSearchStateLoadingImpl(
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as RouteSearchFilters,
        availableAreas: null == availableAreas
            ? _value._availableAreas
            : availableAreas // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchStateLoadingImpl implements RouteSearchStateLoading {
  const _$RouteSearchStateLoadingImpl({
    required this.filters,
    final List<String> availableAreas = const [],
  }) : _availableAreas = availableAreas;

  @override
  final RouteSearchFilters filters;
  final List<String> _availableAreas;
  @override
  @JsonKey()
  List<String> get availableAreas {
    if (_availableAreas is EqualUnmodifiableListView) return _availableAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableAreas);
  }

  @override
  String toString() {
    return 'RouteSearchState.loading(filters: $filters, availableAreas: $availableAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateLoadingImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality().equals(
              other._availableAreas,
              _availableAreas,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    filters,
    const DeepCollectionEquality().hash(_availableAreas),
  );

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
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    initial,
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    loading,
    required TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )
    success,
    required TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )
    error,
  }) {
    return loading(filters, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult? Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult? Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
  }) {
    return loading?.call(filters, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(filters, availableAreas);
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
  const factory RouteSearchStateLoading({
    required final RouteSearchFilters filters,
    final List<String> availableAreas,
  }) = _$RouteSearchStateLoadingImpl;

  @override
  RouteSearchFilters get filters;
  @override
  List<String> get availableAreas;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateLoadingImplCopyWith<_$RouteSearchStateLoadingImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchStateSuccessImplCopyWith<$Res>
    implements $RouteSearchStateCopyWith<$Res> {
  factory _$$RouteSearchStateSuccessImplCopyWith(
    _$RouteSearchStateSuccessImpl value,
    $Res Function(_$RouteSearchStateSuccessImpl) then,
  ) = __$$RouteSearchStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RouteSearchFilters filters,
    List<RouteEntity> routes,
    List<String> availableAreas,
  });

  @override
  $RouteSearchFiltersCopyWith<$Res> get filters;
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
  $Res call({
    Object? filters = null,
    Object? routes = null,
    Object? availableAreas = null,
  }) {
    return _then(
      _$RouteSearchStateSuccessImpl(
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as RouteSearchFilters,
        routes: null == routes
            ? _value._routes
            : routes // ignore: cast_nullable_to_non_nullable
                  as List<RouteEntity>,
        availableAreas: null == availableAreas
            ? _value._availableAreas
            : availableAreas // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchStateSuccessImpl implements RouteSearchStateSuccess {
  const _$RouteSearchStateSuccessImpl({
    required this.filters,
    required final List<RouteEntity> routes,
    final List<String> availableAreas = const [],
  }) : _routes = routes,
       _availableAreas = availableAreas;

  @override
  final RouteSearchFilters filters;
  final List<RouteEntity> _routes;
  @override
  List<RouteEntity> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  final List<String> _availableAreas;
  @override
  @JsonKey()
  List<String> get availableAreas {
    if (_availableAreas is EqualUnmodifiableListView) return _availableAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableAreas);
  }

  @override
  String toString() {
    return 'RouteSearchState.success(filters: $filters, routes: $routes, availableAreas: $availableAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateSuccessImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality().equals(
              other._availableAreas,
              _availableAreas,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    filters,
    const DeepCollectionEquality().hash(_routes),
    const DeepCollectionEquality().hash(_availableAreas),
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
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    initial,
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    loading,
    required TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )
    success,
    required TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )
    error,
  }) {
    return success(filters, routes, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult? Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult? Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
  }) {
    return success?.call(filters, routes, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(filters, routes, availableAreas);
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
    required final RouteSearchFilters filters,
    required final List<RouteEntity> routes,
    final List<String> availableAreas,
  }) = _$RouteSearchStateSuccessImpl;

  @override
  RouteSearchFilters get filters;
  List<RouteEntity> get routes;
  @override
  List<String> get availableAreas;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateSuccessImplCopyWith<_$RouteSearchStateSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchStateErrorImplCopyWith<$Res>
    implements $RouteSearchStateCopyWith<$Res> {
  factory _$$RouteSearchStateErrorImplCopyWith(
    _$RouteSearchStateErrorImpl value,
    $Res Function(_$RouteSearchStateErrorImpl) then,
  ) = __$$RouteSearchStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RouteSearchFilters filters,
    String message,
    List<String> availableAreas,
  });

  @override
  $RouteSearchFiltersCopyWith<$Res> get filters;
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
  $Res call({
    Object? filters = null,
    Object? message = null,
    Object? availableAreas = null,
  }) {
    return _then(
      _$RouteSearchStateErrorImpl(
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as RouteSearchFilters,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        availableAreas: null == availableAreas
            ? _value._availableAreas
            : availableAreas // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchStateErrorImpl implements RouteSearchStateError {
  const _$RouteSearchStateErrorImpl({
    required this.filters,
    required this.message,
    final List<String> availableAreas = const [],
  }) : _availableAreas = availableAreas;

  @override
  final RouteSearchFilters filters;
  @override
  final String message;
  final List<String> _availableAreas;
  @override
  @JsonKey()
  List<String> get availableAreas {
    if (_availableAreas is EqualUnmodifiableListView) return _availableAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableAreas);
  }

  @override
  String toString() {
    return 'RouteSearchState.error(filters: $filters, message: $message, availableAreas: $availableAreas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchStateErrorImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._availableAreas,
              _availableAreas,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    filters,
    message,
    const DeepCollectionEquality().hash(_availableAreas),
  );

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
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    initial,
    required TResult Function(
      RouteSearchFilters filters,
      List<String> availableAreas,
    )
    loading,
    required TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )
    success,
    required TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )
    error,
  }) {
    return error(filters, message, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult? Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult? Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult? Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
  }) {
    return error?.call(filters, message, availableAreas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    initial,
    TResult Function(RouteSearchFilters filters, List<String> availableAreas)?
    loading,
    TResult Function(
      RouteSearchFilters filters,
      List<RouteEntity> routes,
      List<String> availableAreas,
    )?
    success,
    TResult Function(
      RouteSearchFilters filters,
      String message,
      List<String> availableAreas,
    )?
    error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(filters, message, availableAreas);
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
    required final RouteSearchFilters filters,
    required final String message,
    final List<String> availableAreas,
  }) = _$RouteSearchStateErrorImpl;

  @override
  RouteSearchFilters get filters;
  String get message;
  @override
  List<String> get availableAreas;

  /// Create a copy of RouteSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchStateErrorImplCopyWith<_$RouteSearchStateErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}
