// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../page/initial_page/initial_page.dart' as _i1;

class MainRouter extends _i2.RootStackRouter {
  MainRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.WrappedRoute(child: const _i1.InitialPage()),
      );
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          InitialRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [_i1.InitialPage]
class InitialRoute extends _i2.PageRouteInfo<void> {
  const InitialRoute()
      : super(
          InitialRoute.name,
          path: '/',
        );

  static const String name = 'InitialRoute';
}
