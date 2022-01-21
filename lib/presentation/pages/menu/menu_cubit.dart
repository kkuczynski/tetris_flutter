import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetris/data/models/game_data.dart';
import 'package:tetris/use_case/game_data/get_game_data_use_case.dart';

part 'menu_cubit.freezed.dart';
part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  GetGameDataUseCase getGameDataUseCase;
  MenuCubit(this.getGameDataUseCase) : super(MenuState.idle());

  Future<void> init() async {
    GameData? gameData = await getGameDataUseCase.call();
    if (gameData != null) {
      emit(MenuState.loaded(gameData));
    } else {
      emit(const MenuState.loaded(null));
    }
  }

  Future<void> reload() async {
    GameData? gameData = await getGameDataUseCase.call();
    if (gameData != null) {
      emit(MenuState.loaded(gameData));
    } else {
      emit(const MenuState.loaded(null));
    }
  }

  Future<void> tipsPressed() async {
    emit(const MenuState.tips());
    emit(const MenuState.dump());
  }

  Future<void> newGamePressed() async {
    emit(const MenuState.newGame());
    emit(const MenuState.dump());
  }

  Future<void> continueGamePressed() async {
    emit(const MenuState.continueGame());
    emit(const MenuState.dump());
  }

  Future<void> highScoresPresses() async {
    emit(const MenuState.highScores());
    emit(const MenuState.dump());
  }

  Future<bool> canContinue() async {
    GameData? gameData = await getGameDataUseCase.call();
    if (gameData == null) {
      return false;
    } else if (gameData.gameFinished == true) {
      return false;
    } else {
      return true;
    }
  }
}
