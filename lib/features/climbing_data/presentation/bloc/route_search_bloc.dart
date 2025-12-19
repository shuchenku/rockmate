import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:rockmate/features/climbing_data/data/datasources/route_local_data_source.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';
import 'package:openbeta_client/openbeta_client.dart';

@injectable
class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  final RouteLocalDataSource _localDataSource;
  final OpenBetaClient _networkClient;

  RouteSearchBloc(
    this._localDataSource,
    this._networkClient,
  ) : super(const RouteSearchState.initial()) {
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

  /// Performs cache-first search: check local, fallback to network
  Future<void> _performSearch(
    RouteSearchFilters filters,
    Emitter<RouteSearchState> emit,
  ) async {
    emit(RouteSearchState.loading(
      filters: filters,
      availableAreas: state.availableAreas,
    ));

    try {
      // Cache-first strategy: try local cache first
      final searchKey = _buildSearchKey(filters);
      final cachedRoutes = await _localDataSource.getCachedRoutes(searchKey);

      if (cachedRoutes != null && cachedRoutes.isNotEmpty) {
        emit(RouteSearchState.success(
          filters: filters,
          routes: cachedRoutes,
          availableAreas: state.availableAreas,
        ));
        return;
      }

      // Cache miss or empty: fetch from network
      final networkResults = await _networkClient.searchRoutes(filters.query);
      
      // Convert OpenBetaRouteModel to RouteEntity
      final routes = networkResults.map((model) => RouteEntity(
        id: model.id,
        name: model.name,
        grade: model.grade,
        type: model.type,
        rating: model.rating,
        location: model.location,
      )).toList();

      // Cache the results
      await _localDataSource.cacheRoutes(searchKey, routes);

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

  /// Builds cache key from filters
  String _buildSearchKey(RouteSearchFilters filters) {
    final parts = <String>[
      filters.query,
      filters.locationFilter.mostSpecific ?? '',
      filters.gradeMin ?? '',
      filters.gradeMax ?? '',
      filters.types.map((t) => t.name).join(','),
    ];
    return parts.where((p) => p.isNotEmpty).join('_');
  }
}
