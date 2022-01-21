import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/style.dart';

class GameCubeWidget extends HookWidget {
  final int y;
  final int x;
  final double size;
  ValueNotifier<int> color = useState(0);
  List<Color> colors = [
    darkGrey,
    cyan,
    purple,
    pink,
    yellow,
    brown,
    green,
    customWhite,
  ];

  GameCubeWidget({
    Key? key,
    required this.x,
    required this.y,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          border: Border.all(
            width: 1.0,
            color: black.withOpacity(0.5),
          ),
          color: colors[color.value],
        ),
      ),
    );
  }
}
