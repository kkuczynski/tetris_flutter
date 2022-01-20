import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/base_page.dart';
import 'package:tetris/presentation/pages/tips/tips_cubit.dart';
import 'package:tetris/presentation/pages/tips/widgets/tips_loaded_widget.dart';
import 'package:tetris/utils/hooks/cubit_hook.dart';

class TipsPage extends BasePage {
  const TipsPage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<TipsCubit>();

    useCubitListener<TipsCubit, TipsState>(cubit,
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
      loaded: () => const TipsLoadedWidget(),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(TipsState state) => state is TipsStateLoaded;

  bool _listenWhen(TipsState state) => state is! TipsStateIdle;

  void _cubitStateListener(
      TipsCubit cubit, TipsState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
