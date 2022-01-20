import 'package:get_it/get_it.dart';
import 'package:tetris/data/storage/game_data_storage.dart';
import 'package:tetris/data/storage/scores_storage.dart';

Future<void> registerStorage(GetIt getIt) async {
  getIt
    ..registerLazySingleton(() => ScoresStorage(
          getIt(),
        ))
    ..registerLazySingleton(() => GameDataStorage(
          getIt(),
        ));
}
