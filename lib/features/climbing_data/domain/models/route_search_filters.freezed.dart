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
  String? get area => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get gradeMin => throw _privateConstructorUsedError;
  String? get gradeMax => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

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
    String? area,
    String? location,
    String? gradeMin,
    String? gradeMax,
    List<String> types,
  });
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
    Object? area = freezed,
    Object? location = freezed,
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
            area: freezed == area
                ? _value.area
                : area // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
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
                      as List<String>,
          )
          as $Val,
    );
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
    String? area,
    String? location,
    String? gradeMin,
    String? gradeMax,
    List<String> types,
  });
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
    Object? area = freezed,
    Object? location = freezed,
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
        area: freezed == area
            ? _value.area
            : area // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
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
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$RouteSearchFiltersImpl extends _RouteSearchFilters {
  const _$RouteSearchFiltersImpl({
    this.query = '',
    this.area,
    this.location,
    this.gradeMin,
    this.gradeMax,
    final List<String> types = const [],
  }) : _types = types,
       super._();

  @override
  @JsonKey()
  final String query;
  @override
  final String? area;
  @override
  final String? location;
  @override
  final String? gradeMin;
  @override
  final String? gradeMax;
  final List<String> _types;
  @override
  @JsonKey()
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'RouteSearchFilters(query: $query, area: $area, location: $location, gradeMin: $gradeMin, gradeMax: $gradeMax, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSearchFiltersImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
    area,
    location,
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
    final String? area,
    final String? location,
    final String? gradeMin,
    final String? gradeMax,
    final List<String> types,
  }) = _$RouteSearchFiltersImpl;
  const _RouteSearchFilters._() : super._();

  @override
  String get query;
  @override
  String? get area;
  @override
  String? get location;
  @override
  String? get gradeMin;
  @override
  String? get gradeMax;
  @override
  List<String> get types;

  /// Create a copy of RouteSearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteSearchFiltersImplCopyWith<_$RouteSearchFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
