// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthEventCheckStatusImplCopyWith<$Res> {
  factory _$$AuthEventCheckStatusImplCopyWith(
    _$AuthEventCheckStatusImpl value,
    $Res Function(_$AuthEventCheckStatusImpl) then,
  ) = __$$AuthEventCheckStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventCheckStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventCheckStatusImpl>
    implements _$$AuthEventCheckStatusImplCopyWith<$Res> {
  __$$AuthEventCheckStatusImplCopyWithImpl(
    _$AuthEventCheckStatusImpl _value,
    $Res Function(_$AuthEventCheckStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventCheckStatusImpl implements AuthEventCheckStatus {
  const _$AuthEventCheckStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventCheckStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class AuthEventCheckStatus implements AuthEvent {
  const factory AuthEventCheckStatus() = _$AuthEventCheckStatusImpl;
}

/// @nodoc
abstract class _$$AuthEventSignInWithEmailImplCopyWith<$Res> {
  factory _$$AuthEventSignInWithEmailImplCopyWith(
    _$AuthEventSignInWithEmailImpl value,
    $Res Function(_$AuthEventSignInWithEmailImpl) then,
  ) = __$$AuthEventSignInWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthEventSignInWithEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignInWithEmailImpl>
    implements _$$AuthEventSignInWithEmailImplCopyWith<$Res> {
  __$$AuthEventSignInWithEmailImplCopyWithImpl(
    _$AuthEventSignInWithEmailImpl _value,
    $Res Function(_$AuthEventSignInWithEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$AuthEventSignInWithEmailImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AuthEventSignInWithEmailImpl implements AuthEventSignInWithEmail {
  const _$AuthEventSignInWithEmailImpl({
    required this.email,
    required this.password,
  });

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignInWithEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignInWithEmailImplCopyWith<_$AuthEventSignInWithEmailImpl>
  get copyWith =>
      __$$AuthEventSignInWithEmailImplCopyWithImpl<
        _$AuthEventSignInWithEmailImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signInWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignInWithEmail implements AuthEvent {
  const factory AuthEventSignInWithEmail({
    required final String email,
    required final String password,
  }) = _$AuthEventSignInWithEmailImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventSignInWithEmailImplCopyWith<_$AuthEventSignInWithEmailImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignUpWithEmailImplCopyWith<$Res> {
  factory _$$AuthEventSignUpWithEmailImplCopyWith(
    _$AuthEventSignUpWithEmailImpl value,
    $Res Function(_$AuthEventSignUpWithEmailImpl) then,
  ) = __$$AuthEventSignUpWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthEventSignUpWithEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignUpWithEmailImpl>
    implements _$$AuthEventSignUpWithEmailImplCopyWith<$Res> {
  __$$AuthEventSignUpWithEmailImplCopyWithImpl(
    _$AuthEventSignUpWithEmailImpl _value,
    $Res Function(_$AuthEventSignUpWithEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$AuthEventSignUpWithEmailImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AuthEventSignUpWithEmailImpl implements AuthEventSignUpWithEmail {
  const _$AuthEventSignUpWithEmailImpl({
    required this.email,
    required this.password,
  });

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignUpWithEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignUpWithEmailImplCopyWith<_$AuthEventSignUpWithEmailImpl>
  get copyWith =>
      __$$AuthEventSignUpWithEmailImplCopyWithImpl<
        _$AuthEventSignUpWithEmailImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signUpWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signUpWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signUpWithEmail != null) {
      return signUpWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signUpWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signUpWithEmail != null) {
      return signUpWithEmail(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignUpWithEmail implements AuthEvent {
  const factory AuthEventSignUpWithEmail({
    required final String email,
    required final String password,
  }) = _$AuthEventSignUpWithEmailImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventSignUpWithEmailImplCopyWith<_$AuthEventSignUpWithEmailImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignInWithGoogleImplCopyWith<$Res> {
  factory _$$AuthEventSignInWithGoogleImplCopyWith(
    _$AuthEventSignInWithGoogleImpl value,
    $Res Function(_$AuthEventSignInWithGoogleImpl) then,
  ) = __$$AuthEventSignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignInWithGoogleImpl>
    implements _$$AuthEventSignInWithGoogleImplCopyWith<$Res> {
  __$$AuthEventSignInWithGoogleImplCopyWithImpl(
    _$AuthEventSignInWithGoogleImpl _value,
    $Res Function(_$AuthEventSignInWithGoogleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventSignInWithGoogleImpl implements AuthEventSignInWithGoogle {
  const _$AuthEventSignInWithGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignInWithGoogle implements AuthEvent {
  const factory AuthEventSignInWithGoogle() = _$AuthEventSignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$AuthEventSignInWithAppleImplCopyWith<$Res> {
  factory _$$AuthEventSignInWithAppleImplCopyWith(
    _$AuthEventSignInWithAppleImpl value,
    $Res Function(_$AuthEventSignInWithAppleImpl) then,
  ) = __$$AuthEventSignInWithAppleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignInWithAppleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignInWithAppleImpl>
    implements _$$AuthEventSignInWithAppleImplCopyWith<$Res> {
  __$$AuthEventSignInWithAppleImplCopyWithImpl(
    _$AuthEventSignInWithAppleImpl _value,
    $Res Function(_$AuthEventSignInWithAppleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventSignInWithAppleImpl implements AuthEventSignInWithApple {
  const _$AuthEventSignInWithAppleImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithApple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignInWithAppleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signInWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signInWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signInWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signInWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signInWithApple != null) {
      return signInWithApple(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignInWithApple implements AuthEvent {
  const factory AuthEventSignInWithApple() = _$AuthEventSignInWithAppleImpl;
}

/// @nodoc
abstract class _$$AuthEventSignOutImplCopyWith<$Res> {
  factory _$$AuthEventSignOutImplCopyWith(
    _$AuthEventSignOutImpl value,
    $Res Function(_$AuthEventSignOutImpl) then,
  ) = __$$AuthEventSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignOutImpl>
    implements _$$AuthEventSignOutImplCopyWith<$Res> {
  __$$AuthEventSignOutImplCopyWithImpl(
    _$AuthEventSignOutImpl _value,
    $Res Function(_$AuthEventSignOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventSignOutImpl implements AuthEventSignOut {
  const _$AuthEventSignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignOut implements AuthEvent {
  const factory AuthEventSignOut() = _$AuthEventSignOutImpl;
}

/// @nodoc
abstract class _$$AuthEventAuthStateChangedImplCopyWith<$Res> {
  factory _$$AuthEventAuthStateChangedImplCopyWith(
    _$AuthEventAuthStateChangedImpl value,
    $Res Function(_$AuthEventAuthStateChangedImpl) then,
  ) = __$$AuthEventAuthStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$AuthEventAuthStateChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventAuthStateChangedImpl>
    implements _$$AuthEventAuthStateChangedImplCopyWith<$Res> {
  __$$AuthEventAuthStateChangedImplCopyWithImpl(
    _$AuthEventAuthStateChangedImpl _value,
    $Res Function(_$AuthEventAuthStateChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed}) {
    return _then(
      _$AuthEventAuthStateChangedImpl(
        freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}

/// @nodoc

class _$AuthEventAuthStateChangedImpl implements AuthEventAuthStateChanged {
  const _$AuthEventAuthStateChangedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.authStateChanged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventAuthStateChangedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventAuthStateChangedImplCopyWith<_$AuthEventAuthStateChangedImpl>
  get copyWith =>
      __$$AuthEventAuthStateChangedImplCopyWithImpl<
        _$AuthEventAuthStateChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(String email, String password) signInWithEmail,
    required TResult Function(String email, String password) signUpWithEmail,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithApple,
    required TResult Function() signOut,
    required TResult Function(User? user) authStateChanged,
  }) {
    return authStateChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(String email, String password)? signInWithEmail,
    TResult? Function(String email, String password)? signUpWithEmail,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithApple,
    TResult? Function()? signOut,
    TResult? Function(User? user)? authStateChanged,
  }) {
    return authStateChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(String email, String password)? signInWithEmail,
    TResult Function(String email, String password)? signUpWithEmail,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithApple,
    TResult Function()? signOut,
    TResult Function(User? user)? authStateChanged,
    required TResult orElse(),
  }) {
    if (authStateChanged != null) {
      return authStateChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckStatus value) checkStatus,
    required TResult Function(AuthEventSignInWithEmail value) signInWithEmail,
    required TResult Function(AuthEventSignUpWithEmail value) signUpWithEmail,
    required TResult Function(AuthEventSignInWithGoogle value) signInWithGoogle,
    required TResult Function(AuthEventSignInWithApple value) signInWithApple,
    required TResult Function(AuthEventSignOut value) signOut,
    required TResult Function(AuthEventAuthStateChanged value) authStateChanged,
  }) {
    return authStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventCheckStatus value)? checkStatus,
    TResult? Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult? Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult? Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult? Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult? Function(AuthEventSignOut value)? signOut,
    TResult? Function(AuthEventAuthStateChanged value)? authStateChanged,
  }) {
    return authStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckStatus value)? checkStatus,
    TResult Function(AuthEventSignInWithEmail value)? signInWithEmail,
    TResult Function(AuthEventSignUpWithEmail value)? signUpWithEmail,
    TResult Function(AuthEventSignInWithGoogle value)? signInWithGoogle,
    TResult Function(AuthEventSignInWithApple value)? signInWithApple,
    TResult Function(AuthEventSignOut value)? signOut,
    TResult Function(AuthEventAuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (authStateChanged != null) {
      return authStateChanged(this);
    }
    return orElse();
  }
}

abstract class AuthEventAuthStateChanged implements AuthEvent {
  const factory AuthEventAuthStateChanged(final User? user) =
      _$AuthEventAuthStateChangedImpl;

  User? get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventAuthStateChangedImplCopyWith<_$AuthEventAuthStateChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
