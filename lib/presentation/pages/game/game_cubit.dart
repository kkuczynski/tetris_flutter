import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_cubit.freezed.dart';
part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameState.idle());

  Future<void> init({required bool isNewGame}) async {
    if (isNewGame) {
      initGameArray();
    }
    emit(GameState.loaded());
  }

  int score = 0;
  List<List<int>> dynamicGameArray = [];
  List<List<int>> staticGameArray = [];
  List<List<int>>? currentTetro = [];
  int activeTetro = 0;
  bool gameFinished = false;
  List<int> tetroBeginXY = [0, 0];

  void initGameArray() {
    for (int i = 0; i < 20; i++) {
      staticGameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
      dynamicGameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    }
  }

  void proceedGame() {
    if (activeTetro == 0 && !gameFinished) {
      currentTetro = generateTetro();
      if (canSpawn()) {
        spawnTetro();
      } else {
        gameFinished = true;
      }
    } else {
      gravity();
    }
  }

  void gravity() {
    if (canMoveDown()) {
      tetroBeginXY.last += 1;
      for (int y = 19; y >= 0; y--) {
        for (int x = 0; x < 10; x++) {
          if (dynamicGameArray[y][x] > 0) {
            dynamicGameArray[y + 1][x] = dynamicGameArray[y][x];
            dynamicGameArray[y][x] = 0;
          }
        }
      }
    } else {
      for (int y = 0; y < 20; y++) {
        for (int x = 0; x < 10; x++) {
          if (dynamicGameArray[y][x] > 0) {
            staticGameArray[y][x] = dynamicGameArray[y][x];
            dynamicGameArray[y][x] = 0;
          }
        }
      }
      currentTetro = [];
      activeTetro = 0;
    }
  }

  rotate() {
    List<List<int>> tmpDynamicGameArray = dynamicGameArray;
    try {
      int size = 3;
      if (activeTetro > 0 && activeTetro != 5) {
        if (activeTetro == 1) {
          size = 4;
        }

        moveTo0x0();

        for (int i = 0; i < size; i++) {
          reverse(dynamicGameArray[i], 0, size);
        }

        for (int i = 0; i < size; i++) {
          for (int j = i; j < size; j++) {
            int tmpSwap = dynamicGameArray[i][j];
            dynamicGameArray[i][j] = dynamicGameArray[j][i];
            dynamicGameArray[j][i] = tmpSwap;
          }
        }

        // for (int x = 0; x < size / 2; x++) {
        //   for (int y = x; y < size - x - 1; y++) {
        //     int temp = dynamicGameArray[x][y];
        //
        //     dynamicGameArray[x][y] = dynamicGameArray[y][size - 1 - x];
        //
        //     dynamicGameArray[y][size - 1 - x] =
        //         dynamicGameArray[size - 1 - x][size - 1 - y];
        //
        //     dynamicGameArray[size - 1 - x][size - 1 - y] =
        //         dynamicGameArray[size - 1 - y][x];
        //
        //     dynamicGameArray[size - 1 - y][x] = temp;
        //   }
        // }

        if (!moveBackFrom0x0()) {
          dynamicGameArray = tmpDynamicGameArray;
        }
        if (tetroBroke(tmpDynamicGameArray)) {
          dynamicGameArray = tmpDynamicGameArray;
        }
      }
    } catch (e) {
      dynamicGameArray = tmpDynamicGameArray;
    }
  }

  void moveTo0x0() {
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        if (dynamicGameArray[y][x] > 0) {
          dynamicGameArray[y - tetroBeginXY.last][x - tetroBeginXY.first] =
              dynamicGameArray[y][x];
          dynamicGameArray[y][x] = 0;
        }
      }
    }
  }

  bool moveBackFrom0x0() {
    for (int y = 3; y >= 0; y--) {
      if (dynamicGameArray[y][0] > 0 && tetroBeginXY.first < 0) {
        tetroBeginXY.first = 0;
      } else if (dynamicGameArray[y][1] > 0 && tetroBeginXY.first < -1) {
        tetroBeginXY.first = 0;
      } else if (dynamicGameArray[y][3] > 0 && tetroBeginXY.first > 6) {
        tetroBeginXY.first = 6;
      } else if (dynamicGameArray[y][2] > 0 && tetroBeginXY.first > 7) {
        tetroBeginXY.first = 7;
      }
    }
    for (int y = 3; y >= 0; y--) {
      for (int x = 3; x >= 0; x--) {
        if (dynamicGameArray[y][x] > 0) {
          dynamicGameArray[y + tetroBeginXY.last][x + tetroBeginXY.first] =
              dynamicGameArray[y][x];

          if (dynamicGameArray[y + tetroBeginXY.last][x + tetroBeginXY.first] >
                  0 &&
              staticGameArray[y + tetroBeginXY.last][x + tetroBeginXY.first] >
                  0) {
            return false;
          }
          dynamicGameArray[y][x] = 0;
        }
      }
    }
    return true;
  }

  bool tetroBroke(List<List<int>> tmpDynamicGameArray) {
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
        if (dynamicGameArray[y][x] > 0) {
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
    if (canMoveHorizontally(1) && !gameFinished && activeTetro > 0) {
      tetroBeginXY.first += 1;
      for (int y = 0; y < 20; y++) {
        for (int x = 8; x >= 0; x--) {
          if (dynamicGameArray[y][x] > 0) {
            dynamicGameArray[y][x + 1] = dynamicGameArray[y][x];
            dynamicGameArray[y][x] = 0;
          }
        }
      }
    }
  }

  void moveLeft() async {
    if (canMoveHorizontally(-1) && !gameFinished && activeTetro > 0) {
      tetroBeginXY.first -= 1;
      for (int y = 0; y < 20; y++) {
        for (int x = 1; x < 10; x++) {
          if (dynamicGameArray[y][x] > 0) {
            dynamicGameArray[y][x - 1] = dynamicGameArray[y][x];
            dynamicGameArray[y][x] = 0;
          }
        }
      }
    }
  }

  int rotateWithoutBreaking() {
    if (dynamicGameArray[2][0] > 0 || dynamicGameArray[3][0] > 0) {
      return 1;
    } else if (dynamicGameArray[0][2] > 0 || dynamicGameArray[1][2] > 0) {
      return -1;
    } else {
      return 0;
    }
  }

  bool canMoveDown() {
    for (int element in dynamicGameArray.last) {
      if (element > 0) {
        return false;
      }
    }
    for (int y = 0; y < 19; y++) {
      for (int x = 0; x < 10; x++) {
        if (dynamicGameArray[y][x] > 0) {
          if (staticGameArray[y + 1][x] > 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  bool canMoveHorizontally(int offset) {
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        if (dynamicGameArray[y][x] > 0) {
          if (x + offset >= 10 || x + offset < 0) {
            return false;
          } else if (staticGameArray[y][x + offset] > 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  bool canSpawn() {
    for (int y = 0; y < 4; y++) {
      for (int x = 0; x < 4; x++) {
        if (currentTetro![y][x] > 0) {
          if (staticGameArray[y][x + 3] > 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  void spawnTetro() {
    tetroBeginXY = [3, 0];
    for (int y = 0; y < 4; y++) {
      for (int x = 0; x < 4; x++) {
        dynamicGameArray[y][x + 3] = currentTetro![y][x];
      }
    }
  }

  int getScore() {
    score++;
    return score;
  }

  List<int> getCubeColors() {
    List<int> colors = [];
    for (int y = 0; y < 20; y++) {
      for (int x = 0; x < 10; x++) {
        colors.add(staticGameArray[y][x] > 0
            ? staticGameArray[y][x]
            : dynamicGameArray[y][x]);
      }
    }
    return colors;
  }

  List<List<int>> generateTetro() {
    Random rng = Random();
    int randomNumber = rng.nextInt(7);
    activeTetro = randomNumber + 1;
    List<List<int>> tetro = [];

    switch (randomNumber) {
      case 0:
        tetro = generateI();
        break;
      case 1:
        tetro = generateJ();
        break;
      case 2:
        tetro = generateL();
        break;
      case 3:
        tetro = generateA();
        break;
      case 4:
        tetro = generateO();
        break;
      case 5:
        tetro = generateS();
        break;
      case 6:
        tetro = generateZ();
        break;
    }
    return tetro;
  }

  List<List<int>> generateI() {
    return [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
    ];
  }

  List<List<int>> generateJ() {
    return [
      [0, 0, 0, 0],
      [2, 2, 2, 0],
      [0, 0, 2, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> generateL() {
    return [
      [0, 3, 0, 0],
      [0, 3, 0, 0],
      [0, 3, 3, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> generateA() {
    return [
      [0, 4, 0, 0],
      [0, 4, 4, 0],
      [0, 4, 0, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> generateO() {
    return [
      [0, 5, 5, 0],
      [0, 5, 5, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> generateS() {
    return [
      [0, 6, 6, 0],
      [6, 6, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ];
  }

  List<List<int>> generateZ() {
    return [
      [0, 0, 7, 0],
      [0, 7, 7, 0],
      [0, 7, 0, 0],
      [0, 0, 0, 0],
    ];
  }
}
