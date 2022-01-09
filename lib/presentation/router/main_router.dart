import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tetris/presentation/pages/entry/entry_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(path: '/entry', page: EntryPage, initial: true),
  ],
)
class $MainRouter {}
