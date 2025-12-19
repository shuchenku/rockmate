import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:rockmate/features/climbing_data/data/repositories/route_repository.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';

@injectable
class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  final RouteRepository _repository;

  RouteSearchBloc(this._repository) : super(const RouteSearchState.initial()) {
    on<RouteSearchEventQueryChanged>(
      _onQueryChanged,
      transformer: _debounce(const Duration(milliseconds: 500)),
    );
    on<RouteSearchEventLocationFilterChanged>(_onLocationFilterChanged);
    on<RouteSearchEventGradeRangeChanged>(_onGradeRangeChanged);
    on<RouteSearchEventRouteTypesChanged>(_onRouteTypesChanged);
    on<RouteSearchEventSearchSubmitted>(_onSearchSubmitted);
    on<RouteSearchEventFiltersCleared>(_onFiltersCleared);
  }

  // Debounce transformer for search input
  EventTransformer<E> _debounce<E>(Duration duration) {
    return (events, mapper) => events
        .debounce(duration)
        .asyncExpand(mapper);
  }

  Future<void> _onQueryChanged(
    RouteSearchEventQueryChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(query: event.query);
    
    if (event.query.trim().isEmpty) {
      emit(RouteSearchState.initial(filters: updatedFilters));
      return;
    }

    await _performSearch(updatedFilters, emit);
  }

  Future<void> _onLocationFilterChanged(
    RouteSearchEventLocationFilterChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(
      locationFilter: event.locationFilter,
    );
    
    // TODO: Fetch available areas based on new location filter
    // For now, emit state with updated filters
    emit(state.map(
      initial: (s) => s.copyWith(filters: updatedFilters),
      loading: (s) => s.copyWith(filters: updatedFilters),
      success: (s) => s.copyWith(filters: updatedFilters),
      error: (s) => s.copyWith(filters: updatedFilters),
    ));

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

    emit(state.map(
      initial: (s) => s.copyWith(filters: updatedFilters),
      loading: (s) => s.copyWith(filters: updatedFilters),
      success: (s) => s.copyWith(filters: updatedFilters),
      error: (s) => s.copyWith(filters: updatedFilters),
    ));

    if (!updatedFilters.isEmpty) {
      await _performSearch(updatedFilters, emit);
    }
  }

  Future<void> _onRouteTypesChanged(
    RouteSearchEventRouteTypesChanged event,
    Emitter<RouteSearchState> emit,
  ) async {
    final updatedFilters = state.filters.copyWith(types: event.types);

    emit(state.map(
      initial: (s) => s.copyWith(filters: updatedFilters),
      loading: (s) => s.copyWith(filters: updatedFilters),
      success: (s) => s.copyWith(filters: updatedFilters),
      error: (s) => s.copyWith(filters: updatedFilters),
    ));

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
    emit(const RouteSearchState.initial());
  }

  /// Performs search using repository
  Future<void> _performSearch(
    RouteSearchFilters filters,
    Emitter<RouteSearchState> emit,
  ) async {
    emit(RouteSearchState.loading(
      filters: filters,
      availableAreas: state.availableAreas,
    ));

    try {
      final routes = await _repository.searchRoutes(filters.query);
      
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
