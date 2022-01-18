import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/pages/game/game_cubit.dart';
import 'package:tetris/presentation/typography.dart';

class GameLoadedWidget extends HookWidget {
  GameLoadedWidget({
    Key? key,
    required this.gameCubit,
  }) : super(key: key);

  final GameCubit gameCubit;
  final ValueNotifier<int> score = useState(0);

  @override
  Widget build(BuildContext context) {
    double _availableWidth = MediaQuery.of(context).size.width;
    double _availableHeight = _availableWidth * 2;
    if (_availableHeight > MediaQuery.of(context).size.height - 16.0 - 24.0) {
      _availableHeight = MediaQuery.of(context).size.height - 16.0 - 24.0;
      _availableWidth = _availableHeight / 2;
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "SCORE: " + score.value.toString(),
            style: AppTypography.gameInfoText,
          ),
        ), //TODO: Canvas
      ],
    );
  }
}
