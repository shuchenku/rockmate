import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rockmate/features/auth/data/repositories/auth_repository.dart';
import 'package:rockmate/features/auth/domain/events/auth_event.dart';
import 'package:rockmate/features/auth/domain/state/auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User?>? _authStateSubscription;

  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEventCheckStatus>(_onCheckStatus);
    on<AuthEventSignInWithEmail>(_onSignInWithEmail);
    on<AuthEventSignUpWithEmail>(_onSignUpWithEmail);
    on<AuthEventSignInWithGoogle>(_onSignInWithGoogle);
    on<AuthEventSignInWithApple>(_onSignInWithApple);
    on<AuthEventSignOut>(_onSignOut);
    on<AuthEventAuthStateChanged>(_onAuthStateChanged);

    // Listen to auth state changes
    _authStateSubscription = _authRepository.authStateChanges.listen((user) {
      add(AuthEvent.authStateChanged(user));
    });
  }

  Future<void> _onCheckStatus(
    AuthEventCheckStatus event,
    Emitter<AuthState> emit,
  ) async {
    final user = _authRepository.currentUser;
    if (user != null) {
      emit(AuthState.authenticated(user));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onSignInWithEmail(
    AuthEventSignInWithEmail event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final user = await _authRepository.signInWithEmail(
        event.email,
        event.password,
      );
      if (user != null) {
        emit(AuthState.authenticated(user));
      } else {
        emit(const AuthState.error('Failed to sign in'));
      }
    } on FirebaseAuthException catch (e) {
      emit(AuthState.error(_getFirebaseErrorMessage(e)));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignUpWithEmail(
    AuthEventSignUpWithEmail event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final user = await _authRepository.signUpWithEmail(
        event.email,
        event.password,
      );
      if (user != null) {
        emit(AuthState.authenticated(user));
      } else {
        emit(const AuthState.error('Failed to create account'));
      }
    } on FirebaseAuthException catch (e) {
      emit(AuthState.error(_getFirebaseErrorMessage(e)));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignInWithGoogle(
    AuthEventSignInWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final user = await _authRepository.signInWithGoogle();
      if (user != null) {
        emit(AuthState.authenticated(user));
      } else {
        // User canceled the sign-in
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignInWithApple(
    AuthEventSignInWithApple event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final user = await _authRepository.signInWithApple();
      if (user != null) {
        emit(AuthState.authenticated(user));
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignOut(
    AuthEventSignOut event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _authRepository.signOut();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void _onAuthStateChanged(
    AuthEventAuthStateChanged event,
    Emitter<AuthState> emit,
  ) {
    if (event.user != null) {
      emit(AuthState.authenticated(event.user!));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  String _getFirebaseErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No account found with this email.';
      case 'wrong-password':
        return 'Incorrect password.';
      case 'email-already-in-use':
        return 'An account already exists with this email.';
      case 'weak-password':
        return 'Password should be at least 6 characters.';
      case 'invalid-email':
        return 'Invalid email address.';
      default:
        return e.message ?? 'An error occurred';
    }
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }
}
