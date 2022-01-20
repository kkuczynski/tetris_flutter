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
}
