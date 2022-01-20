import 'package:tetris/data/models/game_data.dart';
import 'package:tetris/data/storage/game_data_storage.dart';

class PutGameDataUseCase {
  final GameDataStorage _gameDataStorage;

  PutGameDataUseCase(
    this._gameDataStorage,
  );

  Future<void> call(GameData gameData) =>
      _gameDataStorage.putGameData(gameData);
}
