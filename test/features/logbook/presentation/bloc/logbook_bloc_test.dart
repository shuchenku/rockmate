import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rockmate/core/domain/entities/tick_entity.dart';
import 'package:rockmate/core/domain/entities/tick_status.dart';
import 'package:rockmate/features/logbook/data/repositories/logbook_repository.dart';
import 'package:rockmate/features/logbook/presentation/bloc/logbook_bloc.dart';
import 'package:rockmate/features/logbook/domain/events/logbook_event.dart';
import 'package:rockmate/features/logbook/domain/state/logbook_state.dart';

class MockLogbookRepository extends Mock implements LogbookRepository {}

class FakeTickEntity extends Fake implements TickEntity {}

void main() {
  late LogbookBloc bloc;
  late MockLogbookRepository mockRepository;
  
  setUpAll(() {
    // Register fallback value for TickEntity so mocktail can use any()
    registerFallbackValue(FakeTickEntity());
  });
  
  final projectTick = TickEntity(
    id: '1',
    routeId: 'route-1',
    routeName: 'Test Project',
    date: DateTime(2024, 1, 1),
    status: TickStatus.todo,
    comment: 'Want to climb this',
    location: 'Test Location',
    routeGrade: '5.12a',
  );
  
  final sendTick = TickEntity(
    id: '2',
    routeId: 'route-2',
    routeName: 'Test Send',
    date: DateTime(2024, 1, 2),
    status: TickStatus.redPoint,
    comment: 'Sent it!',
    location: 'Test Location',
    routeGrade: '5.11c',
  );
  
  setUp(() {
    mockRepository = MockLogbookRepository();
    bloc = LogbookBloc(mockRepository);
  });
  
  tearDown(() {
    bloc.close();
  });
  
  group('LogbookBloc', () {
    test('initial state is LogbookStateInitial', () {
      expect(bloc.state, equals(const LogbookState.initial()));
    });
    
    group('LoadLogbook', () {
      blocTest<LogbookBloc, LogbookState>(
        'emits loading then success with projects and sends',
        build: () {
          when(() => mockRepository.getProjects()).thenReturn([projectTick]);
          when(() => mockRepository.getSends()).thenReturn([sendTick]);
          return bloc;
        },
        act: (bloc) => bloc.add(const LogbookEvent.loadLogbook()),
        expect: () => [
          const LogbookState.loading(),
          LogbookState.success(
            projects: [projectTick],
            sends: [sendTick],
          ),
        ],
        verify: (_) {
          verify(() => mockRepository.getProjects()).called(1);
          verify(() => mockRepository.getSends()).called(1);
        },
      );
      
      blocTest<LogbookBloc, LogbookState>(
        'emits loading then success with empty lists',
        build: () {
          when(() => mockRepository.getProjects()).thenReturn([]);
          when(() => mockRepository.getSends()).thenReturn([]);
          return bloc;
        },
        act: (bloc) => bloc.add(const LogbookEvent.loadLogbook()),
        expect: () => [
          const LogbookState.loading(),
          const LogbookState.success(projects: [], sends: []),
        ],
      );
      
      blocTest<LogbookBloc, LogbookState>(
        'emits loading then failure on error',
        build: () {
          when(() => mockRepository.getProjects()).thenThrow(Exception('Test error'));
          return bloc;
        },
        act: (bloc) => bloc.add(const LogbookEvent.loadLogbook()),
        expect: () => [
          const LogbookState.loading(),
          isA<LogbookStateFailure>()
              .having((s) => s.errorMessage, 'errorMessage', contains('Test error')),
        ],
      );
    });
    
    group('AddTick', () {
      blocTest<LogbookBloc, LogbookState>(
        'adds tick and emits success with updated lists',
        build: () {
          when(() => mockRepository.addTick(any())).thenAnswer((_) async {});
          when(() => mockRepository.getProjects()).thenReturn([projectTick]);
          when(() => mockRepository.getSends()).thenReturn([]);
          return bloc;
        },
        act: (bloc) => bloc.add(LogbookEvent.addTick(tick: projectTick)),
        expect: () => [
          LogbookState.success(projects: [projectTick], sends: []),
        ],
        verify: (_) {
          verify(() => mockRepository.addTick(projectTick)).called(1);
          verify(() => mockRepository.getProjects()).called(1);
          verify(() => mockRepository.getSends()).called(1);
        },
      );
      
      blocTest<LogbookBloc, LogbookState>(
        'emits failure when add fails',
        build: () {
          when(() => mockRepository.addTick(any())).thenThrow(Exception('Add failed'));
          return bloc;
        },
        act: (bloc) => bloc.add(LogbookEvent.addTick(tick: projectTick)),
        expect: () => [
          isA<LogbookStateFailure>()
              .having((s) => s.errorMessage, 'errorMessage', contains('Add failed')),
        ],
      );
    });
    
    group('UpdateTick', () {
      blocTest<LogbookBloc, LogbookState>(
        'updates tick and emits success with updated lists',
        build: () {
          when(() => mockRepository.updateTick(any())).thenAnswer((_) async {});
          when(() => mockRepository.getProjects()).thenReturn([]);
          when(() => mockRepository.getSends()).thenReturn([sendTick]);
          return bloc;
        },
        act: (bloc) => bloc.add(LogbookEvent.updateTick(tick: sendTick)),
        expect: () => [
          LogbookState.success(projects: [], sends: [sendTick]),
        ],
        verify: (_) {
          verify(() => mockRepository.updateTick(sendTick)).called(1);
        },
      );
      
      blocTest<LogbookBloc, LogbookState>(
        'emits failure when update fails',
        build: () {
          when(() => mockRepository.updateTick(any())).thenThrow(Exception('Update failed'));
          return bloc;
        },
        act: (bloc) => bloc.add(LogbookEvent.updateTick(tick: sendTick)),
        expect: () => [
          isA<LogbookStateFailure>()
              .having((s) => s.errorMessage, 'errorMessage', contains('Update failed')),
        ],
      );
    });
    
    group('DeleteTick', () {
      blocTest<LogbookBloc, LogbookState>(
        'deletes tick and emits success with updated lists',
        build: () {
          when(() => mockRepository.deleteTick(any())).thenAnswer((_) async {});
          when(() => mockRepository.getProjects()).thenReturn([]);
          when(() => mockRepository.getSends()).thenReturn([]);
          return bloc;
        },
        act: (bloc) => bloc.add(const LogbookEvent.deleteTick(tickId: '1')),
        expect: () => [
          const LogbookState.success(projects: [], sends: []),
        ],
        verify: (_) {
          verify(() => mockRepository.deleteTick('1')).called(1);
        },
      );
      
      blocTest<LogbookBloc, LogbookState>(
        'emits failure when delete fails',
        build: () {
          when(() => mockRepository.deleteTick(any())).thenThrow(Exception('Delete failed'));
          return bloc;
        },
        act: (bloc) => bloc.add(const LogbookEvent.deleteTick(tickId: '1')),
        expect: () => [
          isA<LogbookStateFailure>()
              .having((s) => s.errorMessage, 'errorMessage', contains('Delete failed')),
        ],
      );
    });
  });
}
