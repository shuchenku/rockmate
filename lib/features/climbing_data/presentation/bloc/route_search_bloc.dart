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
    // Defer emit to avoid "emit during construction" error
    Future.microtask(() {
      try {
        final countries = _climbRepository.getUniqueCountries();
        // Don't load states initially - they'll be loaded when a country is selected
        final newState = state.when(
          initial: (filters, _, __) => RouteSearchState.initial(
            filters: filters,
            availableCountries: countries,
            availableStates: [],
          ),
          loading: (filters, _, __) => RouteSearchState.loading(
            filters: filters,
            availableCountries: countries,
            availableStates: [],
          ),
          success: (filters, routes, _, __) => RouteSearchState.success(
            filters: filters,
            routes: routes,
            availableCountries: countries,
            availableStates: [],
          ),
          error: (filters, message, _, __ ) => RouteSearchState.error(
            filters: filters,
            message: message,
            availableCountries: countries,
            availableStates: [],
          ),
        );
        // ignore: invalid_use_of_visible_for_testing_member
        emit(newState);
      } catch (e) {
        // Silently fail - areas will remain empty
      }
    });
  }

  Future<void> _onQueryChanged(
    RouteSearchEventQueryChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(query: event.query);
    
    if (event.query.trim().isEmpty) {
      emit(RouteSearchState.initial(
        filters: updatedFilters,
        availableCountries: state.when(
          initial: (_, countries, __) => countries,
          loading: (_, countries, __) => countries,
          success: (_, __, countries, ___) => countries,
          error: (_, __, countries, ___) => countries,
        ),
        availableStates: state.when(
          initial: (_, __, states) => states,
          loading: (_, __, states) => states,
          success: (_, __, ___, states) => states,
          error: (_, __, ___, states) => states,
        ),
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
    
    // Load states for the newly selected country
    final List<String> newStates;
    if (event.locationFilter.country != null) {
      newStates = _climbRepository.getUniqueStates(country: event.locationFilter.country);
    } else {
      newStates = [];
    }

    final newState = state.when(
      initial: (_, countries, __) => RouteSearchState.initial(
        filters: updatedFilters, 
        availableCountries: countries,
        availableStates: newStates,
      ),
      loading: (_, countries, __) => RouteSearchState.loading(
        filters: updatedFilters,
        availableCountries: countries,
        availableStates: newStates,
      ),
      success: (_, routes, countries, __) => RouteSearchState.success(
        filters: updatedFilters,
        routes: routes,
        availableCountries: countries,
        availableStates: newStates,
      ),
      error: (_, message, countries, __) => RouteSearchState.error(
        filters: updatedFilters,
        message: message,
        availableCountries: countries,
        availableStates: newStates,
      ),
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
      initial: (_, countries, states) => RouteSearchState.initial(filters: updatedFilters, availableCountries: countries, availableStates: states),
      loading: (_, countries, states) => RouteSearchState.loading(filters: updatedFilters, availableCountries: countries, availableStates: states),
      success: (_, routes, countries, states) => RouteSearchState.success(filters: updatedFilters, routes: routes, availableCountries: countries, availableStates: states),
      error: (_, message, countries, states) => RouteSearchState.error(filters: updatedFilters, message: message, availableCountries: countries, availableStates: states),
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
      initial: (_, countries, states) => RouteSearchState.initial(filters: updatedFilters, availableCountries: countries, availableStates: states),
      loading: (_, countries, states) => RouteSearchState.loading(filters: updatedFilters, availableCountries: countries, availableStates: states),
      success: (_, routes, countries, states) => RouteSearchState.success(filters: updatedFilters, routes: routes, availableCountries: countries, availableStates: states),
      error: (_, message, countries, states) => RouteSearchState.error(filters: updatedFilters, message: message, availableCountries: countries, availableStates: states),
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
    emit(RouteSearchState.initial(
      availableCountries: state.when(
        initial: (_, countries, __) => countries,
        loading: (_, countries, __) => countries,
        success: (_, __, countries, ___) => countries,
        error: (_, __, countries, ___) => countries,
      ),
      availableStates: state.when(
        initial: (_, __, states) => states,
        loading: (_, __, states) => states,
        success: (_, __, ___, states) => states,
        error: (_, __, ___, states) => states,
      ),
    ));
  }

  /// Performs search using local climb repository
  Future<void> _performSearch(
    RouteSearchFilters filters,
    Emitter<RouteSearchState> emit,
  ) async {
    emit(RouteSearchState.loading(
      filters: filters,
      availableCountries: state.when(
        initial: (_, countries, __) => countries,
        loading: (_, countries, __) => countries,
        success: (_, __, countries, ___) => countries,
        error: (_, __, countries, ___) => countries,
      ),
      availableStates: state.when(
        initial: (_, __, states) => states,
        loading: (_, __, states) => states,
        success: (_, __, ___, states) => states,
        error: (_, __, ___, states) => states,
      ),
    ));

    try {
      // Extract country and state/province from locationFilter
      final country = filters.locationFilter.country;
      final stateProvince = filters.locationFilter.stateProvince;
      
      // Convert RouteType Set to type string list
      final typesList = filters.types.map((t) => t.displayName).toList();
      
      // For now, ignore grade filtering (would need conversion from string grades to numeric)
      final climbResults = await _climbRepository.searchClimbs(
        query: filters.query,
        country: country?.isNotEmpty == true ? country : null,
        stateProvince: stateProvince?.isNotEmpty == true ? stateProvince : null,
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
        availableCountries: state.when(
          initial: (_, countries, __) => countries,
          loading: (_, countries, __) => countries,
          success: (_, __, countries, ___) => countries,
          error: (_, __, countries, ___) => countries,
        ),
        availableStates: state.when(
          initial: (_, __, states) => states,
          loading: (_, __, states) => states,
          success: (_, __, ___, states) => states,
          error: (_, __, ___, states) => states,
        ),
      ));
    } catch (e) {
      emit(RouteSearchState.error(
        filters: filters,
        message: e.toString(),
        availableCountries: state.when(
          initial: (_, countries, __) => countries,
          loading: (_, countries, __) => countries,
          success: (_, __, countries, ___) => countries,
          error: (_, __, countries, ___) => countries,
        ),
        availableStates: state.when(
          initial: (_, __, states) => states,
          loading: (_, __, states) => states,
          success: (_, __, ___, states) => states,
          error: (_, __, ___, states) => states,
        ),
      ));
    }
  }
}
