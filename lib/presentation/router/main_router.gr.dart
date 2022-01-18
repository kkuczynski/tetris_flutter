// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:tetris/presentation/pages/entry/entry_page.dart' as _i1;
import 'package:tetris/presentation/pages/game/game_page.dart' as _i3;
import 'package:tetris/presentation/pages/menu/menu_page.dart' as _i2;

class MainRouter extends _i4.RootStackRouter {
  MainRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    EntryPageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.EntryPage());
    },
    MenuPageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.MenuPage());
    },
    GamePageRoute.name: (routeData) {
      final args = routeData.argsAs<GamePageRouteArgs>();
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.GamePage(key: args.key, isNewGame: args.isNewGame));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/entry', fullMatch: true),
        _i4.RouteConfig(EntryPageRoute.name, path: '/entry'),
        _i4.RouteConfig(MenuPageRoute.name, path: '/menu'),
        _i4.RouteConfig(GamePageRoute.name, path: '/game')
      ];
}

/// generated route for
/// [_i1.EntryPage]
class EntryPageRoute extends _i4.PageRouteInfo<void> {
  const EntryPageRoute() : super(EntryPageRoute.name, path: '/entry');

  static const String name = 'EntryPageRoute';
}

/// generated route for
/// [_i2.MenuPage]
class MenuPageRoute extends _i4.PageRouteInfo<void> {
  const MenuPageRoute() : super(MenuPageRoute.name, path: '/menu');

  static const String name = 'MenuPageRoute';
}

/// generated route for
/// [_i3.GamePage]
class GamePageRoute extends _i4.PageRouteInfo<GamePageRouteArgs> {
  GamePageRoute({_i5.Key? key, required bool isNewGame})
      : super(GamePageRoute.name,
            path: '/game',
            args: GamePageRouteArgs(key: key, isNewGame: isNewGame));

  static const String name = 'GamePageRoute';
}

class GamePageRouteArgs {
  const GamePageRouteArgs({this.key, required this.isNewGame});

  final _i5.Key? key;

  final bool isNewGame;

  @override
  String toString() {
    return 'GamePageRouteArgs{key: $key, isNewGame: $isNewGame}';
  }
}
