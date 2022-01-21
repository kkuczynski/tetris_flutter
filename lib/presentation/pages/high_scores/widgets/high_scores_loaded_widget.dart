import 'package:flutter/material.dart';
import 'package:tetris/data/models/score.dart';
import 'package:tetris/presentation/pages/high_scores/widgets/high_score_tile_widget.dart';
import 'package:tetris/presentation/typography.dart';
import 'package:tetris/utils/custom_scroll_behavior.dart';

class HighScoresLoadedWidget extends StatelessWidget {
  HighScoresLoadedWidget({
    Key? key,
    required this.scoreList,
  }) : super(key: key);
  List<Score> scoreList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "HIGH SCORES",
                style: AppTypography.highScoresTitle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  flex: 4,
                  child: Text(
                    "NICKNAME",
                    style: AppTypography.highScoreHeader,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "DATE",
                    textAlign: TextAlign.center,
                    style: AppTypography.highScoreHeader,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "SCORE",
                    textAlign: TextAlign.end,
                    style: AppTypography.highScoreHeader,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: ListView.builder(
                itemCount: scoreList.length > 10 ? 10 : scoreList.length,
                itemBuilder: (context, index) {
                  return HighScoreTileWidget(
                    score: scoreList[index],
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
