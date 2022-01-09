part of 'entry_cubit.dart';

@freezed
abstract class EntryState with _$EntryState {
  const factory EntryState.idle() = EntryStateIdle;

  const factory EntryState.loaded() = EntryStateLoaded;
}
