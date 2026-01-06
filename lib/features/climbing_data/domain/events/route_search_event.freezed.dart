// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSearchEventCopyWith<$Res> {
  factory $RouteSearchEventCopyWith(
    RouteSearchEvent value,
    $Res Function(RouteSearchEvent) then,
  ) = _$RouteSearchEventCopyWithImpl<$Res, RouteSearchEvent>;
}

/// @nodoc
class _$RouteSearchEventCopyWithImpl<$Res, $Val extends RouteSearchEvent>
    implements $RouteSearchEventCopyWith<$Res> {
  _$RouteSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RouteSearchEventQueryChangedImplCopyWith<$Res> {
  factory _$$RouteSearchEventQueryChangedImplCopyWith(
    _$RouteSearchEventQueryChangedImpl value,
    $Res Function(_$RouteSearchEventQueryChangedImpl) then,
  ) = __$$RouteSearchEventQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$RouteSearchEventQueryChangedImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<$Res, _$RouteSearchEventQueryChangedImpl>
    implements _$$RouteSearchEventQueryChangedImplCopyWith<$Res> {
  __$$RouteSearchEventQueryChangedImplCopyWithImpl(
    _$RouteSearchEventQueryChangedImpl _value,
    $Res Function(_$RouteSearchEventQueryChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$RouteSearchEventQueryChangedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchEventQueryChangedImpl
    implements RouteSearchEventQueryChanged {
  const _$RouteSearchEventQueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'RouteSearchEvent.queryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchEventQueryChangedImplCopyWith<
    _$RouteSearchEventQueryChangedImpl
  >
  get copyWith =>
      __$$RouteSearchEventQueryChangedImplCopyWithImpl<
        _$RouteSearchEventQueryChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventQueryChanged implements RouteSearchEvent {
  const factory RouteSearchEventQueryChanged(final String query) =
      _$RouteSearchEventQueryChangedImpl;

  String get query;

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchEventQueryChangedImplCopyWith<
    _$RouteSearchEventQueryChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchEventLocationFilterChangedImplCopyWith<$Res> {
  factory _$$RouteSearchEventLocationFilterChangedImplCopyWith(
    _$RouteSearchEventLocationFilterChangedImpl value,
    $Res Function(_$RouteSearchEventLocationFilterChangedImpl) then,
  ) = __$$RouteSearchEventLocationFilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationFilter locationFilter});

  $LocationFilterCopyWith<$Res> get locationFilter;
}

/// @nodoc
class __$$RouteSearchEventLocationFilterChangedImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<
          $Res,
          _$RouteSearchEventLocationFilterChangedImpl
        >
    implements _$$RouteSearchEventLocationFilterChangedImplCopyWith<$Res> {
  __$$RouteSearchEventLocationFilterChangedImplCopyWithImpl(
    _$RouteSearchEventLocationFilterChangedImpl _value,
    $Res Function(_$RouteSearchEventLocationFilterChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? locationFilter = null}) {
    return _then(
      _$RouteSearchEventLocationFilterChangedImpl(
        null == locationFilter
            ? _value.locationFilter
            : locationFilter // ignore: cast_nullable_to_non_nullable
                  as LocationFilter,
      ),
    );
  }

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationFilterCopyWith<$Res> get locationFilter {
    return $LocationFilterCopyWith<$Res>(_value.locationFilter, (value) {
      return _then(_value.copyWith(locationFilter: value));
    });
  }
}

/// @nodoc

class _$RouteSearchEventLocationFilterChangedImpl
    implements RouteSearchEventLocationFilterChanged {
  const _$RouteSearchEventLocationFilterChangedImpl(this.locationFilter);

  @override
  final LocationFilter locationFilter;

  @override
  String toString() {
    return 'RouteSearchEvent.locationFilterChanged(locationFilter: $locationFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventLocationFilterChangedImpl &&
            (identical(other.locationFilter, locationFilter) ||
                other.locationFilter == locationFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationFilter);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchEventLocationFilterChangedImplCopyWith<
    _$RouteSearchEventLocationFilterChangedImpl
  >
  get copyWith =>
      __$$RouteSearchEventLocationFilterChangedImplCopyWithImpl<
        _$RouteSearchEventLocationFilterChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return locationFilterChanged(locationFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return locationFilterChanged?.call(locationFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (locationFilterChanged != null) {
      return locationFilterChanged(locationFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return locationFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return locationFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (locationFilterChanged != null) {
      return locationFilterChanged(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventLocationFilterChanged
    implements RouteSearchEvent {
  const factory RouteSearchEventLocationFilterChanged(
    final LocationFilter locationFilter,
  ) = _$RouteSearchEventLocationFilterChangedImpl;

  LocationFilter get locationFilter;

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchEventLocationFilterChangedImplCopyWith<
    _$RouteSearchEventLocationFilterChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchEventGradeRangeChangedImplCopyWith<$Res> {
  factory _$$RouteSearchEventGradeRangeChangedImplCopyWith(
    _$RouteSearchEventGradeRangeChangedImpl value,
    $Res Function(_$RouteSearchEventGradeRangeChangedImpl) then,
  ) = __$$RouteSearchEventGradeRangeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? gradeMin, String? gradeMax});
}

/// @nodoc
class __$$RouteSearchEventGradeRangeChangedImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<
          $Res,
          _$RouteSearchEventGradeRangeChangedImpl
        >
    implements _$$RouteSearchEventGradeRangeChangedImplCopyWith<$Res> {
  __$$RouteSearchEventGradeRangeChangedImplCopyWithImpl(
    _$RouteSearchEventGradeRangeChangedImpl _value,
    $Res Function(_$RouteSearchEventGradeRangeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? gradeMin = freezed, Object? gradeMax = freezed}) {
    return _then(
      _$RouteSearchEventGradeRangeChangedImpl(
        gradeMin: freezed == gradeMin
            ? _value.gradeMin
            : gradeMin // ignore: cast_nullable_to_non_nullable
                  as String?,
        gradeMax: freezed == gradeMax
            ? _value.gradeMax
            : gradeMax // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchEventGradeRangeChangedImpl
    implements RouteSearchEventGradeRangeChanged {
  const _$RouteSearchEventGradeRangeChangedImpl({this.gradeMin, this.gradeMax});

  @override
  final String? gradeMin;
  @override
  final String? gradeMax;

  @override
  String toString() {
    return 'RouteSearchEvent.gradeRangeChanged(gradeMin: $gradeMin, gradeMax: $gradeMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventGradeRangeChangedImpl &&
            (identical(other.gradeMin, gradeMin) ||
                other.gradeMin == gradeMin) &&
            (identical(other.gradeMax, gradeMax) ||
                other.gradeMax == gradeMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gradeMin, gradeMax);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchEventGradeRangeChangedImplCopyWith<
    _$RouteSearchEventGradeRangeChangedImpl
  >
  get copyWith =>
      __$$RouteSearchEventGradeRangeChangedImplCopyWithImpl<
        _$RouteSearchEventGradeRangeChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return gradeRangeChanged(gradeMin, gradeMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return gradeRangeChanged?.call(gradeMin, gradeMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (gradeRangeChanged != null) {
      return gradeRangeChanged(gradeMin, gradeMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return gradeRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return gradeRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (gradeRangeChanged != null) {
      return gradeRangeChanged(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventGradeRangeChanged implements RouteSearchEvent {
  const factory RouteSearchEventGradeRangeChanged({
    final String? gradeMin,
    final String? gradeMax,
  }) = _$RouteSearchEventGradeRangeChangedImpl;

  String? get gradeMin;
  String? get gradeMax;

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchEventGradeRangeChangedImplCopyWith<
    _$RouteSearchEventGradeRangeChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchEventRouteTypesChangedImplCopyWith<$Res> {
  factory _$$RouteSearchEventRouteTypesChangedImplCopyWith(
    _$RouteSearchEventRouteTypesChangedImpl value,
    $Res Function(_$RouteSearchEventRouteTypesChangedImpl) then,
  ) = __$$RouteSearchEventRouteTypesChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<RouteType> types});
}

/// @nodoc
class __$$RouteSearchEventRouteTypesChangedImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<
          $Res,
          _$RouteSearchEventRouteTypesChangedImpl
        >
    implements _$$RouteSearchEventRouteTypesChangedImplCopyWith<$Res> {
  __$$RouteSearchEventRouteTypesChangedImplCopyWithImpl(
    _$RouteSearchEventRouteTypesChangedImpl _value,
    $Res Function(_$RouteSearchEventRouteTypesChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? types = null}) {
    return _then(
      _$RouteSearchEventRouteTypesChangedImpl(
        null == types
            ? _value._types
            : types // ignore: cast_nullable_to_non_nullable
                  as Set<RouteType>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchEventRouteTypesChangedImpl
    implements RouteSearchEventRouteTypesChanged {
  const _$RouteSearchEventRouteTypesChangedImpl(final Set<RouteType> types)
    : _types = types;

  final Set<RouteType> _types;
  @override
  Set<RouteType> get types {
    if (_types is EqualUnmodifiableSetView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_types);
  }

  @override
  String toString() {
    return 'RouteSearchEvent.routeTypesChanged(types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventRouteTypesChangedImpl &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_types));

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchEventRouteTypesChangedImplCopyWith<
    _$RouteSearchEventRouteTypesChangedImpl
  >
  get copyWith =>
      __$$RouteSearchEventRouteTypesChangedImplCopyWithImpl<
        _$RouteSearchEventRouteTypesChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return routeTypesChanged(types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return routeTypesChanged?.call(types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (routeTypesChanged != null) {
      return routeTypesChanged(types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return routeTypesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return routeTypesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (routeTypesChanged != null) {
      return routeTypesChanged(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventRouteTypesChanged implements RouteSearchEvent {
  const factory RouteSearchEventRouteTypesChanged(final Set<RouteType> types) =
      _$RouteSearchEventRouteTypesChangedImpl;

  Set<RouteType> get types;

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchEventRouteTypesChangedImplCopyWith<
    _$RouteSearchEventRouteTypesChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteSearchEventSearchSubmittedImplCopyWith<$Res> {
  factory _$$RouteSearchEventSearchSubmittedImplCopyWith(
    _$RouteSearchEventSearchSubmittedImpl value,
    $Res Function(_$RouteSearchEventSearchSubmittedImpl) then,
  ) = __$$RouteSearchEventSearchSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouteSearchEventSearchSubmittedImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<
          $Res,
          _$RouteSearchEventSearchSubmittedImpl
        >
    implements _$$RouteSearchEventSearchSubmittedImplCopyWith<$Res> {
  __$$RouteSearchEventSearchSubmittedImplCopyWithImpl(
    _$RouteSearchEventSearchSubmittedImpl _value,
    $Res Function(_$RouteSearchEventSearchSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RouteSearchEventSearchSubmittedImpl
    implements RouteSearchEventSearchSubmitted {
  const _$RouteSearchEventSearchSubmittedImpl();

  @override
  String toString() {
    return 'RouteSearchEvent.searchSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventSearchSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return searchSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return searchSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return searchSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return searchSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventSearchSubmitted implements RouteSearchEvent {
  const factory RouteSearchEventSearchSubmitted() =
      _$RouteSearchEventSearchSubmittedImpl;
}

/// @nodoc
abstract class _$$RouteSearchEventFiltersClearedImplCopyWith<$Res> {
  factory _$$RouteSearchEventFiltersClearedImplCopyWith(
    _$RouteSearchEventFiltersClearedImpl value,
    $Res Function(_$RouteSearchEventFiltersClearedImpl) then,
  ) = __$$RouteSearchEventFiltersClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouteSearchEventFiltersClearedImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<
          $Res,
          _$RouteSearchEventFiltersClearedImpl
        >
    implements _$$RouteSearchEventFiltersClearedImplCopyWith<$Res> {
  __$$RouteSearchEventFiltersClearedImplCopyWithImpl(
    _$RouteSearchEventFiltersClearedImpl _value,
    $Res Function(_$RouteSearchEventFiltersClearedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RouteSearchEventFiltersClearedImpl
    implements RouteSearchEventFiltersCleared {
  const _$RouteSearchEventFiltersClearedImpl();

  @override
  String toString() {
    return 'RouteSearchEvent.filtersCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventFiltersClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return filtersCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return filtersCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (filtersCleared != null) {
      return filtersCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return filtersCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return filtersCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (filtersCleared != null) {
      return filtersCleared(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventFiltersCleared implements RouteSearchEvent {
  const factory RouteSearchEventFiltersCleared() =
      _$RouteSearchEventFiltersClearedImpl;
}

/// @nodoc
abstract class _$$RouteSearchEventLoadLocationDataImplCopyWith<$Res> {
  factory _$$RouteSearchEventLoadLocationDataImplCopyWith(
    _$RouteSearchEventLoadLocationDataImpl value,
    $Res Function(_$RouteSearchEventLoadLocationDataImpl) then,
  ) = __$$RouteSearchEventLoadLocationDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouteSearchEventLoadLocationDataImplCopyWithImpl<$Res>
    extends
        _$RouteSearchEventCopyWithImpl<
          $Res,
          _$RouteSearchEventLoadLocationDataImpl
        >
    implements _$$RouteSearchEventLoadLocationDataImplCopyWith<$Res> {
  __$$RouteSearchEventLoadLocationDataImplCopyWithImpl(
    _$RouteSearchEventLoadLocationDataImpl _value,
    $Res Function(_$RouteSearchEventLoadLocationDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RouteSearchEventLoadLocationDataImpl
    implements RouteSearchEventLoadLocationData {
  const _$RouteSearchEventLoadLocationDataImpl();

  @override
  String toString() {
    return 'RouteSearchEvent.loadLocationData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchEventLoadLocationDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function(LocationFilter locationFilter)
    locationFilterChanged,
    required TResult Function(String? gradeMin, String? gradeMax)
    gradeRangeChanged,
    required TResult Function(Set<RouteType> types) routeTypesChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() filtersCleared,
    required TResult Function() loadLocationData,
  }) {
    return loadLocationData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult? Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult? Function(Set<RouteType> types)? routeTypesChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? filtersCleared,
    TResult? Function()? loadLocationData,
  }) {
    return loadLocationData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function(LocationFilter locationFilter)? locationFilterChanged,
    TResult Function(String? gradeMin, String? gradeMax)? gradeRangeChanged,
    TResult Function(Set<RouteType> types)? routeTypesChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? filtersCleared,
    TResult Function()? loadLocationData,
    required TResult orElse(),
  }) {
    if (loadLocationData != null) {
      return loadLocationData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteSearchEventQueryChanged value) queryChanged,
    required TResult Function(RouteSearchEventLocationFilterChanged value)
    locationFilterChanged,
    required TResult Function(RouteSearchEventGradeRangeChanged value)
    gradeRangeChanged,
    required TResult Function(RouteSearchEventRouteTypesChanged value)
    routeTypesChanged,
    required TResult Function(RouteSearchEventSearchSubmitted value)
    searchSubmitted,
    required TResult Function(RouteSearchEventFiltersCleared value)
    filtersCleared,
    required TResult Function(RouteSearchEventLoadLocationData value)
    loadLocationData,
  }) {
    return loadLocationData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult? Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult? Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult? Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult? Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult? Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult? Function(RouteSearchEventLoadLocationData value)? loadLocationData,
  }) {
    return loadLocationData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteSearchEventQueryChanged value)? queryChanged,
    TResult Function(RouteSearchEventLocationFilterChanged value)?
    locationFilterChanged,
    TResult Function(RouteSearchEventGradeRangeChanged value)?
    gradeRangeChanged,
    TResult Function(RouteSearchEventRouteTypesChanged value)?
    routeTypesChanged,
    TResult Function(RouteSearchEventSearchSubmitted value)? searchSubmitted,
    TResult Function(RouteSearchEventFiltersCleared value)? filtersCleared,
    TResult Function(RouteSearchEventLoadLocationData value)? loadLocationData,
    required TResult orElse(),
  }) {
    if (loadLocationData != null) {
      return loadLocationData(this);
    }
    return orElse();
  }
}

abstract class RouteSearchEventLoadLocationData implements RouteSearchEvent {
  const factory RouteSearchEventLoadLocationData() =
      _$RouteSearchEventLoadLocationDataImpl;
}
