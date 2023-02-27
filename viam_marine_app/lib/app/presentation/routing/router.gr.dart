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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../domain/boat/model/viam_boat.dart' as _i14;
import '../../domain/error/model/viam_error.dart' as _i13;
import '../../domain/resource/model/viam_app_resource_name.dart' as _i15;
import '../page/add_boat/add_boat_page.dart' as _i2;
import '../page/boat_list/boat_list_page.dart' as _i6;
import '../page/camera/camera_page.dart' as _i8;
import '../page/change_boat_name/change_boat_name_page.dart' as _i5;
import '../page/dashboard/dashboard_page.dart' as _i7;
import '../page/main/main_page.dart' as _i4;
import '../page/map/map_page.dart' as _i9;
import '../page/scan_qr/scan_qr_page.dart' as _i3;
import '../page/settings/settings_page.dart' as _i10;
import '../page/splash/splash_page.dart' as _i1;

class MainRouter extends _i11.RootStackRouter {
  MainRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i1.SplashPage()),
      );
    },
    AddBoatRoute.name: (routeData) {
      final args = routeData.argsAs<AddBoatRouteArgs>();
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i2.AddBoatPage(
          showWelcomeText: args.showWelcomeText,
          error: args.error,
          name: args.name,
          address: args.address,
          secret: args.secret,
          key: args.key,
        )),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i3.ScanQrPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i4.MainPage()),
      );
    },
    ChangeBoatNameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeBoatNameRouteArgs>();
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i5.ChangeBoatNamePage(
          key: args.key,
          boats: args.boats,
          currentBoatId: args.currentBoatId,
        )),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BoatListRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.BoatListPage(),
        transitionsBuilder: _i11.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i7.DashboardPage(
          sensors: args.sensors,
          key: args.key,
        )),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.CameraPage(
          cameraSensors: args.cameraSensors,
          key: args.key,
        ),
      );
    },
    MapRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i9.MapPage(
          resourceName: args.resourceName,
          key: args.key,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsPage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          AddBoatRoute.name,
          path: '/add-boat-page',
        ),
        _i11.RouteConfig(
          ScanQrRoute.name,
          path: '/scan-qr-page',
        ),
        _i11.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i11.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-page',
              parent: MainRoute.name,
            ),
            _i11.RouteConfig(
              CameraRoute.name,
              path: 'camera-page',
              parent: MainRoute.name,
            ),
            _i11.RouteConfig(
              MapRoute.name,
              path: 'map-page',
              parent: MainRoute.name,
            ),
            _i11.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          ChangeBoatNameRoute.name,
          path: '/change-boat-name-page',
        ),
        _i11.RouteConfig(
          BoatListRoute.name,
          path: '/boat-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AddBoatPage]
class AddBoatRoute extends _i11.PageRouteInfo<AddBoatRouteArgs> {
  AddBoatRoute({
    required bool showWelcomeText,
    _i13.ViamError? error,
    String? name,
    String? address,
    String? secret,
    _i12.Key? key,
  }) : super(
          AddBoatRoute.name,
          path: '/add-boat-page',
          args: AddBoatRouteArgs(
            showWelcomeText: showWelcomeText,
            error: error,
            name: name,
            address: address,
            secret: secret,
            key: key,
          ),
        );

  static const String name = 'AddBoatRoute';
}

class AddBoatRouteArgs {
  const AddBoatRouteArgs({
    required this.showWelcomeText,
    this.error,
    this.name,
    this.address,
    this.secret,
    this.key,
  });

  final bool showWelcomeText;

  final _i13.ViamError? error;

  final String? name;

  final String? address;

  final String? secret;

  final _i12.Key? key;

  @override
  String toString() {
    return 'AddBoatRouteArgs{showWelcomeText: $showWelcomeText, error: $error, name: $name, address: $address, secret: $secret, key: $key}';
  }
}

/// generated route for
/// [_i3.ScanQrPage]
class ScanQrRoute extends _i11.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    required bool showWelcomeText,
    _i12.Key? key,
  }) : super(
          ScanQrRoute.name,
          path: '/scan-qr-page',
          args: ScanQrRouteArgs(
            showWelcomeText: showWelcomeText,
            key: key,
          ),
        );

  static const String name = 'ScanQrRoute';
}

class ScanQrRouteArgs {
  const ScanQrRouteArgs({
    required this.showWelcomeText,
    this.key,
  });

  final bool showWelcomeText;

  final _i12.Key? key;

  @override
  String toString() {
    return 'ScanQrRouteArgs{showWelcomeText: $showWelcomeText, key: $key}';
  }
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i5.ChangeBoatNamePage]
class ChangeBoatNameRoute extends _i11.PageRouteInfo<ChangeBoatNameRouteArgs> {
  ChangeBoatNameRoute({
    _i12.Key? key,
    required List<_i14.ViamBoat> boats,
    required String? currentBoatId,
  }) : super(
          ChangeBoatNameRoute.name,
          path: '/change-boat-name-page',
          args: ChangeBoatNameRouteArgs(
            key: key,
            boats: boats,
            currentBoatId: currentBoatId,
          ),
        );

  static const String name = 'ChangeBoatNameRoute';
}

class ChangeBoatNameRouteArgs {
  const ChangeBoatNameRouteArgs({
    this.key,
    required this.boats,
    required this.currentBoatId,
  });

  final _i12.Key? key;

  final List<_i14.ViamBoat> boats;

  final String? currentBoatId;

  @override
  String toString() {
    return 'ChangeBoatNameRouteArgs{key: $key, boats: $boats, currentBoatId: $currentBoatId}';
  }
}

/// generated route for
/// [_i6.BoatListPage]
class BoatListRoute extends _i11.PageRouteInfo<void> {
  const BoatListRoute()
      : super(
          BoatListRoute.name,
          path: '/boat-list-page',
        );

  static const String name = 'BoatListRoute';
}

/// generated route for
/// [_i7.DashboardPage]
class DashboardRoute extends _i11.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    required List<_i15.ViamAppResourceName> sensors,
    _i12.Key? key,
  }) : super(
          DashboardRoute.name,
          path: 'dashboard-page',
          args: DashboardRouteArgs(
            sensors: sensors,
            key: key,
          ),
        );

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({
    required this.sensors,
    this.key,
  });

  final List<_i15.ViamAppResourceName> sensors;

  final _i12.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{sensors: $sensors, key: $key}';
  }
}

/// generated route for
/// [_i8.CameraPage]
class CameraRoute extends _i11.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    required List<_i15.ViamAppResourceName> cameraSensors,
    _i12.Key? key,
  }) : super(
          CameraRoute.name,
          path: 'camera-page',
          args: CameraRouteArgs(
            cameraSensors: cameraSensors,
            key: key,
          ),
        );

  static const String name = 'CameraRoute';
}

class CameraRouteArgs {
  const CameraRouteArgs({
    required this.cameraSensors,
    this.key,
  });

  final List<_i15.ViamAppResourceName> cameraSensors;

  final _i12.Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{cameraSensors: $cameraSensors, key: $key}';
  }
}

/// generated route for
/// [_i9.MapPage]
class MapRoute extends _i11.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i15.ViamAppResourceName? resourceName,
    _i12.Key? key,
  }) : super(
          MapRoute.name,
          path: 'map-page',
          args: MapRouteArgs(
            resourceName: resourceName,
            key: key,
          ),
        );

  static const String name = 'MapRoute';
}

class MapRouteArgs {
  const MapRouteArgs({
    required this.resourceName,
    this.key,
  });

  final _i15.ViamAppResourceName? resourceName;

  final _i12.Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{resourceName: $resourceName, key: $key}';
  }
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}
