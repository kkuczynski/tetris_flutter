import 'package:flutter/material.dart';
import 'package:tetris/presentation/style.dart';

class MenuTetroBox extends StatelessWidget {
  const MenuTetroBox({
    Key? key,
    required this.availableWidth,
    required this.color,
  }) : super(key: key);

  final double availableWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: availableWidth / 4,
      height: availableWidth / 4,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: lightGrey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
