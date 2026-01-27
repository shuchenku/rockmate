import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:rockmate/features/user_profile/data/models/user_profile_model.dart';
import 'package:rockmate/features/user_profile/data/repositories/user_profile_repository.dart';
import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

@Injectable(as: UserProfileRepository)
@Named('network')
class UserProfileNetworkRepository implements UserProfileRepository {
  final FirebaseFirestore _firestore;

  UserProfileNetworkRepository(this._firestore);

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('profiles');

  @override
  Future<UserProfileEntity?> getProfile(String userId) async {
    try {
      final doc = await _collection.doc(userId).get();
      if (!doc.exists || doc.data() == null) {
        return null;
      }
      return UserProfileModel.fromFirestore(doc.data()!).toEntity();
    } catch (e) {
      throw Exception('Failed to get profile: $e');
    }
  }

  @override
  Future<void> saveProfile(UserProfileEntity profile) async {
    try {
      final model = UserProfileModel.fromEntity(profile);
      await _collection.doc(profile.userId).set(
            model.toFirestore(),
            SetOptions(merge: true),
          );
    } catch (e) {
      throw Exception('Failed to save profile: $e');
    }
  }

  @override
  Future<void> deleteProfile(String userId) async {
    try {
      await _collection.doc(userId).delete();
    } catch (e) {
      throw Exception('Failed to delete profile: $e');
    }
  }

  @override
  Stream<UserProfileEntity?> watchProfile(String userId) {
    return _collection.doc(userId).snapshots().map((snapshot) {
      if (!snapshot.exists || snapshot.data() == null) {
        return null;
      }
      return UserProfileModel.fromFirestore(snapshot.data()!).toEntity();
    });
  }
}
