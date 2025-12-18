// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_search_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteSearchFilters {
  String get query => throw _privateConstructorUsedError;
  LocationFilter get locationFilter => throw _privateConstructorUsedError;
  String? get gradeMin => throw _privateConstructorUsedError;
  String? get gradeMax => throw _privateConstructorUsedError;
  Set<RouteType> get types => throw _privateConstructorUsedError;

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteSearchFiltersCopyWith<RouteSearchFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSearchFiltersCopyWith<$Res> {
  factory $RouteSearchFiltersCopyWith(
    RouteSearchFilters value,
    $Res Function(RouteSearchFilters) then,
  ) = _$RouteSearchFiltersCopyWithImpl<$Res, RouteSearchFilters>;
  @useResult
  $Res call({
    String query,
    LocationFilter locationFilter,
    String? gradeMin,
    String? gradeMax,
    Set<RouteType> types,
  });

  $LocationFilterCopyWith<$Res> get locationFilter;
}

/// @nodoc
class _$RouteSearchFiltersCopyWithImpl<$Res, $Val extends RouteSearchFilters>
    implements $RouteSearchFiltersCopyWith<$Res> {
  _$RouteSearchFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? locationFilter = null,
    Object? gradeMin = freezed,
    Object? gradeMax = freezed,
    Object? types = null,
  }) {
    return _then(
      _value.copyWith(
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            locationFilter: null == locationFilter
                ? _value.locationFilter
                : locationFilter // ignore: cast_nullable_to_non_nullable
                      as LocationFilter,
            gradeMin: freezed == gradeMin
                ? _value.gradeMin
                : gradeMin // ignore: cast_nullable_to_non_nullable
                      as String?,
            gradeMax: freezed == gradeMax
                ? _value.gradeMax
                : gradeMax // ignore: cast_nullable_to_non_nullable
                      as String?,
            types: null == types
                ? _value.types
                : types // ignore: cast_nullable_to_non_nullable
                      as Set<RouteType>,
          )
          as $Val,
    );
  }

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationFilterCopyWith<$Res> get locationFilter {
    return $LocationFilterCopyWith<$Res>(_value.locationFilter, (value) {
      return _then(_value.copyWith(locationFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteSearchFiltersImplCopyWith<$Res>
    implements $RouteSearchFiltersCopyWith<$Res> {
  factory _$$RouteSearchFiltersImplCopyWith(
    _$RouteSearchFiltersImpl value,
    $Res Function(_$RouteSearchFiltersImpl) then,
  ) = __$$RouteSearchFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String query,
    LocationFilter locationFilter,
    String? gradeMin,
    String? gradeMax,
    Set<RouteType> types,
  });

  @override
  $LocationFilterCopyWith<$Res> get locationFilter;
}

/// @nodoc
class __$$RouteSearchFiltersImplCopyWithImpl<$Res>
    extends _$RouteSearchFiltersCopyWithImpl<$Res, _$RouteSearchFiltersImpl>
    implements _$$RouteSearchFiltersImplCopyWith<$Res> {
  __$$RouteSearchFiltersImplCopyWithImpl(
    _$RouteSearchFiltersImpl _value,
    $Res Function(_$RouteSearchFiltersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? locationFilter = null,
    Object? gradeMin = freezed,
    Object? gradeMax = freezed,
    Object? types = null,
  }) {
    return _then(
      _$RouteSearchFiltersImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        locationFilter: null == locationFilter
            ? _value.locationFilter
            : locationFilter // ignore: cast_nullable_to_non_nullable
                  as LocationFilter,
        gradeMin: freezed == gradeMin
            ? _value.gradeMin
            : gradeMin // ignore: cast_nullable_to_non_nullable
                  as String?,
        gradeMax: freezed == gradeMax
            ? _value.gradeMax
            : gradeMax // ignore: cast_nullable_to_non_nullable
                  as String?,
        types: null == types
            ? _value._types
            : types // ignore: cast_nullable_to_non_nullable
                  as Set<RouteType>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchFiltersImpl extends _RouteSearchFilters {
  const _$RouteSearchFiltersImpl({
    this.query = '',
    this.locationFilter = const LocationFilter(),
    this.gradeMin,
    this.gradeMax,
    final Set<RouteType> types = const {},
  }) : _types = types,
       super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final LocationFilter locationFilter;
  @override
  final String? gradeMin;
  @override
  final String? gradeMax;
  final Set<RouteType> _types;
  @override
  @JsonKey()
  Set<RouteType> get types {
    if (_types is EqualUnmodifiableSetView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_types);
  }

  @override
  String toString() {
    return 'RouteSearchFilters(query: $query, locationFilter: $locationFilter, gradeMin: $gradeMin, gradeMax: $gradeMax, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchFiltersImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.locationFilter, locationFilter) ||
                other.locationFilter == locationFilter) &&
            (identical(other.gradeMin, gradeMin) ||
                other.gradeMin == gradeMin) &&
            (identical(other.gradeMax, gradeMax) ||
                other.gradeMax == gradeMax) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    locationFilter,
    gradeMin,
    gradeMax,
    const DeepCollectionEquality().hash(_types),
  );

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSearchFiltersImplCopyWith<_$RouteSearchFiltersImpl> get copyWith =>
      __$$RouteSearchFiltersImplCopyWithImpl<_$RouteSearchFiltersImpl>(
        this,
        _$identity,
      );
}

abstract class _RouteSearchFilters extends RouteSearchFilters {
  const factory _RouteSearchFilters({
    final String query,
    final LocationFilter locationFilter,
    final String? gradeMin,
    final String? gradeMax,
    final Set<RouteType> types,
  }) = _$RouteSearchFiltersImpl;
  const _RouteSearchFilters._() : super._();

  @override
  String get query;
  @override
  LocationFilter get locationFilter;
  @override
  String? get gradeMin;
  @override
  String? get gradeMax;
  @override
  Set<RouteType> get types;

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchFiltersImplCopyWith<_$RouteSearchFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
