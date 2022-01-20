part of 'menu_cubit.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState.idle() = MenuStateIdle;

  const factory MenuState.loaded(GameData? gameData) = MenuStateLoaded;

  const factory MenuState.newGame() = MenuStateNewGame;

  const factory MenuState.continueGame() = MenuStateContinueGame;

  const factory MenuState.highScores() = MenuStateHighScores;

  const factory MenuState.tips() = MenuStateTips;

  const factory MenuState.dump() = MenuStateDump;
}
