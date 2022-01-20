import 'package:flutter/material.dart';
import 'package:tetris/presentation/style.dart';

class MenuTitleWidget extends StatelessWidget {
  const MenuTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
            text: 'T',
            style: TextStyle(color: green, fontSize: 80),
          ),
          TextSpan(
            text: 'E',
            style: TextStyle(color: purple, fontSize: 80),
          ),
          TextSpan(
            text: 'T',
            style: TextStyle(color: yellow, fontSize: 80),
          ),
          TextSpan(
            text: 'R',
            style: TextStyle(color: pink, fontSize: 80),
          ),
          TextSpan(
            text: 'I',
            style: TextStyle(color: cyan, fontSize: 80),
          ),
          TextSpan(
            text: 'S',
            style: TextStyle(color: brown, fontSize: 80),
          ),
        ]),
      ),
    );
  }
}
