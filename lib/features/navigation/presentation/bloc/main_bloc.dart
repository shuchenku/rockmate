import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/features/navigation/domain/events/main_event.dart';
import 'package:rockmate/features/navigation/domain/state/main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  final ClimbRepository _repository;

  MainBloc(this._repository) : super(const MainState.initial()) {
    on<CheckForData>(_onCheckForData);
    on<DataDownloaded>(_onDataDownloaded);
  }

  Future<void> _onCheckForData(
    CheckForData event,
    Emitter<MainState> emit,
  ) async {
    emit(const MainState.checking());
    try {
      final hasData = _repository.hasData;
      emit(MainState.loaded(hasData: hasData));
    } catch (e) {
      emit(MainState.error('Failed to check validation data: $e'));
    }
  }

  void _onDataDownloaded(
    DataDownloaded event,
    Emitter<MainState> emit,
  ) {
    emit(const MainState.loaded(hasData: true));
  }
}
