part of 'high_scores_cubit.dart';

@freezed
abstract class HighScoresState with _$HighScoresState {
  const factory HighScoresState.idle() = HighScoresStateIdle;

  const factory HighScoresState.loaded(List<Score> scoreList) =
      HighScoresStateLoaded;
}
