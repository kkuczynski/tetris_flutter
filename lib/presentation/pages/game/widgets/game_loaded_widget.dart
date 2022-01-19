import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/game/game_cubit.dart';
import 'package:tetris/presentation/pages/game/widgets/game_cube_widget.dart';
import 'package:tetris/presentation/typography.dart';

class GameLoadedWidget extends HookWidget {
  GameLoadedWidget({
    Key? key,
    required this.gameCubit,
  }) : super(key: key);

  final GameCubit gameCubit;
  final ValueNotifier<int> score = useState(0);
  List<GameCubeWidget> gameGrid = [];
  bool running = false;

  void updateColors() {
    List<int> colors = gameCubit.getCubeColors();
    for (int i = 0; i < gameGrid.length; i++) {
      gameGrid[i].color.value = colors[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    double _availableWidth = MediaQuery.of(context).size.width;
    double _availableHeight = _availableWidth * 2;

    if (_availableHeight > MediaQuery.of(context).size.height - 120.0) {
      _availableHeight = MediaQuery.of(context).size.height - 120.0;
      _availableWidth = _availableHeight / 2;
    }

    double _cubeSize = _availableWidth / 10;

    for (int x = 0; x < 10; x++) {
      for (int y = 0; y < 20; y++) {
        gameGrid.add(
          GameCubeWidget(
            x: x,
            y: y,
            size: _cubeSize,
          ),
        );
      }
    }

    const duration = Duration(milliseconds: 400);
    if (!running) {
      running = true;
      Timer.periodic(duration, (Timer timer) {
        gameCubit.proceedGame();
        score.value = gameCubit.getScore();
        updateColors();
        return timer.cancel();
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "SCORE: " + score.value.toString(),
              style: AppTypography.gameInfoText,
            ),
          ),
        ),
        SizedBox(
          height: _availableHeight,
          width: _availableWidth,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 10,
            children: gameGrid,
          ),
        ),
      ],
    );
  }
}
