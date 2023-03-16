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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../domain/app_viam/model/viam_app_robot.dart' as _i16;
import '../../domain/boat/model/viam_boat.dart' as _i17;
import '../../domain/error/model/viam_error.dart' as _i15;
import '../../domain/resource/model/viam_app_resource_name.dart' as _i18;
import '../page/add_boat/add_boat_page.dart' as _i2;
import '../page/boat_list/boat_list_page.dart' as _i7;
import '../page/camera/camera_page.dart' as _i10;
import '../page/change_boat_name/change_boat_name_page.dart' as _i6;
import '../page/connection_error/connection_error_page.dart' as _i8;
import '../page/dashboard/dashboard_page.dart' as _i9;
import '../page/main/main_page.dart' as _i5;
import '../page/map/map_page.dart' as _i11;
import '../page/organizations/organizations_page.dart' as _i3;
import '../page/scan_qr/scan_qr_page.dart' as _i4;
import '../page/settings/settings_page.dart' as _i12;
import '../page/splash/splash_page.dart' as _i1;

class MainRouter extends _i13.RootStackRouter {
  MainRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(child: const _i1.SplashPage()),
      );
    },
    AddBoatRoute.name: (routeData) {
      final args = routeData.argsAs<AddBoatRouteArgs>();
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i2.AddBoatPage(
          showWelcomeText: args.showWelcomeText,
          error: args.error,
          name: args.name,
          address: args.address,
          secret: args.secret,
          key: args.key,
        )),
        transitionsBuilder: _i13.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrganizationsRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(child: const _i3.OrganizationsPage()),
        transitionsBuilder: _i13.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i4.ScanQrPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i5.MainPage(
          key: args.key,
          robot: args.robot,
        )),
      );
    },
    ChangeBoatNameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeBoatNameRouteArgs>();
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i6.ChangeBoatNamePage(
          key: args.key,
          boats: args.boats,
          currentBoatId: args.currentBoatId,
        )),
        transitionsBuilder: _i13.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BoatListRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.BoatListPage(),
        transitionsBuilder: _i13.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ConnectionErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ConnectionErrorRouteArgs>();
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i8.ConnectionErrorPage(
          key: args.key,
          secret: args.secret,
          robot: args.robot,
        )),
        transitionsBuilder: _i13.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i9.DashboardPage(
          sensors: args.sensors,
          robotName: args.robotName,
          key: args.key,
        )),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.CameraPage(
          cameraSensors: args.cameraSensors,
          key: args.key,
        ),
      );
    },
    MapRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(
            child: _i11.MapPage(
          resourceName: args.resourceName,
          key: args.key,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.SettingsPage(
          key: args.key,
          robot: args.robot,
        ),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i13.RouteConfig(
          AddBoatRoute.name,
          path: '/add-boat-page',
        ),
        _i13.RouteConfig(
          OrganizationsRoute.name,
          path: '/organizations-page',
        ),
        _i13.RouteConfig(
          ScanQrRoute.name,
          path: '/scan-qr-page',
        ),
        _i13.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i13.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-page',
              parent: MainRoute.name,
            ),
            _i13.RouteConfig(
              CameraRoute.name,
              path: 'camera-page',
              parent: MainRoute.name,
            ),
            _i13.RouteConfig(
              MapRoute.name,
              path: 'map-page',
              parent: MainRoute.name,
            ),
            _i13.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i13.RouteConfig(
          ChangeBoatNameRoute.name,
          path: '/change-boat-name-page',
        ),
        _i13.RouteConfig(
          BoatListRoute.name,
          path: '/boat-list-page',
        ),
        _i13.RouteConfig(
          ConnectionErrorRoute.name,
          path: '/connection-error-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AddBoatPage]
class AddBoatRoute extends _i13.PageRouteInfo<AddBoatRouteArgs> {
  AddBoatRoute({
    required bool showWelcomeText,
    _i15.ViamError? error,
    String? name,
    String? address,
    String? secret,
    _i14.Key? key,
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

  final _i15.ViamError? error;

  final String? name;

  final String? address;

  final String? secret;

  final _i14.Key? key;

  @override
  String toString() {
    return 'AddBoatRouteArgs{showWelcomeText: $showWelcomeText, error: $error, name: $name, address: $address, secret: $secret, key: $key}';
  }
}

/// generated route for
/// [_i3.OrganizationsPage]
class OrganizationsRoute extends _i13.PageRouteInfo<void> {
  const OrganizationsRoute()
      : super(
          OrganizationsRoute.name,
          path: '/organizations-page',
        );

  static const String name = 'OrganizationsRoute';
}

/// generated route for
/// [_i4.ScanQrPage]
class ScanQrRoute extends _i13.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    required bool showWelcomeText,
    _i14.Key? key,
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

  final _i14.Key? key;

  @override
  String toString() {
    return 'ScanQrRouteArgs{showWelcomeText: $showWelcomeText, key: $key}';
  }
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i13.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i14.Key? key,
    required _i16.ViamAppRobot robot,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          path: '/main-page',
          args: MainRouteArgs(
            key: key,
            robot: robot,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    required this.robot,
  });

  final _i14.Key? key;

  final _i16.ViamAppRobot robot;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, robot: $robot}';
  }
}

/// generated route for
/// [_i6.ChangeBoatNamePage]
class ChangeBoatNameRoute extends _i13.PageRouteInfo<ChangeBoatNameRouteArgs> {
  ChangeBoatNameRoute({
    _i14.Key? key,
    required List<_i17.ViamBoat> boats,
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

  final _i14.Key? key;

  final List<_i17.ViamBoat> boats;

  final String? currentBoatId;

  @override
  String toString() {
    return 'ChangeBoatNameRouteArgs{key: $key, boats: $boats, currentBoatId: $currentBoatId}';
  }
}

/// generated route for
/// [_i7.BoatListPage]
class BoatListRoute extends _i13.PageRouteInfo<void> {
  const BoatListRoute()
      : super(
          BoatListRoute.name,
          path: '/boat-list-page',
        );

  static const String name = 'BoatListRoute';
}

/// generated route for
/// [_i8.ConnectionErrorPage]
class ConnectionErrorRoute
    extends _i13.PageRouteInfo<ConnectionErrorRouteArgs> {
  ConnectionErrorRoute({
    _i14.Key? key,
    String? secret,
    required _i16.ViamAppRobot robot,
  }) : super(
          ConnectionErrorRoute.name,
          path: '/connection-error-page',
          args: ConnectionErrorRouteArgs(
            key: key,
            secret: secret,
            robot: robot,
          ),
        );

  static const String name = 'ConnectionErrorRoute';
}

class ConnectionErrorRouteArgs {
  const ConnectionErrorRouteArgs({
    this.key,
    this.secret,
    required this.robot,
  });

  final _i14.Key? key;

  final String? secret;

  final _i16.ViamAppRobot robot;

  @override
  String toString() {
    return 'ConnectionErrorRouteArgs{key: $key, secret: $secret, robot: $robot}';
  }
}

/// generated route for
/// [_i9.DashboardPage]
class DashboardRoute extends _i13.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    required List<_i18.ViamAppResourceName> sensors,
    required String robotName,
    _i14.Key? key,
  }) : super(
          DashboardRoute.name,
          path: 'dashboard-page',
          args: DashboardRouteArgs(
            sensors: sensors,
            robotName: robotName,
            key: key,
          ),
        );

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({
    required this.sensors,
    required this.robotName,
    this.key,
  });

  final List<_i18.ViamAppResourceName> sensors;

  final String robotName;

  final _i14.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{sensors: $sensors, robotName: $robotName, key: $key}';
  }
}

/// generated route for
/// [_i10.CameraPage]
class CameraRoute extends _i13.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    required List<_i18.ViamAppResourceName> cameraSensors,
    _i14.Key? key,
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

  final List<_i18.ViamAppResourceName> cameraSensors;

  final _i14.Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{cameraSensors: $cameraSensors, key: $key}';
  }
}

/// generated route for
/// [_i11.MapPage]
class MapRoute extends _i13.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i18.ViamAppResourceName? resourceName,
    _i14.Key? key,
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

  final _i18.ViamAppResourceName? resourceName;

  final _i14.Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{resourceName: $resourceName, key: $key}';
  }
}

/// generated route for
/// [_i12.SettingsPage]
class SettingsRoute extends _i13.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i14.Key? key,
    required _i16.ViamAppRobot robot,
  }) : super(
          SettingsRoute.name,
          path: 'settings-page',
          args: SettingsRouteArgs(
            key: key,
            robot: robot,
          ),
        );

  static const String name = 'SettingsRoute';
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.robot,
  });

  final _i14.Key? key;

  final _i16.ViamAppRobot robot;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, robot: $robot}';
  }
}
