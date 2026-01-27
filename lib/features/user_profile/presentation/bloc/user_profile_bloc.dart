import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rockmate/features/user_profile/data/repositories/user_profile_repository.dart';
import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';
import 'package:rockmate/features/user_profile/domain/events/user_profile_event.dart';
import 'package:rockmate/features/user_profile/domain/state/user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserProfileRepository _localRepository;
  final UserProfileRepository _networkRepository;
  final FirebaseStorage _storage;
  final FirebaseAuth _auth;

  UserProfileBloc(
    @Named('local') this._localRepository,
    @Named('network') this._networkRepository,
    this._storage,
    this._auth,
  ) : super(const UserProfileState.initial()) {
    on<LoadProfile>(_onLoadProfile);
    on<UpdateProfile>(_onUpdateProfile);
    on<SetEditMode>(_onSetEditMode);
    on<UploadPhoto>(_onUploadPhoto);
    on<SignOut>(_onSignOut);
    on<DeleteProfile>(_onDeleteProfile);
  }

  Future<void> _onLoadProfile(
    LoadProfile event,
    Emitter<UserProfileState> emit,
  ) async {
    emit(const UserProfileState.loading());
    
    try {
      // Try to get from local first (offline-first)
      var profile = await _localRepository.getProfile(event.userId);
      
      // If no local profile, try network (but don't fail if unavailable)
      if (profile == null) {
        try {
          final networkProfile = await _networkRepository.getProfile(event.userId);
          if (networkProfile != null) {
            // Save to local and emit
            await _localRepository.saveProfile(networkProfile);
            emit(UserProfileState.loaded(networkProfile));
            return;
          }
        } catch (networkError) {
          // Firestore unavailable - that's OK, we'll create a default profile
        }
        
        // No profile exists anywhere - create a default one
        final defaultProfile = UserProfileEntity(
          userId: event.userId,
          displayName: 'User', // Default name
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        
        // Save locally
        await _localRepository.saveProfile(defaultProfile);
        emit(UserProfileState.loaded(defaultProfile));
        return;
      }
      
      // We have a local profile - emit it immediately
      emit(UserProfileState.loaded(profile));
      
      // Try to sync from network in background (but don't fail if unavailable)
      try {
        final networkProfile = await _networkRepository.getProfile(event.userId);
        if (networkProfile != null) {
          // Update local cache
          await _localRepository.saveProfile(networkProfile);
          emit(UserProfileState.loaded(networkProfile));
        }
      } catch (networkError) {
        // Network unavailable - no problem, we already have local data
      }
    } catch (e) {
      // Only show error if we truly can't do anything
      emit(UserProfileState.error('Failed to load profile: $e'));
    }
  }

  void _onSetEditMode(
    SetEditMode event,
    Emitter<UserProfileState> emit,
  ) {
    final currentState = state;
    if (currentState is Loaded) {
      emit(currentState.copyWith(isEditing: event.isEditing));
    }
  }

  Future<void> _onUpdateProfile(
    UpdateProfile event,
    Emitter<UserProfileState> emit,
  ) async {
    try {
      // Update timestamp
      final updatedProfile = UserProfileEntity(
        userId: event.profile.userId,
        displayName: event.profile.displayName,
        photoUrl: event.profile.photoUrl,
        bio: event.profile.bio,
        age: event.profile.age,
        gender: event.profile.gender,
        location: event.profile.location,
        sportGrade: event.profile.sportGrade,
        boulderGrade: event.profile.boulderGrade,
        tradGrade: event.profile.tradGrade,
        isPublic: event.profile.isPublic,
        favoriteClimbingType: event.profile.favoriteClimbingType,
        grades: event.profile.grades,
        createdAt: event.profile.createdAt ?? DateTime.now(),
        updatedAt: DateTime.now(),
      );

      // Save to local first (offline-first) - emit loaded with isEditing: false
      await _localRepository.saveProfile(updatedProfile);
      emit(UserProfileState.loaded(updatedProfile, isEditing: false));

      // Then sync to network
      try {
        await _networkRepository.saveProfile(updatedProfile);
      } catch (e) {
        // Network error, but local save succeeded, so that's okay
        // The sync will happen when connectivity is restored
      }
    } catch (e) {
      emit(UserProfileState.error('Failed to update profile: $e'));
    }
  }

  Future<void> _onUploadPhoto(
    UploadPhoto event,
    Emitter<UserProfileState> emit,
  ) async {
    try {
      final currentState = state;
      if (currentState is! Loaded) {
        emit(const UserProfileState.error('No profile loaded'));
        return;
      }

      final userId = currentState.profile.userId;
      final file = File(event.photoPath);

      // Create reference to Firebase Storage
      final ref = _storage.ref().child('profile_photos/$userId.jpg');

      // Upload file
      final uploadTask = ref.putFile(file);

      // Listen to upload progress
      uploadTask.snapshotEvents.listen((snapshot) {
        final progress = snapshot.bytesTransferred / snapshot.totalBytes;
        emit(UserProfileState.uploading(progress));
      });

      // Wait for upload to complete
      await uploadTask;

      // Get download URL
      final photoUrl = await ref.getDownloadURL();

      // Update profile with new photo URL
      final updatedProfile = UserProfileEntity(
        userId: currentState.profile.userId,
        displayName: currentState.profile.displayName,
        photoUrl: photoUrl,
        bio: currentState.profile.bio,
        age: currentState.profile.age,
        gender: currentState.profile.gender,
        location: currentState.profile.location,
        sportGrade: currentState.profile.sportGrade,
        boulderGrade: currentState.profile.boulderGrade,
        tradGrade: currentState.profile.tradGrade,
        isPublic: currentState.profile.isPublic,
        favoriteClimbingType: currentState.profile.favoriteClimbingType,
        grades: currentState.profile.grades,
        createdAt: currentState.profile.createdAt,
        updatedAt: DateTime.now(),
      );

      // Save updated profile
      add(UpdateProfile(updatedProfile));
    } catch (e) {
      emit(UserProfileState.error('Failed to upload photo: $e'));
    }
  }

  Future<void> _onDeleteProfile(
    DeleteProfile event,
    Emitter<UserProfileState> emit,
  ) async {
    try {
      final currentState = state;
      if (currentState is! Loaded) {
        emit(const UserProfileState.error('No profile loaded'));
        return;
      }

      final userId = currentState.profile.userId;

      // Delete from local
      await _localRepository.deleteProfile(userId);

      // Delete from network
      try {
        await _networkRepository.deleteProfile(userId);
      } catch (e) {
        // Network error, local delete succeeded
      }

      emit(const UserProfileState.initial());
    } catch (e) {
      emit(UserProfileState.error('Failed to delete profile: $e'));
    }
  }
  Future<void> _onSignOut(
    SignOut event,
    Emitter<UserProfileState> emit,
  ) async {
    try {
      await _auth.signOut();
      emit(const UserProfileState.initial());
    } catch (e) {
      emit(UserProfileState.error('Failed to sign out: $e'));
    }
  }
}
