import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rockmate/features/climbing_data/data/datasources/route_local_data_source.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:openbeta_client/openbeta_client.dart';

class MockRouteLocalDataSource extends Mock implements RouteLocalDataSource {}
class MockOpenBetaClient extends Mock implements OpenBetaClient {}

void main() {
  late RouteSearchBloc bloc;
  late MockRouteLocalDataSource mockLocalDataSource;
  late MockOpenBetaClient mockNetworkClient;

  setUp(() {
    mockLocalDataSource = MockRouteLocalDataSource();
    mockNetworkClient = MockOpenBetaClient();
    bloc = RouteSearchBloc(mockLocalDataSource, mockNetworkClient);
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
    final testNetworkResults = [
      OpenBetaRouteModel(
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
      'emits loading then success with cached routes',
      build: () {
        when(() => mockLocalDataSource.getCachedRoutes(any()))
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
        verify(() => mockLocalDataSource.getCachedRoutes(testQuery)).called(1);
        verifyNever(() => mockNetworkClient.searchRoutes(any()));
      },
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits loading then success with network routes on cache miss',
      build: () {
        when(() => mockLocalDataSource.getCachedRoutes(any()))
            .thenAnswer((_) async => null);
        when(() => mockNetworkClient.searchRoutes(any()))
            .thenAnswer((_) async => testNetworkResults);
        when(() => mockLocalDataSource.cacheRoutes(any(), any()))
            .thenAnswer((_) async => {});
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
        verify(() => mockLocalDataSource.getCachedRoutes(testQuery)).called(1);
        verify(() => mockNetworkClient.searchRoutes(testQuery)).called(1);
        verify(() => mockLocalDataSource.cacheRoutes(testQuery, testRoutes)).called(1);
      },
    );

    blocTest<RouteSearchBloc, RouteSearchState>(
      'emits error on network failure',
      build: () {
        when(() => mockLocalDataSource.getCachedRoutes(any()))
            .thenAnswer((_) async => null);
        when(() => mockNetworkClient.searchRoutes(any()))
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
