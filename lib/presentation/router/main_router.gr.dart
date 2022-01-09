// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:tetris/presentation/pages/entry/entry_page.dart' as _i1;

class MainRouter extends _i2.RootStackRouter {
  MainRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    EntryPageRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.EntryPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '/entry', fullMatch: true),
        _i2.RouteConfig(EntryPageRoute.name, path: '/entry')
      ];
}

/// generated route for
/// [_i1.EntryPage]
class EntryPageRoute extends _i2.PageRouteInfo<void> {
  const EntryPageRoute() : super(EntryPageRoute.name, path: '/entry');

  static const String name = 'EntryPageRoute';
}
