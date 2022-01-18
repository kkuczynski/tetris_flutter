import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/base_page.dart';
import 'package:tetris/presentation/pages/game/game_cubit.dart';
import 'package:tetris/presentation/pages/game/widgets/game_loaded_widget.dart';
import 'package:tetris/utils/hooks/cubit_hook.dart';

class GamePage extends BasePage {
  final bool isNewGame;
  const GamePage({Key? key, required this.isNewGame}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<GameCubit>();

    useCubitListener<GameCubit, GameState>(cubit,
        listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init(isNewGame: isNewGame);
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => GameLoadedWidget(
        gameCubit: cubit,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(GameState state) => state is GameStateLoaded;

  bool _listenWhen(GameState state) => state is! GameStateIdle;

  void _cubitStateListener(
      GameCubit cubit, GameState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
