// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForData,
    required TResult Function() dataDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForData,
    TResult? Function()? dataDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForData,
    TResult Function()? dataDownloaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckForData value) checkForData,
    required TResult Function(DataDownloaded value) dataDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckForData value)? checkForData,
    TResult? Function(DataDownloaded value)? dataDownloaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckForData value)? checkForData,
    TResult Function(DataDownloaded value)? dataDownloaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckForDataImplCopyWith<$Res> {
  factory _$$CheckForDataImplCopyWith(
    _$CheckForDataImpl value,
    $Res Function(_$CheckForDataImpl) then,
  ) = __$$CheckForDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckForDataImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CheckForDataImpl>
    implements _$$CheckForDataImplCopyWith<$Res> {
  __$$CheckForDataImplCopyWithImpl(
    _$CheckForDataImpl _value,
    $Res Function(_$CheckForDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckForDataImpl implements CheckForData {
  const _$CheckForDataImpl();

  @override
  String toString() {
    return 'MainEvent.checkForData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckForDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForData,
    required TResult Function() dataDownloaded,
  }) {
    return checkForData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForData,
    TResult? Function()? dataDownloaded,
  }) {
    return checkForData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForData,
    TResult Function()? dataDownloaded,
    required TResult orElse(),
  }) {
    if (checkForData != null) {
      return checkForData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckForData value) checkForData,
    required TResult Function(DataDownloaded value) dataDownloaded,
  }) {
    return checkForData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckForData value)? checkForData,
    TResult? Function(DataDownloaded value)? dataDownloaded,
  }) {
    return checkForData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckForData value)? checkForData,
    TResult Function(DataDownloaded value)? dataDownloaded,
    required TResult orElse(),
  }) {
    if (checkForData != null) {
      return checkForData(this);
    }
    return orElse();
  }
}

abstract class CheckForData implements MainEvent {
  const factory CheckForData() = _$CheckForDataImpl;
}

/// @nodoc
abstract class _$$DataDownloadedImplCopyWith<$Res> {
  factory _$$DataDownloadedImplCopyWith(
    _$DataDownloadedImpl value,
    $Res Function(_$DataDownloadedImpl) then,
  ) = __$$DataDownloadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataDownloadedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$DataDownloadedImpl>
    implements _$$DataDownloadedImplCopyWith<$Res> {
  __$$DataDownloadedImplCopyWithImpl(
    _$DataDownloadedImpl _value,
    $Res Function(_$DataDownloadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DataDownloadedImpl implements DataDownloaded {
  const _$DataDownloadedImpl();

  @override
  String toString() {
    return 'MainEvent.dataDownloaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataDownloadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForData,
    required TResult Function() dataDownloaded,
  }) {
    return dataDownloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForData,
    TResult? Function()? dataDownloaded,
  }) {
    return dataDownloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForData,
    TResult Function()? dataDownloaded,
    required TResult orElse(),
  }) {
    if (dataDownloaded != null) {
      return dataDownloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckForData value) checkForData,
    required TResult Function(DataDownloaded value) dataDownloaded,
  }) {
    return dataDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckForData value)? checkForData,
    TResult? Function(DataDownloaded value)? dataDownloaded,
  }) {
    return dataDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckForData value)? checkForData,
    TResult Function(DataDownloaded value)? dataDownloaded,
    required TResult orElse(),
  }) {
    if (dataDownloaded != null) {
      return dataDownloaded(this);
    }
    return orElse();
  }
}

abstract class DataDownloaded implements MainEvent {
  const factory DataDownloaded() = _$DataDownloadedImpl;
}
