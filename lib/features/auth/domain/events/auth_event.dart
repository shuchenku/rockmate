import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkStatus() = AuthEventCheckStatus;
  const factory AuthEvent.signInWithEmail({
    required String email,
    required String password,
  }) = AuthEventSignInWithEmail;
  const factory AuthEvent.signUpWithEmail({
    required String email,
    required String password,
  }) = AuthEventSignUpWithEmail;
  const factory AuthEvent.signInWithGoogle() = AuthEventSignInWithGoogle;
  const factory AuthEvent.signInWithApple() = AuthEventSignInWithApple;
  const factory AuthEvent.signOut() = AuthEventSignOut;
  const factory AuthEvent.authStateChanged(User? user) = AuthEventAuthStateChanged;
}
