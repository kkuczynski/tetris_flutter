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
  }) : super(key: key) {
    run();
  }

  final GameCubit gameCubit;
  final ValueNotifier<int> score = useState(0);
  List<GameCubeWidget> gameGrid = [];
  bool running = false;
  Timer? _timer;
  List<int> colors = [];
  void updateColors() {
    colors = gameCubit.getCubeColors();
    int i = 0;
    for (var element in colors) {
      gameGrid[i].color.value = element;
      i++;
    }
  }

  void run() {
    const duration = Duration(milliseconds: 400);

    _timer?.cancel();
    _timer = Timer.periodic(duration, (Timer timer) {
      gameCubit.proceedGame();
      score.value = gameCubit.getScore();
      updateColors();
      return timer.cancel();
    });
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

    return Stack(
      children: [
        Column(
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
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () async => {
                        gameCubit.moveLeft(),
                        updateColors(),
                      }),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () async => {
                        gameCubit.rotate(),
                        updateColors(),
                      }),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () async => {
                        gameCubit.moveRight(),
                        updateColors(),
                      }),
            ),
          ],
        )
      ],
    );
  }
}
