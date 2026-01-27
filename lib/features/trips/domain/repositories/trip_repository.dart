import 'package:rockmate/features/trips/domain/entities/trip_entity.dart';

abstract class TripRepository {
  /// Get trips for a specific user
  Stream<List<TripEntity>> getUserTrips(String userId);

  /// Get trip by ID
  Future<TripEntity?> getTrip(String tripId);

  /// Create a new trip (returns created ID)
  Future<String> createTrip(TripEntity trip);

  /// Update an existing trip
  Future<void> updateTrip(TripEntity trip);

  /// Delete a trip
  Future<void> deleteTrip(String tripId);
}
