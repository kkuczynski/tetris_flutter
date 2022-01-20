import 'package:tetris/data/models/score.dart';
import 'package:tetris/data/storage/scores_storage.dart';

class GetAllScoresUseCase {
  final ScoresStorage _scoresStorage;

  GetAllScoresUseCase(
    this._scoresStorage,
  );

  Future<Iterable<Score>> call() => _scoresStorage.getAllScores();
}
