import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/base_page.dart';
import 'package:tetris/presentation/pages/menu/menu_cubit.dart';
import 'package:tetris/presentation/pages/menu/widgets/menu_loaded_widget.dart';
import 'package:tetris/presentation/router/main_router.gr.dart';
import 'package:tetris/utils/hooks/cubit_hook.dart';

class MenuPage extends BasePage {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<MenuCubit>();

    useCubitListener<MenuCubit, MenuState>(cubit,
        listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => MenuLoadedWidget(
        menuCubit: cubit,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(MenuState state) => state is MenuStateLoaded;

  bool _listenWhen(MenuState state) => state is! MenuStateIdle;

  void _cubitStateListener(
      MenuCubit cubit, MenuState state, BuildContext context) {
    state.maybeWhen(
      quit: () => SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
      newGame: () => context.router.push(GamePageRoute(isNewGame: true)),
      orElse: () {},
    );
  }
}
