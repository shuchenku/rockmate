import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rockmate/features/climbing_data/data/repositories/route_repository.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';

class MockRouteRepository extends Mock implements RouteRepository {}

void main() {
  late RouteSearchBloc bloc;
  late MockRouteRepository mockRepository;

  setUp(() {
    mockRepository = MockRouteRepository();
    bloc = RouteSearchBloc(mockRepository);
  });

  tearDown(() {
    bloc.close();
  });

  group('RouteSearchBloc', () {
    const testQuery = 'Red River Gorge';
    final testRoutes = [
      const RouteEntity(
        id: '1',
        name: 'Test Route',
        grade: '5.10a',
        type: 'Sport',
        rating: 4.5,
        location: 'Kentucky',
      ),
    ];

    test('initial state is RouteSearchStateInitial', () {
      expect(bloc.state, equals(const RouteSearchState.initial()));
    });

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits initial state when query is empty',
      build: () => bloc,
      act: (bloc) => bloc.add(const RouteSearchEventQueryChanged('')),
      wait: const Duration(milliseconds: 600),
      expect: () => [
        const RouteSearchStateInitial(filters: RouteSearchFilters(query: '')),
      ],
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits loading then success with routes from repository',
      build: () {
        when(() => mockRepository.searchRoutes(any()))
            .thenAnswer((_) async => testRoutes);
        return bloc;
      },
      act: (bloc) => bloc.add(const RouteSearchEventQueryChanged(testQuery)),
      wait: const Duration(milliseconds: 600),
      expect: () => [
        RouteSearchState.loading(
          filters: const RouteSearchFilters(query: testQuery),
        ),
        RouteSearchState.success(
          filters: const RouteSearchFilters(query: testQuery),
          routes: testRoutes,
        ),
      ],
      verify: (_) {
        verify(() => mockRepository.searchRoutes(testQuery)).called(1);
      },
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits error on repository failure',
      build: () {
        when(() => mockRepository.searchRoutes(any()))
            .thenThrow(Exception('Network error'));
        return bloc;
      },
      act: (bloc) => bloc.add(const RouteSearchEventQueryChanged(testQuery)),
      wait: const Duration(milliseconds: 600),
      expect: () => [
        RouteSearchState.loading(
          filters: const RouteSearchFilters(query: testQuery),
        ),
        isA<RouteSearchStateError>()
            .having((s) => s.filters.query, 'query', testQuery)
            .having((s) => s.message, 'message', contains('Network error')),
      ],
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'clears filters and returns to initial state',
      build: () => bloc,
      seed: () => RouteSearchState.success(
        filters: const RouteSearchFilters(query: testQuery),
        routes: testRoutes,
      ),
      act: (bloc) => bloc.add(const RouteSearchEventFiltersCleared()),
      expect: () => [const RouteSearchState.initial()],
    );
  });
}
