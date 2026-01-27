// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(bool hasData) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(bool hasData)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(bool hasData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainInitial value) initial,
    required TResult Function(MainChecking value) checking,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(MainChecking value)? checking,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(MainChecking value)? checking,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MainInitialImplCopyWith<$Res> {
  factory _$$MainInitialImplCopyWith(
    _$MainInitialImpl value,
    $Res Function(_$MainInitialImpl) then,
  ) = __$$MainInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainInitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainInitialImpl>
    implements _$$MainInitialImplCopyWith<$Res> {
  __$$MainInitialImplCopyWithImpl(
    _$MainInitialImpl _value,
    $Res Function(_$MainInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainInitialImpl implements MainInitial {
  const _$MainInitialImpl();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(bool hasData) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(bool hasData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(bool hasData)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(MainInitial value) initial,
    required TResult Function(MainChecking value) checking,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(MainChecking value)? checking,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(MainChecking value)? checking,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MainInitial implements MainState {
  const factory MainInitial() = _$MainInitialImpl;
}

/// @nodoc
abstract class _$$MainCheckingImplCopyWith<$Res> {
  factory _$$MainCheckingImplCopyWith(
    _$MainCheckingImpl value,
    $Res Function(_$MainCheckingImpl) then,
  ) = __$$MainCheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainCheckingImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainCheckingImpl>
    implements _$$MainCheckingImplCopyWith<$Res> {
  __$$MainCheckingImplCopyWithImpl(
    _$MainCheckingImpl _value,
    $Res Function(_$MainCheckingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MainCheckingImpl implements MainChecking {
  const _$MainCheckingImpl();

  @override
  String toString() {
    return 'MainState.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainCheckingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(bool hasData) loaded,
    required TResult Function(String message) error,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(bool hasData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(bool hasData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainInitial value) initial,
    required TResult Function(MainChecking value) checking,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainError value) error,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(MainChecking value)? checking,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainError value)? error,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(MainChecking value)? checking,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class MainChecking implements MainState {
  const factory MainChecking() = _$MainCheckingImpl;
}

/// @nodoc
abstract class _$$MainLoadedImplCopyWith<$Res> {
  factory _$$MainLoadedImplCopyWith(
    _$MainLoadedImpl value,
    $Res Function(_$MainLoadedImpl) then,
  ) = __$$MainLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasData});
}

/// @nodoc
class __$$MainLoadedImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadedImpl>
    implements _$$MainLoadedImplCopyWith<$Res> {
  __$$MainLoadedImplCopyWithImpl(
    _$MainLoadedImpl _value,
    $Res Function(_$MainLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hasData = null}) {
    return _then(
      _$MainLoadedImpl(
        hasData: null == hasData
            ? _value.hasData
            : hasData // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$MainLoadedImpl implements MainLoaded {
  const _$MainLoadedImpl({required this.hasData});

  @override
  final bool hasData;

  @override
  String toString() {
    return 'MainState.loaded(hasData: $hasData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLoadedImpl &&
            (identical(other.hasData, hasData) || other.hasData == hasData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasData);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainLoadedImplCopyWith<_$MainLoadedImpl> get copyWith =>
      __$$MainLoadedImplCopyWithImpl<_$MainLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(bool hasData) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(hasData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(bool hasData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(hasData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(bool hasData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hasData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainInitial value) initial,
    required TResult Function(MainChecking value) checking,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(MainChecking value)? checking,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(MainChecking value)? checking,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MainLoaded implements MainState {
  const factory MainLoaded({required final bool hasData}) = _$MainLoadedImpl;

  bool get hasData;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainLoadedImplCopyWith<_$MainLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainErrorImplCopyWith<$Res> {
  factory _$$MainErrorImplCopyWith(
    _$MainErrorImpl value,
    $Res Function(_$MainErrorImpl) then,
  ) = __$$MainErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MainErrorImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainErrorImpl>
    implements _$$MainErrorImplCopyWith<$Res> {
  __$$MainErrorImplCopyWithImpl(
    _$MainErrorImpl _value,
    $Res Function(_$MainErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$MainErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$MainErrorImpl implements MainError {
  const _$MainErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainErrorImplCopyWith<_$MainErrorImpl> get copyWith =>
      __$$MainErrorImplCopyWithImpl<_$MainErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(bool hasData) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(bool hasData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(bool hasData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainInitial value) initial,
    required TResult Function(MainChecking value) checking,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(MainChecking value)? checking,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(MainChecking value)? checking,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MainError implements MainState {
  const factory MainError(final String message) = _$MainErrorImpl;

  String get message;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainErrorImplCopyWith<_$MainErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
