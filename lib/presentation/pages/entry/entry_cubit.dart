import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_cubit.freezed.dart';
part 'entry_state.dart';

class EntryCubit extends Cubit<EntryState> {
  EntryCubit() : super(EntryState.idle());

  Future<void> init() async {
    emit(EntryState.loaded());
  }
}
