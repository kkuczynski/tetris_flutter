import 'package:get_it/get_it.dart';
import 'package:tetris/injection/cubit_modules.dart';
import 'package:tetris/injection/storage_modules.dart';
import 'package:tetris/injection/use_case_modules.dart';
import 'package:tetris/injection/utils_modules.dart';

Future<void> registerModules(GetIt getIt) async {
  await registerCubit(getIt);
  await registerUtils(getIt);
  await registerStorage(getIt);
  await registerUseCase(getIt);
}
