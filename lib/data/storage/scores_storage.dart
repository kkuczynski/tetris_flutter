import 'package:hive/hive.dart';
import 'package:tetris/data/models/score.dart';

const _scores = "scores";

class ScoresStorage {
  final HiveInterface _hiveInterface;

  late Box _hiveBox;

  ScoresStorage(
    this._hiveInterface,
  );

  Future<void> addScore(Score score) async {
    final box = await _openBox();
    await box.add(score);
  }

  Future<Iterable<Score>> getAllScores() async {
    Iterable<Score> scoresList = [];
    final box = await _openBox();
    scoresList = box.values.cast<Score>();
    return scoresList;
  }

  Future<Box> _openBox() async {
    _hiveBox = await _hiveInterface.openBox(_scores);
    return _hiveBox;
  }
}
