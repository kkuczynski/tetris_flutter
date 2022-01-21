import 'package:flutter/material.dart';
import 'package:tetris/data/models/score.dart';
import 'package:tetris/presentation/style.dart';
import 'package:tetris/presentation/typography.dart';

class HighScoreTileWidget extends StatelessWidget {
  final Score score;
  final int index;

  const HighScoreTileWidget({
    Key? key,
    required this.score,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: index % 2 == 0 ? pink : green),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  (index + 1).toString() + ". " + score.nickName.toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: AppTypography.highScoreData,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  (score.date.day < 10 ? "0" : "") +
                      (score.date.day).toString() +
                      "." +
                      (score.date.month < 10 ? "0" : "") +
                      (score.date.month).toString() +
                      "." +
                      (score.date.year - 2000).toString(),
                  textAlign: TextAlign.center,
                  style: AppTypography.highScoreData,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  (score.score).toString(),
                  textAlign: TextAlign.end,
                  style: AppTypography.highScoreData,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
