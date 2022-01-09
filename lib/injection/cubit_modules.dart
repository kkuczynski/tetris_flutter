import 'package:get_it/get_it.dart';
import 'package:tetris/presentation/app/app_cubit.dart';
import 'package:tetris/presentation/pages/entry/entry_cubit.dart';

Future<void> registerCubit(GetIt getIt) async {
  getIt
    ..registerFactory(() => AppCubit())
    ..registerFactory(() => EntryCubit());
}
