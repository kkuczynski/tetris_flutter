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
  List<List<int>> gameArray = [[]];
  void initGameArray() {
    for (int i = 0; i < 20; i++) {
      gameArray.add([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    }
  }
}
