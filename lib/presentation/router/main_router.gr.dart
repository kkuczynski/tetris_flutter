// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:tetris/presentation/pages/entry/entry_page.dart' as _i1;
import 'package:tetris/presentation/pages/game/game_page.dart' as _i3;
import 'package:tetris/presentation/pages/high_scores/high_scores_page.dart'
    as _i5;
import 'package:tetris/presentation/pages/menu/menu_page.dart' as _i2;
import 'package:tetris/presentation/pages/tips/tips_page.dart' as _i4;

class MainRouter extends _i6.RootStackRouter {
  MainRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    EntryPageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.EntryPage());
    },
    MenuPageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.MenuPage());
    },
    GamePageRoute.name: (routeData) {
      final args = routeData.argsAs<GamePageRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.GamePage(key: args.key, isNewGame: args.isNewGame));
    },
    TipsPageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.TipsPage());
    },
    HighScoresPageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.HighScoresPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/entry', fullMatch: true),
        _i6.RouteConfig(EntryPageRoute.name, path: '/entry'),
        _i6.RouteConfig(MenuPageRoute.name, path: '/menu'),
        _i6.RouteConfig(GamePageRoute.name, path: '/game'),
        _i6.RouteConfig(TipsPageRoute.name, path: '/tips'),
        _i6.RouteConfig(HighScoresPageRoute.name, path: '/high_scores')
      ];
}

/// generated route for
/// [_i1.EntryPage]
class EntryPageRoute extends _i6.PageRouteInfo<void> {
  const EntryPageRoute() : super(EntryPageRoute.name, path: '/entry');

  static const String name = 'EntryPageRoute';
}

/// generated route for
/// [_i2.MenuPage]
class MenuPageRoute extends _i6.PageRouteInfo<void> {
  const MenuPageRoute() : super(MenuPageRoute.name, path: '/menu');

  static const String name = 'MenuPageRoute';
}

/// generated route for
/// [_i3.GamePage]
class GamePageRoute extends _i6.PageRouteInfo<GamePageRouteArgs> {
  GamePageRoute({_i7.Key? key, required bool isNewGame})
      : super(GamePageRoute.name,
            path: '/game',
            args: GamePageRouteArgs(key: key, isNewGame: isNewGame));

  static const String name = 'GamePageRoute';
}

class GamePageRouteArgs {
  const GamePageRouteArgs({this.key, required this.isNewGame});

  final _i7.Key? key;

  final bool isNewGame;

  @override
  String toString() {
    return 'GamePageRouteArgs{key: $key, isNewGame: $isNewGame}';
  }
}

/// generated route for
/// [_i4.TipsPage]
class TipsPageRoute extends _i6.PageRouteInfo<void> {
  const TipsPageRoute() : super(TipsPageRoute.name, path: '/tips');

  static const String name = 'TipsPageRoute';
}

/// generated route for
/// [_i5.HighScoresPage]
class HighScoresPageRoute extends _i6.PageRouteInfo<void> {
  const HighScoresPageRoute()
      : super(HighScoresPageRoute.name, path: '/high_scores');

  static const String name = 'HighScoresPageRoute';
}
