import 'package:hive/hive.dart';
import 'package:tetris/data/models/game_data.dart';

const _gameData = "gameData";

class GameDataStorage {
  final HiveInterface _hiveInterface;

  late Box _hiveBox;

  GameDataStorage(
    this._hiveInterface,
  );

  Future<void> putGameData(GameData gameData) async {
    final box = await _openBox();
    await box.putAt(0, gameData);
  }

  Future<GameData?> getGameData() async {
    final box = await _openBox();
    if (box.isEmpty) {
      box.add(GameData(
        score: 0,
        dynamicGameArray: [],
        staticGameArray: [],
        currentTetro: [],
        activeTetro: 0,
        gameFinished: true,
        tetroBeginXY: [0, 0],
      ));
    }
    try {
      GameData? gameData = box.getAt(0);
      return gameData;
    } catch (e) {
      return null;
    }
  }

  Future<Box> _openBox() async {
    _hiveBox = await _hiveInterface.openBox(_gameData);
    return _hiveBox;
  }
}
