import 'package:hive/hive.dart';

part 'score.g.dart';

@HiveType(typeId: 0)
class Score extends HiveObject {
  @HiveField(0)
  String nickName;
  @HiveField(1)
  int score;
  @HiveField(2)
  DateTime date;

  Score({
    required this.nickName,
    required this.score,
    required this.date,
  });
}
