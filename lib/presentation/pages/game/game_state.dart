part of 'game_cubit.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState.idle() = GameStateIdle;

  const factory GameState.loaded() = GameStateLoaded;
}
