import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:rockmate/features/user_profile/data/models/user_profile_model.dart';
import 'package:rockmate/features/user_profile/data/repositories/user_profile_repository.dart';
import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

@Named('local')
@Injectable(as: UserProfileRepository)
class UserProfileLocalRepository implements UserProfileRepository {
  static const String _boxName = 'user_profiles';
  
  Future<Box<Map>> get _box async {
    if (!Hive.isBoxOpen(_boxName)) {
      return await Hive.openBox<Map>(_boxName);
    }
    return Hive.box<Map>(_boxName);
  }

  @override
  Future<UserProfileEntity?> getProfile(String userId) async {
    final box = await _box;
    final data = box.get(userId);
    if (data == null) return null;
    
    // Hive returns Map<dynamic, dynamic>, checking casts
    final mapData = Map<String, dynamic>.from(data.cast<String, dynamic>());
    final model = UserProfileModel.fromFirestore(mapData);
    return model.toEntity();
  }

  @override
  Future<void> saveProfile(UserProfileEntity profile) async {
    final box = await _box;
    final model = UserProfileModel.fromEntity(profile);
    await box.put(profile.userId, model.toFirestore());
  }

  @override
  Future<void> deleteProfile(String userId) async {
    final box = await _box;
    await box.delete(userId);
  }

  @override
  Stream<UserProfileEntity?> watchProfile(String userId) async* {
    final box = await _box;
    final data = box.get(userId);
    if (data != null) {
       final mapData = Map<String, dynamic>.from(data.cast<String, dynamic>());
      yield UserProfileModel.fromFirestore(mapData).toEntity();
    }
    
    await for (final event in box.watch(key: userId)) {
      if (event.deleted) {
        yield null;
      } else if (event.value != null) {
        final mapData = Map<String, dynamic>.from((event.value as Map).cast<String, dynamic>());
        yield UserProfileModel.fromFirestore(mapData).toEntity();
      }
    }
  }
}
