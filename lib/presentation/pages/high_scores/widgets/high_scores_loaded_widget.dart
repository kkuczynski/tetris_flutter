import 'package:flutter/material.dart';
import 'package:tetris/data/models/score.dart';
import 'package:tetris/presentation/widgets/loading_widget.dart';

class HighScoresLoadedWidget extends StatelessWidget {
  HighScoresLoadedWidget({
    Key? key,
    required this.scoreList,
  }) : super(key: key);
  List<Score> scoreList;

  @override
  Widget build(BuildContext context) {
    return const LoadingWidget();
  }
}
