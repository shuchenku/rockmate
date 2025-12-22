import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_detail_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_detail_state.dart';

@injectable
class RouteDetailBloc extends Bloc<RouteDetailEvent, RouteDetailState> {
  final ClimbRepository _climbRepository;

  RouteDetailBloc(this._climbRepository) : super(const RouteDetailState.initial()) {
    on<RouteDetailEventLoadRoute>(_onLoadRoute);
  }

  Future<void> _onLoadRoute(
    RouteDetailEventLoadRoute event,
    Emitter<RouteDetailState> emit,
  ) async {
    // Emit loading state
    emit(RouteDetailState.loading(routeId: event.routeId));

    try {
      // Fetch climb from local database
      final climb = await _climbRepository.getClimbByUuid(event.routeId);

      if (climb != null) {
        // Successfully found the climb
        emit(RouteDetailState.success(climb: climb));
      } else {
        // Climb not found in database
        emit(RouteDetailState.error(
          routeId: event.routeId,
          message: 'Route not found. It may have been removed or is no longer available.',
        ));
      }
    } catch (e) {
      // Database error or other exception
      emit(RouteDetailState.error(
        routeId: event.routeId,
        message: 'Failed to load route details: ${e.toString()}',
      ));
    }
  }
}
