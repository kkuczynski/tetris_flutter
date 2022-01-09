import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/app/app_cubit.dart';
import 'package:tetris/presentation/router/main_router.gr.dart';
import 'package:tetris/utils/hive.dart';
import 'package:tetris/utils/hooks/cubit_hook.dart';

final _mainRouter = MainRouter();

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<AppCubit>();

    useCubitListener<AppCubit, AppState>(cubit,
        listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(() {
      cubit.init();

      return () {
        closeHive();
      };
    }, [cubit]);

    return MaterialApp.router(
      color: Colors.red,
      routerDelegate: _mainRouter.delegate(),
      routeInformationParser: _mainRouter.defaultRouteParser(),
    );
  }

  bool _listenWhen(AppState state) => state is! AppStateIdle;

  void _cubitStateListener(
    AppCubit cubit,
    AppState state,
    BuildContext context,
  ) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
