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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../domain/boat/model/viam_boat.dart' as _i13;
import '../../domain/error/model/viam_error.dart' as _i12;
import '../../domain/resource/model/viam_app_resource_name.dart' as _i14;
import '../page/add_boat/add_boat_page.dart' as _i2;
import '../page/camera/camera_page.dart' as _i7;
import '../page/change_boat_name/change_boat_name.dart' as _i5;
import '../page/dashboard/dashboard_page.dart' as _i6;
import '../page/main/main_page.dart' as _i4;
import '../page/map/map_page.dart' as _i8;
import '../page/scan_qr/scan_qr_page.dart' as _i3;
import '../page/settings/settings_page.dart' as _i9;
import '../page/splash/splash_page.dart' as _i1;

class MainRouter extends _i10.RootStackRouter {
  MainRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i1.SplashPage()),
      );
    },
    AddBoatRoute.name: (routeData) {
      final args = routeData.argsAs<AddBoatRouteArgs>();
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(
            child: _i2.AddBoatPage(
          showWelcomeText: args.showWelcomeText,
          error: args.error,
          name: args.name,
          address: args.address,
          secret: args.secret,
          key: args.key,
        )),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(
            child: _i3.ScanQrPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
    MainRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i4.MainPage()),
      );
    },
    ChangeBoatNameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeBoatNameRouteArgs>();
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(
            child: _i5.ChangeBoatNamePage(
          key: args.key,
          boats: args.boats,
          currentBoatId: args.currentBoatId,
        )),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(
            child: _i6.DashboardPage(
          sensors: args.sensors,
          key: args.key,
        )),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.CameraPage(
          cameraSensors: args.cameraSensors,
          key: args.key,
        ),
      );
    },
    MapRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(
            child: _i8.MapPage(
          resourceName: args.resourceName,
          key: args.key,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          AddBoatRoute.name,
          path: '/add-boat-page',
        ),
        _i10.RouteConfig(
          ScanQrRoute.name,
          path: '/scan-qr-page',
        ),
        _i10.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i10.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-page',
              parent: MainRoute.name,
            ),
            _i10.RouteConfig(
              CameraRoute.name,
              path: 'camera-page',
              parent: MainRoute.name,
            ),
            _i10.RouteConfig(
              MapRoute.name,
              path: 'map-page',
              parent: MainRoute.name,
            ),
            _i10.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i10.RouteConfig(
          ChangeBoatNameRoute.name,
          path: '/change-boat-name-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AddBoatPage]
class AddBoatRoute extends _i10.PageRouteInfo<AddBoatRouteArgs> {
  AddBoatRoute({
    required bool showWelcomeText,
    _i12.ViamError? error,
    String? name,
    String? address,
    String? secret,
    _i11.Key? key,
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

  final _i12.ViamError? error;

  final String? name;

  final String? address;

  final String? secret;

  final _i11.Key? key;

  @override
  String toString() {
    return 'AddBoatRouteArgs{showWelcomeText: $showWelcomeText, error: $error, name: $name, address: $address, secret: $secret, key: $key}';
  }
}

/// generated route for
/// [_i3.ScanQrPage]
class ScanQrRoute extends _i10.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    required bool showWelcomeText,
    _i11.Key? key,
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

  final _i11.Key? key;

  @override
  String toString() {
    return 'ScanQrRouteArgs{showWelcomeText: $showWelcomeText, key: $key}';
  }
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-page',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i5.ChangeBoatNamePage]
class ChangeBoatNameRoute extends _i10.PageRouteInfo<ChangeBoatNameRouteArgs> {
  ChangeBoatNameRoute({
    _i11.Key? key,
    required List<_i13.ViamBoat> boats,
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

  final _i11.Key? key;

  final List<_i13.ViamBoat> boats;

  final String? currentBoatId;

  @override
  String toString() {
    return 'ChangeBoatNameRouteArgs{key: $key, boats: $boats, currentBoatId: $currentBoatId}';
  }
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i10.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    required List<_i14.ViamAppResourceName> sensors,
    _i11.Key? key,
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

  final List<_i14.ViamAppResourceName> sensors;

  final _i11.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{sensors: $sensors, key: $key}';
  }
}

/// generated route for
/// [_i7.CameraPage]
class CameraRoute extends _i10.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    required List<_i14.ViamAppResourceName> cameraSensors,
    _i11.Key? key,
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

  final List<_i14.ViamAppResourceName> cameraSensors;

  final _i11.Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{cameraSensors: $cameraSensors, key: $key}';
  }
}

/// generated route for
/// [_i8.MapPage]
class MapRoute extends _i10.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i14.ViamAppResourceName resourceName,
    _i11.Key? key,
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

  final _i14.ViamAppResourceName resourceName;

  final _i11.Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{resourceName: $resourceName, key: $key}';
  }
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}
