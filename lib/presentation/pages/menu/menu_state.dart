part of 'menu_cubit.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState.idle() = MenuStateIdle;

  const factory MenuState.loaded() = MenuStateLoaded;

  const factory MenuState.newGame() = MenuStateNewGame;

  const factory MenuState.continuteGame() = MenuStateContinueGame;

  const factory MenuState.highScores() = MenuStateHighScores;

  const factory MenuState.quit() = MenuStateQuit;

  const factory MenuState.dump() = MenuStateDump;
}
