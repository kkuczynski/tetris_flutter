import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tetris/presentation/pages/entry/entry_page.dart';
import 'package:tetris/presentation/pages/game/game_page.dart';
import 'package:tetris/presentation/pages/high_scores/high_scores_page.dart';
import 'package:tetris/presentation/pages/menu/menu_page.dart';
import 'package:tetris/presentation/pages/tips/tips_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      path: '/entry',
      page: EntryPage,
      initial: true,
    ),
    AdaptiveRoute(
      path: '/menu',
      page: MenuPage,
    ),
    AdaptiveRoute(
      path: '/game',
      page: GamePage,
    ),
    AdaptiveRoute(
      path: '/tips',
      page: TipsPage,
    ),
    AdaptiveRoute(
      path: '/high_scores',
      page: HighScoresPage,
    ),
  ],
)
class $MainRouter {}
