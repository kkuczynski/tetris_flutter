import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/base_page.dart';
import 'package:tetris/presentation/pages/entry/entry_cubit.dart';
import 'package:tetris/presentation/pages/entry/widgets/entry_loaded_widget.dart';
import 'package:tetris/presentation/router/main_router.gr.dart';
import 'package:tetris/utils/hooks/cubit_hook.dart';

class EntryPage extends BasePage {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<EntryCubit>();

    useCubitListener<EntryCubit, EntryState>(cubit,
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
      idle: () => const EntryLoadedWidget(),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(EntryState state) =>
      state is EntryStateLoaded || state is EntryStateIdle;

  bool _listenWhen(EntryState state) => state is! EntryStateIdle;

  void _cubitStateListener(
      EntryCubit cubit, EntryState state, BuildContext context) {
    state.maybeWhen(
      loaded: () => context.router.popAndPush(const MenuPageRoute()),
      orElse: () {},
    );
  }
}
