import 'package:flutter/material.dart';
import 'package:tetris/presentation/pages/game/game_cubit.dart';
import 'package:tetris/presentation/style.dart';
import 'package:tetris/presentation/typography.dart';
import 'package:tetris/utils/custom_scroll_behavior.dart';

showEndGameDialog(context, int score, GameCubit gameCubit) {
  final textController = TextEditingController();
  textController.text = "PLAYER";
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: ScrollConfiguration(
          behavior: CustomScrollBehavior(),
          child: AlertDialog(
            actionsAlignment: MainAxisAlignment.spaceAround,
            scrollable: true,
            backgroundColor: darkGrey,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "YOU GAINED",
                    style: AppTypography.gameFinishedInfo,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    score.toString(),
                    style: AppTypography.gameFinishedPoints,
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "POINTS\n\nYOUR NAME:\n",
                    style: AppTypography.gameFinishedInfo,
                    textAlign: TextAlign.center,
                  ),
                  TextField(
                    controller: textController,
                    textAlign: TextAlign.center,
                    style: AppTypography.tipText,
                    maxLines: 1,
                    cursorColor: black,
                    cursorWidth: 2.0,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 6.0),
                      fillColor: cyan,
                      filled: true,
                      focusColor: cyan,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: cyan),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: black),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: GestureDetector(
                  child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: purple,
                    ),
                    child: const Center(
                      child: Text(
                        "CANCEL",
                        style: AppTypography.tipText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: () => gameCubit.doNotSaveScore(),
                  // your code
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: GestureDetector(
                  child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: green,
                    ),
                    child: const Center(
                      child: Text(
                        "SUBMIT",
                        style: AppTypography.tipText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: () => {
                    if (textController.text.isNotEmpty)
                      {
                        gameCubit.saveScore(textController.text, score),
                      },
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
