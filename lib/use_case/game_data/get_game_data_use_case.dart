import 'package:tetris/data/models/game_data.dart';
import 'package:tetris/data/storage/game_data_storage.dart';

class GetGameDataUseCase {
  final GameDataStorage _gameDataStorage;

  GetGameDataUseCase(
    this._gameDataStorage,
  );

  Future<GameData?> call() => _gameDataStorage.getGameData();
}
