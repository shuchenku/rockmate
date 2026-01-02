// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logbook_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LogbookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TickEntity> projects, List<TickEntity> sends)
    success,
    required TResult Function(String errorMessage) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult? Function(String errorMessage)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogbookStateInitial value) initial,
    required TResult Function(LogbookStateLoading value) loading,
    required TResult Function(LogbookStateSuccess value) success,
    required TResult Function(LogbookStateFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogbookStateInitial value)? initial,
    TResult? Function(LogbookStateLoading value)? loading,
    TResult? Function(LogbookStateSuccess value)? success,
    TResult? Function(LogbookStateFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogbookStateInitial value)? initial,
    TResult Function(LogbookStateLoading value)? loading,
    TResult Function(LogbookStateSuccess value)? success,
    TResult Function(LogbookStateFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogbookStateCopyWith<$Res> {
  factory $LogbookStateCopyWith(
    LogbookState value,
    $Res Function(LogbookState) then,
  ) = _$LogbookStateCopyWithImpl<$Res, LogbookState>;
}

/// @nodoc
class _$LogbookStateCopyWithImpl<$Res, $Val extends LogbookState>
    implements $LogbookStateCopyWith<$Res> {
  _$LogbookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogbookStateInitialImplCopyWith<$Res> {
  factory _$$LogbookStateInitialImplCopyWith(
    _$LogbookStateInitialImpl value,
    $Res Function(_$LogbookStateInitialImpl) then,
  ) = __$$LogbookStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogbookStateInitialImplCopyWithImpl<$Res>
    extends _$LogbookStateCopyWithImpl<$Res, _$LogbookStateInitialImpl>
    implements _$$LogbookStateInitialImplCopyWith<$Res> {
  __$$LogbookStateInitialImplCopyWithImpl(
    _$LogbookStateInitialImpl _value,
    $Res Function(_$LogbookStateInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogbookStateInitialImpl implements LogbookStateInitial {
  const _$LogbookStateInitialImpl();

  @override
  String toString() {
    return 'LogbookState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogbookStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TickEntity> projects, List<TickEntity> sends)
    success,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(LogbookStateInitial value) initial,
    required TResult Function(LogbookStateLoading value) loading,
    required TResult Function(LogbookStateSuccess value) success,
    required TResult Function(LogbookStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogbookStateInitial value)? initial,
    TResult? Function(LogbookStateLoading value)? loading,
    TResult? Function(LogbookStateSuccess value)? success,
    TResult? Function(LogbookStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogbookStateInitial value)? initial,
    TResult Function(LogbookStateLoading value)? loading,
    TResult Function(LogbookStateSuccess value)? success,
    TResult Function(LogbookStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LogbookStateInitial implements LogbookState {
  const factory LogbookStateInitial() = _$LogbookStateInitialImpl;
}

/// @nodoc
abstract class _$$LogbookStateLoadingImplCopyWith<$Res> {
  factory _$$LogbookStateLoadingImplCopyWith(
    _$LogbookStateLoadingImpl value,
    $Res Function(_$LogbookStateLoadingImpl) then,
  ) = __$$LogbookStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogbookStateLoadingImplCopyWithImpl<$Res>
    extends _$LogbookStateCopyWithImpl<$Res, _$LogbookStateLoadingImpl>
    implements _$$LogbookStateLoadingImplCopyWith<$Res> {
  __$$LogbookStateLoadingImplCopyWithImpl(
    _$LogbookStateLoadingImpl _value,
    $Res Function(_$LogbookStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogbookStateLoadingImpl implements LogbookStateLoading {
  const _$LogbookStateLoadingImpl();

  @override
  String toString() {
    return 'LogbookState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogbookStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TickEntity> projects, List<TickEntity> sends)
    success,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogbookStateInitial value) initial,
    required TResult Function(LogbookStateLoading value) loading,
    required TResult Function(LogbookStateSuccess value) success,
    required TResult Function(LogbookStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogbookStateInitial value)? initial,
    TResult? Function(LogbookStateLoading value)? loading,
    TResult? Function(LogbookStateSuccess value)? success,
    TResult? Function(LogbookStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogbookStateInitial value)? initial,
    TResult Function(LogbookStateLoading value)? loading,
    TResult Function(LogbookStateSuccess value)? success,
    TResult Function(LogbookStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LogbookStateLoading implements LogbookState {
  const factory LogbookStateLoading() = _$LogbookStateLoadingImpl;
}

/// @nodoc
abstract class _$$LogbookStateSuccessImplCopyWith<$Res> {
  factory _$$LogbookStateSuccessImplCopyWith(
    _$LogbookStateSuccessImpl value,
    $Res Function(_$LogbookStateSuccessImpl) then,
  ) = __$$LogbookStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TickEntity> projects, List<TickEntity> sends});
}

/// @nodoc
class __$$LogbookStateSuccessImplCopyWithImpl<$Res>
    extends _$LogbookStateCopyWithImpl<$Res, _$LogbookStateSuccessImpl>
    implements _$$LogbookStateSuccessImplCopyWith<$Res> {
  __$$LogbookStateSuccessImplCopyWithImpl(
    _$LogbookStateSuccessImpl _value,
    $Res Function(_$LogbookStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projects = null, Object? sends = null}) {
    return _then(
      _$LogbookStateSuccessImpl(
        projects: null == projects
            ? _value._projects
            : projects // ignore: cast_nullable_to_non_nullable
                  as List<TickEntity>,
        sends: null == sends
            ? _value._sends
            : sends // ignore: cast_nullable_to_non_nullable
                  as List<TickEntity>,
      ),
    );
  }
}

/// @nodoc

class _$LogbookStateSuccessImpl implements LogbookStateSuccess {
  const _$LogbookStateSuccessImpl({
    required final List<TickEntity> projects,
    required final List<TickEntity> sends,
  }) : _projects = projects,
       _sends = sends;

  final List<TickEntity> _projects;
  @override
  List<TickEntity> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  // status == TickStatus.toDo
  final List<TickEntity> _sends;
  // status == TickStatus.toDo
  @override
  List<TickEntity> get sends {
    if (_sends is EqualUnmodifiableListView) return _sends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sends);
  }

  @override
  String toString() {
    return 'LogbookState.success(projects: $projects, sends: $sends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogbookStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(other._sends, _sends));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_projects),
    const DeepCollectionEquality().hash(_sends),
  );

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogbookStateSuccessImplCopyWith<_$LogbookStateSuccessImpl> get copyWith =>
      __$$LogbookStateSuccessImplCopyWithImpl<_$LogbookStateSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TickEntity> projects, List<TickEntity> sends)
    success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(projects, sends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call(projects, sends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(projects, sends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogbookStateInitial value) initial,
    required TResult Function(LogbookStateLoading value) loading,
    required TResult Function(LogbookStateSuccess value) success,
    required TResult Function(LogbookStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogbookStateInitial value)? initial,
    TResult? Function(LogbookStateLoading value)? loading,
    TResult? Function(LogbookStateSuccess value)? success,
    TResult? Function(LogbookStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogbookStateInitial value)? initial,
    TResult Function(LogbookStateLoading value)? loading,
    TResult Function(LogbookStateSuccess value)? success,
    TResult Function(LogbookStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LogbookStateSuccess implements LogbookState {
  const factory LogbookStateSuccess({
    required final List<TickEntity> projects,
    required final List<TickEntity> sends,
  }) = _$LogbookStateSuccessImpl;

  List<TickEntity> get projects; // status == TickStatus.toDo
  List<TickEntity> get sends;

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogbookStateSuccessImplCopyWith<_$LogbookStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogbookStateFailureImplCopyWith<$Res> {
  factory _$$LogbookStateFailureImplCopyWith(
    _$LogbookStateFailureImpl value,
    $Res Function(_$LogbookStateFailureImpl) then,
  ) = __$$LogbookStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$LogbookStateFailureImplCopyWithImpl<$Res>
    extends _$LogbookStateCopyWithImpl<$Res, _$LogbookStateFailureImpl>
    implements _$$LogbookStateFailureImplCopyWith<$Res> {
  __$$LogbookStateFailureImplCopyWithImpl(
    _$LogbookStateFailureImpl _value,
    $Res Function(_$LogbookStateFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null}) {
    return _then(
      _$LogbookStateFailureImpl(
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LogbookStateFailureImpl implements LogbookStateFailure {
  const _$LogbookStateFailureImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LogbookState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogbookStateFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogbookStateFailureImplCopyWith<_$LogbookStateFailureImpl> get copyWith =>
      __$$LogbookStateFailureImplCopyWithImpl<_$LogbookStateFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TickEntity> projects, List<TickEntity> sends)
    success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TickEntity> projects, List<TickEntity> sends)?
    success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogbookStateInitial value) initial,
    required TResult Function(LogbookStateLoading value) loading,
    required TResult Function(LogbookStateSuccess value) success,
    required TResult Function(LogbookStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogbookStateInitial value)? initial,
    TResult? Function(LogbookStateLoading value)? loading,
    TResult? Function(LogbookStateSuccess value)? success,
    TResult? Function(LogbookStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogbookStateInitial value)? initial,
    TResult Function(LogbookStateLoading value)? loading,
    TResult Function(LogbookStateSuccess value)? success,
    TResult Function(LogbookStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LogbookStateFailure implements LogbookState {
  const factory LogbookStateFailure({required final String errorMessage}) =
      _$LogbookStateFailureImpl;

  String get errorMessage;

  /// Create a copy of LogbookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogbookStateFailureImplCopyWith<_$LogbookStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
