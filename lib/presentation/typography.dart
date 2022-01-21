import 'package:flutter/material.dart';
import 'package:tetris/presentation/style.dart';

const fontFamily = 'Roboto';

class AppTypography {
  static const TextStyle menuButtonText = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w800,
    color: black,
    fontSize: 24,
  );
  static const TextStyle menuHeaderText = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    color: customWhite,
    fontSize: 80,
  );
  static const TextStyle gameInfoText = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    color: customWhite,
    fontSize: 24,
  );

  static const TextStyle tipText = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: black,
    fontSize: 20,
  );

  static const TextStyle gameFinishedTitle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: yellow,
    fontSize: 28,
  );

  static const TextStyle gameFinishedInfo = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: pink,
    fontSize: 24,
  );

  static const TextStyle gameFinishedName = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: pink,
    fontSize: 24,
  );

  static const TextStyle gameFinishedPoints = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: green,
    fontSize: 64,
  );

  static const TextStyle highScoresTitle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: cyan,
    fontSize: 36,
  );

  static const TextStyle highScoreData = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: black,
    fontSize: 20,
  );

  static const TextStyle highScoreHeader = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: yellow,
    fontSize: 20,
  );
}
