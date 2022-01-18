// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:tetris/presentation/pages/entry/entry_page.dart' as _i1;
import 'package:tetris/presentation/pages/menu/menu_page.dart' as _i2;

class MainRouter extends _i3.RootStackRouter {
  MainRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EntryPageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.EntryPage());
    },
    MenuPageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.MenuPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/entry', fullMatch: true),
        _i3.RouteConfig(EntryPageRoute.name, path: '/entry'),
        _i3.RouteConfig(MenuPageRoute.name, path: '/menu')
      ];
}

/// generated route for
/// [_i1.EntryPage]
class EntryPageRoute extends _i3.PageRouteInfo<void> {
  const EntryPageRoute() : super(EntryPageRoute.name, path: '/entry');

  static const String name = 'EntryPageRoute';
}

/// generated route for
/// [_i2.MenuPage]
class MenuPageRoute extends _i3.PageRouteInfo<void> {
  const MenuPageRoute() : super(MenuPageRoute.name, path: '/menu');

  static const String name = 'MenuPageRoute';
}
