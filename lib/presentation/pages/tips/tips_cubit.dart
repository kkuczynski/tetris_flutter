import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_cubit.freezed.dart';
part 'tips_state.dart';

class TipsCubit extends Cubit<TipsState> {
  TipsCubit() : super(TipsState.idle());

  Future<void> init() async {
    emit(TipsState.loaded());
  }
}
