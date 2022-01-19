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
  bool activeTetro = false;

  void initGameArray() {
    for (int i = 0; i < 20; i++) {
      staticGameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
      dynamicGameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    }
  }

  void proceedGame() {
    if (!activeTetro) {
      currentTetro = generateTetro();
      spawnTetro();
      activeTetro = true;
    }
  }

  void spawnTetro() {
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
      [0, 0, 2, 0],
      [0, 0, 2, 0],
      [0, 2, 2, 0],
    ];
  }

  List<List<int>> generateL() {
    return [
      [0, 0, 0, 0],
      [0, 3, 0, 0],
      [0, 3, 0, 0],
      [0, 3, 3, 0],
    ];
  }

  List<List<int>> generateA() {
    return [
      [0, 0, 0, 0],
      [0, 4, 0, 0],
      [0, 4, 4, 0],
      [0, 4, 0, 0],
    ];
  }

  List<List<int>> generateO() {
    return [
      [0, 0, 0, 0],
      [0, 0, 0, 0],
      [0, 5, 5, 0],
      [0, 5, 5, 0],
    ];
  }

  List<List<int>> generateS() {
    return [
      [0, 0, 0, 0],
      [0, 6, 0, 0],
      [0, 6, 6, 0],
      [0, 0, 6, 0],
    ];
  }

  List<List<int>> generateZ() {
    return [
      [0, 0, 0, 0],
      [0, 0, 7, 0],
      [0, 7, 7, 0],
      [0, 7, 0, 0],
    ];
  }
}
