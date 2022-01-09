import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

Future<void> registerUtils(GetIt getIt) async {
  getIt..registerLazySingleton(() => Hive);
}
