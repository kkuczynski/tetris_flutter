import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/menu/widgets/menu_button_widget.dart';
import 'package:tetris/presentation/typography.dart';

class MenuLoadedWidget extends HookWidget {
  MenuLoadedWidget({Key? key}) : super(key: key);
  ValueNotifier<bool> showContinueGame = useValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Flex(
        direction: Axis.vertical,
        children: [
          const Expanded(
            flex: 2,
            child: Center(
              child: Text(
                "TETRIS",
                style: AppTypography.menuHeaderText,
              ),
            ),
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
                  onPressed: () {},
                  buttonText: "CONTINUE GAME",
                  visible: showContinueGame,
                ),
                MenuButtonWidget(
                  shape: 1,
                  onPressed: () {},
                  buttonText: "NEW GAME",
                ),
                MenuButtonWidget(
                  shape: 2,
                  onPressed: () {},
                  buttonText: "HIGH SCORES",
                ),
                MenuButtonWidget(
                  shape: 3,
                  onPressed: () {},
                  buttonText: "QUIT",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
