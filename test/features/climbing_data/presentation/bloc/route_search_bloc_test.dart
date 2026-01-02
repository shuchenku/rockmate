import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';

class MockClimbRepository extends Mock implements ClimbRepository {}

void main() {
  late RouteSearchBloc bloc;
  late MockClimbRepository mockRepository;

  setUp(() {
    mockRepository = MockClimbRepository();
    
    // Set up default stubs for methods called during initialization
    when(() => mockRepository.getUniqueCountries()).thenReturn([]);
    when(() => mockRepository.getUniqueStates()).thenReturn([]);
    
    bloc = RouteSearchBloc(mockRepository);
  });

  tearDown(() {
    bloc.close();
  });

  group('RouteSearchBloc', () {
    const testQuery = 'Red River Gorge';
    final testClimbs = [
      ClimbEntity(
        uuid: '1',
        name: 'Test Route',
        gradeYds: '5.10a',
        gradeNumeric: 50,
        typeSport: true,
        areaUuid: 'area-1',
        pathTokens: ['USA', 'Kentucky', 'Red River Gorge'],
      ),
    ];
    
    final testRoutes = [
      const RouteEntity(
        id: '1',
        name: 'Test Route',
        grade: '5.10a',
        type: 'Sport',
        rating: 0.0,  // ClimbEntity doesn't have ratings
        location: 'Kentucky > Red River Gorge',  // locationString skips country
      ),
    ];

    test('initial state is RouteSearchStateInitial', () {
      expect(bloc.state, isA<RouteSearchStateInitial>());
    });

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits initial state when query is empty',
      build: () => bloc,
      act: (bloc) => bloc.add(const RouteSearchEventQueryChanged('')),
      expect: () => [],  // Empty query doesn't trigger search, no state change
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits loading then success with routes from repository',
      build: () {
        when(() => mockRepository.searchClimbs(
          query: any(named: 'query'),
          country: any(named: 'country'),
          stateProvince: any(named: 'stateProvince'),
          types: any(named: 'types'),
        )).thenAnswer((_) async => testClimbs);
        return bloc;
      },
      act: (bloc) => bloc.add(const RouteSearchEventQueryChanged(testQuery)),
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
        verify(() => mockRepository.searchClimbs(
          query: testQuery,
          country: null,
          stateProvince: null,
          types: null,
        )).called(1);
      },
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits error on repository failure',
      build: () {
        when(() => mockRepository.searchClimbs(
          query: any(named: 'query'),
          country: any(named: 'country'),
          stateProvince: any(named: 'stateProvince'),
          types: any(named: 'types'),
        )).thenThrow(Exception('Database error'));
        return bloc;
      },
      act: (bloc) => bloc.add(const RouteSearchEventQueryChanged(testQuery)),
      expect: () => [
        RouteSearchState.loading(
          filters: const RouteSearchFilters(query: testQuery),
        ),
        isA<RouteSearchStateError>()
            .having((s) => s.filters.query, 'query', testQuery)
            .having((s) => s.message, 'message', contains('Database error')),
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
