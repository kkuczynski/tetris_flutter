import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tetris/presentation/style.dart';

class GameCubeWidget extends HookWidget {
  ValueNotifier<int> color = useState(0);
  final int y;
  final int x;
  final double size;
  List<Color> colors = [black, cyan, purple, pink, yellow, green, customWhite];
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
            color: semiTransparentGrey.withOpacity(0.5),
          ),
          color: colors[color.value],
        ),
      ),
    );
  }
}
