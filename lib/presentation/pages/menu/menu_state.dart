part of 'menu_cubit.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState.idle() = MenuStateIdle;

  const factory MenuState.loaded() = MenuStateLoaded;
}
