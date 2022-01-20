import 'package:flutter/material.dart';
import 'package:tetris/presentation/style.dart';
import 'package:tetris/presentation/typography.dart';

class TipsLoadedWidget extends StatelessWidget {
  const TipsLoadedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Container(
            color: green.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.touch_app_outlined, size: 64),
                  Text(
                    "MOVE \nLEFT",
                    style: AppTypography.tipText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: pink.withOpacity(0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: const [
                    Icon(Icons.keyboard_arrow_down, size: 44),
                    Icon(Icons.keyboard_arrow_down, size: 44),
                    Icon(Icons.touch_app_outlined, size: 64),
                    Icon(Icons.keyboard_arrow_down, size: 44),
                    Icon(Icons.keyboard_arrow_down, size: 44),
                    Text(
                      "SKIP",
                      style: AppTypography.tipText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90.0),
                  child: Column(
                    children: const [
                      Icon(Icons.touch_app_outlined, size: 64),
                      Text(
                        "ROTATE",
                        style: AppTypography.tipText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: cyan.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.touch_app_outlined, size: 64),
                  Text(
                    "MOVE \nRIGHT",
                    style: AppTypography.tipText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
