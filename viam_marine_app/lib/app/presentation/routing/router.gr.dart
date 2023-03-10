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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../domain/boat/model/viam_boat.dart' as _i15;
import '../../domain/error/model/viam_error.dart' as _i14;
import '../../domain/resource/model/viam_app_resource_name.dart' as _i16;
import '../page/add_boat/add_boat_page.dart' as _i2;
import '../page/boat_list/boat_list_page.dart' as _i7;
import '../page/camera/camera_page.dart' as _i9;
import '../page/change_boat_name/change_boat_name_page.dart' as _i6;
import '../page/dashboard/dashboard_page.dart' as _i8;
import '../page/main/main_page.dart' as _i5;
import '../page/map/map_page.dart' as _i10;
import '../page/organizations/organizations_page.dart' as _i3;
import '../page/scan_qr/scan_qr_page.dart' as _i4;
import '../page/settings/settings_page.dart' as _i11;
import '../page/splash/splash_page.dart' as _i1;

class MainRouter extends _i12.RootStackRouter {
  MainRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i1.SplashPage()),
      );
    },
    AddBoatRoute.name: (routeData) {
      final args = routeData.argsAs<AddBoatRouteArgs>();
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i2.AddBoatPage(
          showWelcomeText: args.showWelcomeText,
          error: args.error,
          name: args.name,
          address: args.address,
          secret: args.secret,
          key: args.key,
        )),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrganizationsRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(child: const _i3.OrganizationsPage()),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i4.ScanQrPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i5.MainPage(
          key: args.key,
          robotName: args.robotName,
        )),
      );
    },
    ChangeBoatNameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeBoatNameRouteArgs>();
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i6.ChangeBoatNamePage(
          key: args.key,
          boats: args.boats,
          currentBoatId: args.currentBoatId,
        )),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BoatListRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.BoatListPage(),
        transitionsBuilder: _i12.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i8.DashboardPage(
          sensors: args.sensors,
          robotName: args.robotName,
          key: args.key,
        )),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.CameraPage(
          cameraSensors: args.cameraSensors,
          key: args.key,
        ),
      );
    },
    MapRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.WrappedRoute(
            child: _i10.MapPage(
          resourceName: args.resourceName,
          key: args.key,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SettingsPage(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          AddBoatRoute.name,
          path: '/add-boat-page',
        ),
        _i12.RouteConfig(
          OrganizationsRoute.name,
          path: '/organizations-page',
        ),
        _i12.RouteConfig(
          ScanQrRoute.name,
          path: '/scan-qr-page',
        ),
        _i12.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i12.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-page',
              parent: MainRoute.name,
            ),
            _i12.RouteConfig(
              CameraRoute.name,
              path: 'camera-page',
              parent: MainRoute.name,
            ),
            _i12.RouteConfig(
              MapRoute.name,
              path: 'map-page',
              parent: MainRoute.name,
            ),
            _i12.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i12.RouteConfig(
          ChangeBoatNameRoute.name,
          path: '/change-boat-name-page',
        ),
        _i12.RouteConfig(
          BoatListRoute.name,
          path: '/boat-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AddBoatPage]
class AddBoatRoute extends _i12.PageRouteInfo<AddBoatRouteArgs> {
  AddBoatRoute({
    required bool showWelcomeText,
    _i14.ViamError? error,
    String? name,
    String? address,
    String? secret,
    _i13.Key? key,
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

  final _i14.ViamError? error;

  final String? name;

  final String? address;

  final String? secret;

  final _i13.Key? key;

  @override
  String toString() {
    return 'AddBoatRouteArgs{showWelcomeText: $showWelcomeText, error: $error, name: $name, address: $address, secret: $secret, key: $key}';
  }
}

/// generated route for
/// [_i3.OrganizationsPage]
class OrganizationsRoute extends _i12.PageRouteInfo<void> {
  const OrganizationsRoute()
      : super(
          OrganizationsRoute.name,
          path: '/organizations-page',
        );

  static const String name = 'OrganizationsRoute';
}

/// generated route for
/// [_i4.ScanQrPage]
class ScanQrRoute extends _i12.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    required bool showWelcomeText,
    _i13.Key? key,
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

  final _i13.Key? key;

  @override
  String toString() {
    return 'ScanQrRouteArgs{showWelcomeText: $showWelcomeText, key: $key}';
  }
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i12.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i13.Key? key,
    required String robotName,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          path: '/main-page',
          args: MainRouteArgs(
            key: key,
            robotName: robotName,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    required this.robotName,
  });

  final _i13.Key? key;

  final String robotName;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, robotName: $robotName}';
  }
}

/// generated route for
/// [_i6.ChangeBoatNamePage]
class ChangeBoatNameRoute extends _i12.PageRouteInfo<ChangeBoatNameRouteArgs> {
  ChangeBoatNameRoute({
    _i13.Key? key,
    required List<_i15.ViamBoat> boats,
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

  final _i13.Key? key;

  final List<_i15.ViamBoat> boats;

  final String? currentBoatId;

  @override
  String toString() {
    return 'ChangeBoatNameRouteArgs{key: $key, boats: $boats, currentBoatId: $currentBoatId}';
  }
}

/// generated route for
/// [_i7.BoatListPage]
class BoatListRoute extends _i12.PageRouteInfo<void> {
  const BoatListRoute()
      : super(
          BoatListRoute.name,
          path: '/boat-list-page',
        );

  static const String name = 'BoatListRoute';
}

/// generated route for
/// [_i8.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    required List<_i16.ViamAppResourceName> sensors,
    required String robotName,
    _i13.Key? key,
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

  final List<_i16.ViamAppResourceName> sensors;

  final String robotName;

  final _i13.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{sensors: $sensors, robotName: $robotName, key: $key}';
  }
}

/// generated route for
/// [_i9.CameraPage]
class CameraRoute extends _i12.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    required List<_i16.ViamAppResourceName> cameraSensors,
    _i13.Key? key,
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

  final List<_i16.ViamAppResourceName> cameraSensors;

  final _i13.Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{cameraSensors: $cameraSensors, key: $key}';
  }
}

/// generated route for
/// [_i10.MapPage]
class MapRoute extends _i12.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i16.ViamAppResourceName? resourceName,
    _i13.Key? key,
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

  final _i16.ViamAppResourceName? resourceName;

  final _i13.Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{resourceName: $resourceName, key: $key}';
  }
}

/// generated route for
/// [_i11.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}
