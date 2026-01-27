import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = MainInitial;
  const factory MainState.checking() = MainChecking;
  const factory MainState.loaded({required bool hasData}) = MainLoaded;
  const factory MainState.error(String message) = MainError;
}
