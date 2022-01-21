part of 'game_cubit.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState.idle() = GameStateIdle;

  const factory GameState.loaded() = GameStateLoaded;

  const factory GameState.gameFinished(int score) = GameStateGameFinished;

  const factory GameState.scoreSaved() = GameStateScoreSaved;
}
