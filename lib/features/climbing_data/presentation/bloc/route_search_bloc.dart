import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';

@injectable
class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  final ClimbRepository _climbRepository;

  RouteSearchBloc(this._climbRepository) : super(const RouteSearchState.initial()) {
    // No debounce needed - local queries are instant
    on<RouteSearchEventQueryChanged>(_onQueryChanged);
    on<RouteSearchEventLocationFilterChanged>(_onLocationFilterChanged);
    on<RouteSearchEventGradeRangeChanged>(_onGradeRangeChanged);
    on<RouteSearchEventRouteTypesChanged>(_onRouteTypesChanged);
    on<RouteSearchEventSearchSubmitted>(_onSearchSubmitted);
    on<RouteSearchEventFiltersCleared>(_onFiltersCleared);
    
    // Load available states for filter dropdown
    _loadAvailableAreas();
  }

  void _loadAvailableAreas() {
    try {
      final states = _climbRepository.getUniqueStates();
      final newState = state.when(
        initial: (filters, _) => RouteSearchState.initial(
          filters: filters,
          availableAreas: states,
        ),
        loading: (filters, _) => RouteSearchState.loading(
          filters: filters,
          availableAreas: states,
        ),
        success: (filters, routes, _) => RouteSearchState.success(
          filters: filters,
          routes: routes,
          availableAreas: states,
        ),
        error: (filters, message, _) => RouteSearchState.error(
          filters: filters,
          message: message,
          availableAreas: states,
        ),
      );
      emit(newState);
    } catch (e) {
      // Silently fail - areas will remain empty
    }
  }

  Future<void> _onQueryChanged(
    RouteSearchEventQueryChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(query: event.query);
    
    if (event.query.trim().isEmpty) {
      emit(RouteSearchState.initial(
        filters: updatedFilters,
        availableAreas: state.availableAreas,
      ));
      return;
    }

    await _performSearch(updatedFilters, emit);
  }

  Future<void> _onLocationFilterChanged(
    RouteSearchEventLocationFilterChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(locationFilter: event.locationFilter);
    
    final newState = state.when(
      initial: (_, areas) => RouteSearchState.initial(filters: updatedFilters, availableAreas: areas),
      loading: (_, areas) => RouteSearchState.loading(filters: updatedFilters, availableAreas: areas),
      success: (_, routes, areas) => RouteSearchState.success(filters: updatedFilters, routes: routes, availableAreas: areas),
      error: (_, message, areas) => RouteSearchState.error(filters: updatedFilters, message: message, availableAreas: areas),
    );
    emit(newState);

    if (!updatedFilters.isEmpty) {
      await _performSearch(updatedFilters, emit);
    }
  }

  Future<void> _onGradeRangeChanged(
    RouteSearchEventGradeRangeChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(
      gradeMin: event.gradeMin,
      gradeMax: event.gradeMax,
    );
    
    final newState = state.when(
      initial: (_, areas) => RouteSearchState.initial(filters: updatedFilters, availableAreas: areas),
      loading: (_, areas) => RouteSearchState.loading(filters: updatedFilters, availableAreas: areas),
      success: (_, routes, areas) => RouteSearchState.success(filters: updatedFilters, routes: routes, availableAreas: areas),
      error: (_, message, areas) => RouteSearchState.error(filters: updatedFilters, message: message, availableAreas: areas),
    );
    emit(newState);

    if (!updatedFilters.isEmpty) {
      await _performSearch(updatedFilters, emit);
    }
  }

  Future<void> _onRouteTypesChanged(
    RouteSearchEventRouteTypesChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(types: event.types);
    
    final newState = state.when(
      initial: (_, areas) => RouteSearchState.initial(filters: updatedFilters, availableAreas: areas),
      loading: (_, areas) => RouteSearchState.loading(filters: updatedFilters, availableAreas: areas),
      success: (_, routes, areas) => RouteSearchState.success(filters: updatedFilters, routes: routes, availableAreas: areas),
      error: (_, message, areas) => RouteSearchState.error(filters: updatedFilters, message: message, availableAreas: areas),
    );
    emit(newState);

    if (!updatedFilters.isEmpty) {
      await _performSearch(updatedFilters, emit);
    }
  }

  Future<void> _onSearchSubmitted(
    RouteSearchEventSearchSubmitted event,
    Emitter<RouteSearchState> emit,
  ) async {
    if (state.filters.isEmpty) return;
    await _performSearch(state.filters, emit);
  }

  Future<void> _onFiltersCleared(
    RouteSearchEventFiltersCleared event,
    Emitter<RouteSearchState> emit,
  ) async {
    emit(RouteSearchState.initial(availableAreas: state.availableAreas));
  }

  /// Performs search using local climb repository
  Future<void> _performSearch(
    RouteSearchFilters filters,
    Emitter<RouteSearchState> emit,
  ) async {
    emit(RouteSearchState.loading(
      filters: filters,
      availableAreas: state.availableAreas,
    ));

    try {
      // Extract state from locationFilter (use most specific location set)
      final stateFilter = filters.locationFilter.mostSpecific;
      
      // Convert RouteType Set to type string list
      final typesList = filters.types.map((t) => t.displayName).toList();
      
      // For now, ignore grade filtering (would need conversion from string grades to numeric)
      final climbResults = await _climbRepository.searchClimbs(
        query: filters.query,
        state: stateFilter?.isNotEmpty == true ? stateFilter : null,
        types: typesList.isNotEmpty ? typesList : null,
        // TODO: Convert string grades to numeric for filtering
        // minGrade: _convertGradeToNumeric(filters.gradeMin),
        // maxGrade: _convertGradeToNumeric(filters.gradeMax),
      );

      // Convert ClimbEntity to RouteEntity for existing UI
      final routes = climbResults.map((climb) => RouteEntity(
        id: climb.uuid,
        name: climb.name,
        grade: climb.displayGrade,
        type: climb.primaryType,
        rating: 0.0, // ClimbEntity doesn't have ratings yet
        location: climb.locationString,
      )).toList();
      
      emit(RouteSearchState.success(
        filters: filters,
        routes: routes,
        availableAreas: state.availableAreas,
      ));
    } catch (e) {
      emit(RouteSearchState.error(
        filters: filters,
        message: e.toString(),
        availableAreas: state.availableAreas,
      ));
    }
  }
}
