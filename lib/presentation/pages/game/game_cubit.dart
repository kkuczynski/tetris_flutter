import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetris/data/models/game_data.dart';
import 'package:tetris/data/models/score.dart';
import 'package:tetris/use_case/game_data/get_game_data_use_case.dart';
import 'package:tetris/use_case/game_data/put_game_data_use_case.dart';
import 'package:tetris/use_case/scores/add_score_use_case.dart';

part 'game_cubit.freezed.dart';
part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit(
    this.putGameDataUseCase,
    this.getGameDataUseCase,
    this.addScoreUseCase,
  ) : super(GameState.idle());

  Future<void> init({required bool isNewGame}) async {
    if (isNewGame) {
      _initGameData(null);
    } else {
      _gameData = await getGameDataUseCase.call();
    }
    emit(GameState.loaded());
  }

  GetGameDataUseCase getGameDataUseCase;
  PutGameDataUseCase putGameDataUseCase;
  AddScoreUseCase addScoreUseCase;
  GameData? _gameData;

  Future<void> saveScore(String name, int score) async {
    addScoreUseCase.call(
      Score(nickName: name, score: score, date: DateTime.now()),
    );
    emit(const GameState.scoreSaved());
  }

  Future<void> doNotSaveScore() async {
    emit(const GameState.scoreSaved());
  }

  void _initGameData(GameData? savedGameData) {
    if (savedGameData == null) {
      _gameData = GameData(
        score: 0,
        dynamicGameArray: [],
        staticGameArray: [],
        currentTetro: [],
        activeTetro: 0,
        gameFinished: false,
        tetroBeginXY: [0, 0],
      );
      _initGameArray();
    }
  }

  void _initGameArray() {
    for (int i = 0; i < 20; i++) {
      _gameData!.staticGameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
      _gameData!.dynamicGameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    }
  }

  bool proceedGame() {
    if (_gameData!.activeTetro == 0) {
      _gameData!.currentTetro = _generateTetro();
      if (_canSpawn()) {
        _spawnTetro();
        _gameData!.gameFinished = false;
        putGameDataUseCase.call(_gameData!);
        return true;
      } else if (!_gameData!.gameFinished) {
        _spawnTetro();
        _gameData!.gameFinished = true;
        putGameDataUseCase.call(_gameData!);
        emit(GameState.gameFinished(_gameData!.score));
        return false;
      } else {
        return false;
      }
    } else {
      _gravity();
      putGameDataUseCase.call(_gameData!);
      return true;
    }
  }

  bool _gravity() {
    if (_canMoveDown()) {
      _gameData!.tetroBeginXY.last += 1;
      for (int y = 19; y >= 0; y--) {
        for (int x = 0; x < 10; x++) {
          if (_gameData!.dynamicGameArray[y][x] > 0) {
            _gameData!.dynamicGameArray[y + 1][x] =
                _gameData!.dynamicGameArray[y][x];
            _gameData!.dynamicGameArray[y][x] = 0;
          }
        }
      }
    } else {
      for (int y = 0; y < 20; y++) {
        for (int x = 0; x < 10; x++) {
          if (_gameData!.dynamicGameArray[y][x] > 0) {
            _gameData!.staticGameArray[y][x] =
                _gameData!.dynamicGameArray[y][x];
            _gameData!.dynamicGameArray[y][x] = 0;
          }
        }
      }
      _checkAllRows();
      _gameData!.currentTetro = [];
      _gameData!.activeTetro = 0;
      return false;
    }
    return true;
  }

  void rotate() {
    List<List<int>> tmpDynamicGameArray = [];
    for (int y = 0; y < 20; y++) {
      tmpDynamicGameArray.add(List.from(_gameData!.dynamicGameArray[y]));
    }
    List.from(_gameData!.dynamicGameArray);
    List<int> tmpBeginXY = List.from(_gameData!.tetroBeginXY);
    try {
      int size = 3;
      if (_gameData!.activeTetro > 0 && _gameData!.activeTetro != 5) {
        if (_gameData!.activeTetro == 1) {
          size = 4;
        }

        _moveTo0x0();

        for (int i = 0; i < size; i++) {
          reverse(_gameData!.dynamicGameArray[i], 0, size);
        }

        for (int i = 0; i < size; i++) {
          for (int j = i; j < size; j++) {
            int tmpSwap = _gameData!.dynamicGameArray[i][j];
            _gameData!.dynamicGameArray[i][j] =
                _gameData!.dynamicGameArray[j][i];
            _gameData!.dynamicGameArray[j][i] = tmpSwap;
          }
        }

        if (!_moveBackFrom0x0()) {
          _gameData!.dynamicGameArray = tmpDynamicGameArray;
          _gameData!.tetroBeginXY = tmpBeginXY;
        }
        if (_tetroBroke(tmpDynamicGameArray)) {
          _gameData!.dynamicGameArray = tmpDynamicGameArray;
          _gameData!.tetroBeginXY = tmpBeginXY;
        }
      }
    } catch (e) {
      _gameData!.dynamicGameArray = tmpDynamicGameArray;
      _gameData!.tetroBeginXY = tmpBeginXY;
    }
    putGameDataUseCase.call(_gameData!);
  }

  void _moveTo0x0() {
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        if (_gameData!.dynamicGameArray[y][x] > 0) {
          _gameData!.dynamicGameArray[y - _gameData!.tetroBeginXY.last]
                  [x - _gameData!.tetroBeginXY.first] =
              _gameData!.dynamicGameArray[y][x];
          _gameData!.dynamicGameArray[y][x] = 0;
        }
      }
    }
  }

  bool _moveBackFrom0x0() {
    for (int y = 3; y >= 0; y--) {
      if (_gameData!.dynamicGameArray[y][0] > 0 &&
          _gameData!.tetroBeginXY.first < 0) {
        _gameData!.tetroBeginXY.first = 0;
      } else if (_gameData!.dynamicGameArray[y][1] > 0 &&
          _gameData!.tetroBeginXY.first < -1) {
        _gameData!.tetroBeginXY.first = 0;
      } else if (_gameData!.dynamicGameArray[y][3] > 0 &&
          _gameData!.tetroBeginXY.first > 6) {
        _gameData!.tetroBeginXY.first = 6;
      } else if (_gameData!.dynamicGameArray[y][2] > 0 &&
          _gameData!.tetroBeginXY.first > 7) {
        _gameData!.tetroBeginXY.first = 7;
      }
    }
    for (int y = 3; y >= 0; y--) {
      for (int x = 3; x >= 0; x--) {
        if (_gameData!.dynamicGameArray[y][x] > 0) {
          _gameData!.dynamicGameArray[y + _gameData!.tetroBeginXY.last]
                  [x + _gameData!.tetroBeginXY.first] =
              _gameData!.dynamicGameArray[y][x];

          if (_gameData!.dynamicGameArray[y + _gameData!.tetroBeginXY.last]
                      [x + _gameData!.tetroBeginXY.first] >
                  0 &&
              _gameData!.staticGameArray[y + _gameData!.tetroBeginXY.last]
                      [x + _gameData!.tetroBeginXY.first] >
                  0) {
            return false;
          }
          _gameData!.dynamicGameArray[y][x] = 0;
        }
      }
    }
    return true;
  }

  bool _tetroBroke(List<List<int>> tmpDynamicGameArray) {
    List<int> oldArrayX = [];
    List<int> newArrayX = [];
    List<int> oldArrayY = [];
    List<int> newArrayY = [];
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        if (tmpDynamicGameArray[y][x] > 0) {
          oldArrayX.add(x);
          oldArrayY.add(y);
        }
        if (_gameData!.dynamicGameArray[y][x] > 0) {
          newArrayX.add(x);
          newArrayY.add(y);
        }
      }
    }
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        if ((oldArrayY[i] - newArrayY[j]).abs() > 4 ||
            (newArrayY[i] - newArrayY[j]).abs() > 4 ||
            (oldArrayX[i] - newArrayX[j]).abs() > 4 ||
            (newArrayX[i] - newArrayX[j]).abs() > 4) {
          return true;
        }
      }
    }
    return false;
  }

  void moveRight() async {
    if (_canMoveHorizontally(1) &&
        !_gameData!.gameFinished &&
        _gameData!.activeTetro > 0) {
      _gameData!.tetroBeginXY.first += 1;
      for (int y = 0; y < 20; y++) {
        for (int x = 8; x >= 0; x--) {
          if (_gameData!.dynamicGameArray[y][x] > 0) {
            _gameData!.dynamicGameArray[y][x + 1] =
                _gameData!.dynamicGameArray[y][x];
            _gameData!.dynamicGameArray[y][x] = 0;
          }
        }
      }
    }
    putGameDataUseCase.call(_gameData!);
  }

  void moveLeft() async {
    if (_canMoveHorizontally(-1) &&
        !_gameData!.gameFinished &&
        _gameData!.activeTetro > 0) {
      _gameData!.tetroBeginXY.first -= 1;
      for (int y = 0; y < 20; y++) {
        for (int x = 1; x < 10; x++) {
          if (_gameData!.dynamicGameArray[y][x] > 0) {
            _gameData!.dynamicGameArray[y][x - 1] =
                _gameData!.dynamicGameArray[y][x];
            _gameData!.dynamicGameArray[y][x] = 0;
          }
        }
      }
    }
    putGameDataUseCase.call(_gameData!);
  }

  bool _canMoveDown() {
    for (int element in _gameData!.dynamicGameArray.last) {
      if (element > 0) {
        return false;
      }
    }
    for (int y = 0; y < 19; y++) {
      for (int x = 0; x < 10; x++) {
        if (_gameData!.dynamicGameArray[y][x] > 0) {
          if (_gameData!.staticGameArray[y + 1][x] > 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  bool _canMoveHorizontally(int offset) {
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        if (_gameData!.dynamicGameArray[y][x] > 0) {
          if (x + offset >= 10 || x + offset < 0) {
            return false;
          } else if (_gameData!.staticGameArray[y][x + offset] > 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  bool _canSpawn() {
    for (int y = 0; y < 4; y++) {
      for (int x = 0; x < 4; x++) {
        if (_gameData!.currentTetro![y][x] > 0) {
          if (_gameData!.staticGameArray[y][x + 3] > 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  void _spawnTetro() {
    _gameData!.tetroBeginXY = [3, 0];
    for (int y = 0; y < 4; y++) {
      for (int x = 0; x < 4; x++) {
        _gameData!.dynamicGameArray[y][x + 3] = _gameData!.currentTetro![y][x];
      }
    }
  }

  int getScore() {
    return _gameData!.score;
  }

  List<int> getCubeColors() {
    List<int> colors = [];
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        colors.add(_gameData!.staticGameArray[y][x] > 0
            ? _gameData!.staticGameArray[y][x]
            : _gameData!.dynamicGameArray[y][x]);
      }
    }
    return colors;
  }

  void _checkAllRows() {
    int destroyedRowsCount = 0;
    for (int i = 0; i < 20; i++) {
      if (!_gameData!.staticGameArray[i].contains(0)) {
        destroyedRowsCount++;
        for (int j = 0; j < 10; j++) {
          _gameData!.staticGameArray[i][j] = 0;
        }
        _fallRows(i);
      }
    }
    _gameData!.score += destroyedRowsCount * destroyedRowsCount * 100;
    putGameDataUseCase.call(_gameData!);
  }

  _fallRows(int y) {
    for (int i = y; i > 0; i--) {
      for (int j = 0; j < 10; j++) {
        _gameData!.staticGameArray[i][j] = _gameData!.staticGameArray[i - 1][j];
        _gameData!.staticGameArray[i - 1][j] = 0;
      }
    }
  }

  List<List<int>> _generateTetro() {
    Random rng = Random();
    int randomNumber = rng.nextInt(7);
    _gameData!.activeTetro = randomNumber + 1;
    List<List<int>> tetro = [];

    switch (randomNumber) {
      case 0:
        tetro = _generateI();
        break;
      case 1:
        tetro = _generateJ();
        break;
      case 2:
        tetro = _generateL();
        break;
      case 3:
        tetro = _generateA();
        break;
      case 4:
        tetro = _generateO();
        break;
      case 5:
        tetro = _generateS();
        break;
      case 6:
        tetro = _generateZ();
        break;
    }
    return tetro;
  }

  List<List<int>> _generateI() {
    return [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
    ];
  }

  List<List<int>> _generateJ() {
    return [
      [0, 0, 0, 0],
      [2, 2, 2, 0],
      [0, 0, 2, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> _generateL() {
    return [
      [0, 3, 0, 0],
      [0, 3, 0, 0],
      [0, 3, 3, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> _generateA() {
    return [
      [0, 4, 0, 0],
      [0, 4, 4, 0],
      [0, 4, 0, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> _generateO() {
    return [
      [0, 5, 5, 0],
      [0, 5, 5, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> _generateS() {
    return [
      [0, 6, 6, 0],
      [6, 6, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> _generateZ() {
    return [
      [0, 0, 7, 0],
      [0, 7, 7, 0],
      [0, 7, 0, 0],
      [0, 0, 0, 0],
    ];
  }
}
