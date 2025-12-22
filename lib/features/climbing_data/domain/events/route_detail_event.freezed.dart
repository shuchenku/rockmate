// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RouteDetailEvent {
  String get routeId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String routeId) loadRoute,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String routeId)? loadRoute,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String routeId)? loadRoute,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailEventLoadRoute value) loadRoute,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailEventLoadRoute value)? loadRoute,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailEventLoadRoute value)? loadRoute,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of RouteDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteDetailEventCopyWith<RouteDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDetailEventCopyWith<$Res> {
  factory $RouteDetailEventCopyWith(
    RouteDetailEvent value,
    $Res Function(RouteDetailEvent) then,
  ) = _$RouteDetailEventCopyWithImpl<$Res, RouteDetailEvent>;
  @useResult
  $Res call({String routeId});
}

/// @nodoc
class _$RouteDetailEventCopyWithImpl<$Res, $Val extends RouteDetailEvent>
    implements $RouteDetailEventCopyWith<$Res> {
  _$RouteDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? routeId = null}) {
    return _then(
      _value.copyWith(
            routeId: null == routeId
                ? _value.routeId
                : routeId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RouteDetailEventLoadRouteImplCopyWith<$Res>
    implements $RouteDetailEventCopyWith<$Res> {
  factory _$$RouteDetailEventLoadRouteImplCopyWith(
    _$RouteDetailEventLoadRouteImpl value,
    $Res Function(_$RouteDetailEventLoadRouteImpl) then,
  ) = __$$RouteDetailEventLoadRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String routeId});
}

/// @nodoc
class __$$RouteDetailEventLoadRouteImplCopyWithImpl<$Res>
    extends
        _$RouteDetailEventCopyWithImpl<$Res, _$RouteDetailEventLoadRouteImpl>
    implements _$$RouteDetailEventLoadRouteImplCopyWith<$Res> {
  __$$RouteDetailEventLoadRouteImplCopyWithImpl(
    _$RouteDetailEventLoadRouteImpl _value,
    $Res Function(_$RouteDetailEventLoadRouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RouteDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? routeId = null}) {
    return _then(
      _$RouteDetailEventLoadRouteImpl(
        null == routeId
            ? _value.routeId
            : routeId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RouteDetailEventLoadRouteImpl implements RouteDetailEventLoadRoute {
  const _$RouteDetailEventLoadRouteImpl(this.routeId);

  @override
  final String routeId;

  @override
  String toString() {
    return 'RouteDetailEvent.loadRoute(routeId: $routeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailEventLoadRouteImpl &&
            (identical(other.routeId, routeId) || other.routeId == routeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeId);

  /// Create a copy of RouteDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDetailEventLoadRouteImplCopyWith<_$RouteDetailEventLoadRouteImpl>
  get copyWith =>
      __$$RouteDetailEventLoadRouteImplCopyWithImpl<
        _$RouteDetailEventLoadRouteImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String routeId) loadRoute,
  }) {
    return loadRoute(routeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String routeId)? loadRoute,
  }) {
    return loadRoute?.call(routeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String routeId)? loadRoute,
    required TResult orElse(),
  }) {
    if (loadRoute != null) {
      return loadRoute(routeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteDetailEventLoadRoute value) loadRoute,
  }) {
    return loadRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteDetailEventLoadRoute value)? loadRoute,
  }) {
    return loadRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteDetailEventLoadRoute value)? loadRoute,
    required TResult orElse(),
  }) {
    if (loadRoute != null) {
      return loadRoute(this);
    }
    return orElse();
  }
}

abstract class RouteDetailEventLoadRoute implements RouteDetailEvent {
  const factory RouteDetailEventLoadRoute(final String routeId) =
      _$RouteDetailEventLoadRouteImpl;

  @override
  String get routeId;

  /// Create a copy of RouteDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteDetailEventLoadRouteImplCopyWith<_$RouteDetailEventLoadRouteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
