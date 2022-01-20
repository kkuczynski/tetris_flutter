part of 'tips_cubit.dart';

@freezed
abstract class TipsState with _$TipsState {
  const factory TipsState.idle() = TipsStateIdle;

  const factory TipsState.loaded() = TipsStateLoaded;
}
