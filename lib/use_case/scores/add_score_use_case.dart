import 'package:tetris/data/models/score.dart';
import 'package:tetris/data/storage/scores_storage.dart';

class AddScoreUseCase {
  final ScoresStorage _scoresStorage;

  AddScoreUseCase(
    this._scoresStorage,
  );

  Future<void> call(Score score) => _scoresStorage.addScore(score);
}
