import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/data/models/game_data.dart';
import 'package:tetris/presentation/pages/menu/menu_cubit.dart';
import 'package:tetris/presentation/pages/menu/widgets/menu_button_widget.dart';
import 'package:tetris/presentation/pages/menu/widgets/menu_title_widget.dart';

class MenuLoadedWidget extends HookWidget {
  MenuLoadedWidget({
    Key? key,
    required this.menuCubit,
    required this.gameData,
  }) : super(key: key);

  final MenuCubit menuCubit;
  final GameData? gameData;
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> showContinueGame = useState(false);
    if (gameData != null) {
      if (gameData!.gameFinished == false) {
        showContinueGame.value = true;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Flex(
        direction: Axis.vertical,
        children: [
          const Expanded(
            flex: 2,
            child: MenuTitleWidget(),
          ),
          Expanded(
            flex: 9,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MenuButtonWidget(
                  shape: 0,
                  onPressed: () => menuCubit.continueGamePressed(),
                  buttonText: "CONTINUE GAME",
                  visible: showContinueGame,
                ),
                MenuButtonWidget(
                  shape: 1,
                  onPressed: () => menuCubit.newGamePressed(),
                  buttonText: "NEW GAME",
                ),
                MenuButtonWidget(
                  shape: 2,
                  onPressed: () {},
                  buttonText: "HIGH SCORES",
                ),
                MenuButtonWidget(
                  shape: 3,
                  onPressed: () => menuCubit.tipsPressed(),
                  buttonText: "TIPS",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
