import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/base_page.dart';
import 'package:tetris/presentation/pages/high_scores/high_scores_cubit.dart';
import 'package:tetris/presentation/pages/high_scores/widgets/high_scores_loaded_widget.dart';
import 'package:tetris/utils/hooks/cubit_hook.dart';

class HighScoresPage extends BasePage {
  const HighScoresPage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<HighScoresCubit>();

    useCubitListener<HighScoresCubit, HighScoresState>(cubit,
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
      loaded: (scoreList) => HighScoresLoadedWidget(
        scoreList: scoreList,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(HighScoresState state) => state is HighScoresStateLoaded;

  bool _listenWhen(HighScoresState state) => state is! HighScoresStateIdle;

  void _cubitStateListener(
      HighScoresCubit cubit, HighScoresState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
