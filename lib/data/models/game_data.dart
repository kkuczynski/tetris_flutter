class GameData {
  int score = 0;
  List<List<int>> dynamicGameArray = [];
  List<List<int>> staticGameArray = [];
  List<List<int>>? currentTetro = [];
  int activeTetro = 0;
  bool gameFinished = false;
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
