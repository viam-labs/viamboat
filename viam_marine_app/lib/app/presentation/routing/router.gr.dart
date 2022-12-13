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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../page/add_boat/add_boat_page.dart' as _i3;
import '../page/dashboard/dashboard_page.dart' as _i2;
import '../page/splash/splash_page.dart' as _i1;

class MainRouter extends _i4.RootStackRouter {
  MainRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i1.SplashPage()),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i2.DashboardPage()),
      );
    },
    AddBoatRoute.name: (routeData) {
      final args = routeData.argsAs<AddBoatRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(
            child: _i3.AddBoatPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
        ),
        _i4.RouteConfig(
          AddBoatRoute.name,
          path: '/add-boat-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.AddBoatPage]
class AddBoatRoute extends _i4.PageRouteInfo<AddBoatRouteArgs> {
  AddBoatRoute({
    required bool showWelcomeText,
    _i5.Key? key,
  }) : super(
          AddBoatRoute.name,
          path: '/add-boat-page',
          args: AddBoatRouteArgs(
            showWelcomeText: showWelcomeText,
            key: key,
          ),
        );

  static const String name = 'AddBoatRoute';
}

class AddBoatRouteArgs {
  const AddBoatRouteArgs({
    required this.showWelcomeText,
    this.key,
  });

  final bool showWelcomeText;

  final _i5.Key? key;

  @override
  String toString() {
    return 'AddBoatRouteArgs{showWelcomeText: $showWelcomeText, key: $key}';
  }
}
