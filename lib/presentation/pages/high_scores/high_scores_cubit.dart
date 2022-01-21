import 'package:bloc/bloc.dart' as high_scores_cubit;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetris/data/models/score.dart';
import 'package:tetris/use_case/scores/get_all_scores_use_case.dart';

part 'high_scores_cubit.freezed.dart';
part 'high_scores_state.dart';

class HighScoresCubit extends high_scores_cubit.Cubit<HighScoresState> {
  HighScoresCubit(
    this.getAllScoresUseCase,
  ) : super(HighScoresState.idle());

  GetAllScoresUseCase getAllScoresUseCase;
  List<Score> scoreList = [];

  Future<void> init() async {
    await fetchScores();
    emit(HighScoresState.loaded(scoreList));
  }

  Future<void> fetchScores() async {
    Iterable<Score> scores = await getAllScoresUseCase.call();
    scoreList = scores.sorted((a, b) => a.score.compareTo(b.score));
    scoreList.reverseRange(0, scoreList.length);
  }
}
