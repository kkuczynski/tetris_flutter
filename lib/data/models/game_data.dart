import 'package:hive/hive.dart';

part 'game_data.g.dart';

@HiveType(typeId: 1)
class GameData extends HiveObject {
  @HiveField(0)
  int score = 0;
  @HiveField(1)
  List<List<int>> dynamicGameArray = [];
  @HiveField(2)
  List<List<int>> staticGameArray = [];
  @HiveField(3)
  List<List<int>>? currentTetro = [];
  @HiveField(4)
  int activeTetro = 0;
  @HiveField(5)
  bool gameFinished = false;
  @HiveField(6)
  List<int> tetroBeginXY = [0, 0];

  GameData({
    required this.score,
    required this.dynamicGameArray,
    required this.staticGameArray,
    required this.currentTetro,
    required this.activeTetro,
    required this.gameFinished,
    required this.tetroBeginXY,
  });
}
