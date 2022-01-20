import 'package:get_it/get_it.dart';
import 'package:tetris/use_case/game_data/get_game_data_use_case.dart';
import 'package:tetris/use_case/game_data/put_game_data_use_case.dart';
import 'package:tetris/use_case/scores/add_score_use_case.dart';
import 'package:tetris/use_case/scores/get_all_scores_use_case.dart';

Future<void> registerUseCase(GetIt getIt) async {
  getIt
    ..registerFactory(() => AddScoreUseCase(
          getIt(),
        ))
    ..registerFactory(() => GetAllScoresUseCase(
          getIt(),
        ))
    ..registerFactory(() => PutGameDataUseCase(
          getIt(),
        ))
    ..registerFactory(() => GetGameDataUseCase(
          getIt(),
        ));
}
