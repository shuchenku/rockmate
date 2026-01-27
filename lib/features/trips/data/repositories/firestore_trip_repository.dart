import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:rockmate/features/trips/data/models/trip_model.dart';
import 'package:rockmate/features/trips/domain/entities/trip_entity.dart';
import 'package:rockmate/features/trips/domain/repositories/trip_repository.dart';

@Injectable(as: TripRepository)
class FirestoreTripRepository implements TripRepository {
  final FirebaseFirestore _firestore;

  FirestoreTripRepository(this._firestore);

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('trips');

  @override
  Stream<List<TripEntity>> getUserTrips(String userId) {
    return _collection
        .where('userId', isEqualTo: userId)
        .orderBy('startDate', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return TripModel.fromFirestore(doc.data(), doc.id).toEntity();
      }).toList();
    });
  }

  @override
  Future<TripEntity?> getTrip(String tripId) async {
    try {
      final doc = await _collection.doc(tripId).get();
      if (!doc.exists || doc.data() == null) return null;
      return TripModel.fromFirestore(doc.data()!, doc.id).toEntity();
    } catch (e) {
      throw Exception('Failed to get trip: $e');
    }
  }

  @override
  Future<String> createTrip(TripEntity trip) async {
    try {
      final model = TripModel.fromEntity(trip);
      final docRef = await _collection.add(model.toFirestore());
      return docRef.id;
    } catch (e) {
      throw Exception('Failed to create trip: $e');
    }
  }

  @override
  Future<void> updateTrip(TripEntity trip) async {
    try {
      final model = TripModel.fromEntity(trip);
      await _collection.doc(trip.id).update(model.toFirestore());
    } catch (e) {
      throw Exception('Failed to update trip: $e');
    }
  }

  @override
  Future<void> deleteTrip(String tripId) async {
    try {
      await _collection.doc(tripId).delete();
    } catch (e) {
      throw Exception('Failed to delete trip: $e');
    }
  }
}
