// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationFilter {
  String? get continent => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  /// Create a copy of LocationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationFilterCopyWith<LocationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFilterCopyWith<$Res> {
  factory $LocationFilterCopyWith(
    LocationFilter value,
    $Res Function(LocationFilter) then,
  ) = _$LocationFilterCopyWithImpl<$Res, LocationFilter>;
  @useResult
  $Res call({
    String? continent,
    String? country,
    String? region,
    String? location,
  });
}

/// @nodoc
class _$LocationFilterCopyWithImpl<$Res, $Val extends LocationFilter>
    implements $LocationFilterCopyWith<$Res> {
  _$LocationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continent = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _value.copyWith(
            continent: freezed == continent
                ? _value.continent
                : continent // ignore: cast_nullable_to_non_nullable
                      as String?,
            country: freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String?,
            region: freezed == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationFilterImplCopyWith<$Res>
    implements $LocationFilterCopyWith<$Res> {
  factory _$$LocationFilterImplCopyWith(
    _$LocationFilterImpl value,
    $Res Function(_$LocationFilterImpl) then,
  ) = __$$LocationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? continent,
    String? country,
    String? region,
    String? location,
  });
}

/// @nodoc
class __$$LocationFilterImplCopyWithImpl<$Res>
    extends _$LocationFilterCopyWithImpl<$Res, _$LocationFilterImpl>
    implements _$$LocationFilterImplCopyWith<$Res> {
  __$$LocationFilterImplCopyWithImpl(
    _$LocationFilterImpl _value,
    $Res Function(_$LocationFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continent = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _$LocationFilterImpl(
        continent: freezed == continent
            ? _value.continent
            : continent // ignore: cast_nullable_to_non_nullable
                  as String?,
        country: freezed == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String?,
        region: freezed == region
            ? _value.region
            : region // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LocationFilterImpl extends _LocationFilter {
  const _$LocationFilterImpl({
    this.continent,
    this.country,
    this.region,
    this.location,
  }) : super._();

  @override
  final String? continent;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? location;

  @override
  String toString() {
    return 'LocationFilter(continent: $continent, country: $country, region: $region, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFilterImpl &&
            (identical(other.continent, continent) ||
                other.continent == continent) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, continent, country, region, location);

  /// Create a copy of LocationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFilterImplCopyWith<_$LocationFilterImpl> get copyWith =>
      __$$LocationFilterImplCopyWithImpl<_$LocationFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _LocationFilter extends LocationFilter {
  const factory _LocationFilter({
    final String? continent,
    final String? country,
    final String? region,
    final String? location,
  }) = _$LocationFilterImpl;
  const _LocationFilter._() : super._();

  @override
  String? get continent;
  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get location;

  /// Create a copy of LocationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationFilterImplCopyWith<_$LocationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
