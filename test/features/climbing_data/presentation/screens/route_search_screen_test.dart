import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rockmate/features/climbing_data/presentation/screens/route_search_screen.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_search_filters.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:get_it/get_it.dart';

class MockRouteSearchBloc extends Mock implements RouteSearchBloc {}

void main() {
  late MockRouteSearchBloc mockBloc;

  setUp(() {
    mockBloc = MockRouteSearchBloc();
    final getIt = GetIt.instance;
    if (getIt.isRegistered<RouteSearchBloc>()) {
      getIt.unregister<RouteSearchBloc>();
    }
    getIt.registerFactory<RouteSearchBloc>(() => mockBloc);
  });

  tearDown(() {
    GetIt.instance.reset();
  });

  group('RouteSearchScreen', () {
    testWidgets('displays search bar and filters', (tester) async {
      when(() => mockBloc.state).thenReturn(const RouteSearchState.initial());
      when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(
        MaterialApp(
          home: const RouteSearchScreen(),
        ),
      );

      expect(find.text('Search Routes'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('displays empty state initially', (tester) async {
      when(() => mockBloc.state).thenReturn(const RouteSearchState.initial());
      when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(
        MaterialApp(
          home: const RouteSearchScreen(),
        ),
      );

      expect(find.text('Search for climbing routes'), findsOneWidget);
      expect(find.byIcon(Icons.search), findsWidgets);
    });

    testWidgets('displays loading indicator during search', (tester) async {
      when(() => mockBloc.state).thenReturn(
        const RouteSearchState.loading(
          filters: RouteSearchFilters(query: 'test'),
        ),
      );
      when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(
        MaterialApp(
          home: const RouteSearchScreen(),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays route cards when results found', (tester) async {
      final testRoutes = [
        const RouteEntity(
          id: '1',
          name: 'Test Route',
          grade: '5.10a',
          type: 'Sport',
          rating: 4.5,
          location: 'Test Crag',
        ),
      ];

      when(() => mockBloc.state).thenReturn(
        RouteSearchState.success(
          filters: const RouteSearchFilters(query: 'test'),
          routes: testRoutes,
        ),
      );
      when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(
        MaterialApp(
          home: const RouteSearchScreen(),
        ),
      );

      expect(find.text('Test Route'), findsOneWidget);
      expect(find.text('5.10a'), findsOneWidget);
    });

    testWidgets('displays error state on failure', (tester) async {
      when(() => mockBloc.state).thenReturn(
        const RouteSearchState.error(
          filters: RouteSearchFilters(query: 'test'),
          message: 'Network error',
        ),
      );
      when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(
        MaterialApp(
          home: const RouteSearchScreen(),
        ),
      );

      expect(find.text('Error'), findsOneWidget);
      expect(find.text('Network error'), findsOneWidget);
    });
  });
}
