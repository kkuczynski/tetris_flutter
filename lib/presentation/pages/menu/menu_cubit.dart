import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_cubit.freezed.dart';
part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuState.idle());

  Future<void> init() async {
    emit(const MenuState.loaded());
  }

  Future<void> quitPressed() async {
    emit(const MenuState.quit());
  }

  Future<void> newGamePressed() async {
    emit(const MenuState.newGame());
    emit(const MenuState.dump());
  }
}
