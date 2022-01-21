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
    _run();
  }

  final GameCubit gameCubit;
  final ValueNotifier<int> score = useState(0);
  final ValueNotifier<int> frames = useState(0);
  final List<GameCubeWidget> _gameGrid = [];
  Timer? _timer;
  final int _time = 10;
  List<int> _colors = [];
  Duration? _duration;
  final int _swipeSensitivity = 12;
  bool _isSkipping = false;

  void updateColors() {
    _colors = gameCubit.getCubeColors();
    int i = 0;
    for (var element in _colors) {
      _gameGrid[i].color.value = element;
      i++;
    }
  }

  void _run() {
    _duration = Duration(milliseconds: _time);

    _timer?.cancel();
    _timer = Timer.periodic(_duration!, (Timer timer) {
      if (frames.value % 15 == 0) {
        gameCubit.proceedGame();
        score.value = gameCubit.getScore();
      }
      if (_isSkipping) {
        if (!gameCubit.proceedGame()) {
          _isSkipping = false;
        }
      }
      updateColors();
      frames.value++;
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
        _gameGrid.add(
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
                child: Row(
                  children: [
                    Text(
                      "SCORE: " + score.value.toString(),
                      style: AppTypography.gameInfoText,
                    ),
                    Text(frames.value.toString())
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SizedBox(
                height: _availableHeight,
                width: _availableWidth,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 10,
                  children: _gameGrid,
                ),
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
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () async => {
                  gameCubit.rotate(),
                  updateColors(),
                },
                onVerticalDragUpdate: (details) => {
                  if (details.delta.dy > _swipeSensitivity)
                    {
                      _isSkipping = true,
                    },
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () async => {
                  gameCubit.moveRight(),
                  updateColors(),
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
