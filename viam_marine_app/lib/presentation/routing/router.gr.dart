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
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;

import '../../domain/app_viam/model/robot_config.dart' as _i23;
import '../../domain/app_viam/model/viam_app_robot.dart' as _i25;
import '../../domain/boat/model/viam_boat.dart' as _i24;
import '../../domain/data_viam/model/filter_type.dart' as _i26;
import '../../domain/error/model/viam_error.dart' as _i22;
import '../../domain/resource/model/viam_app_resource_name.dart' as _i27;
import '../page/add_boat/add_boat_page.dart' as _i2;
import '../page/analytics/analytics_page.dart' as _i19;
import '../page/boat_list/boat_list_page.dart' as _i6;
import '../page/camera/camera_page.dart' as _i16;
import '../page/change_boat_name/change_boat_name_page.dart' as _i5;
import '../page/connection_error/connection_error_page.dart' as _i7;
import '../page/dashboard/dashboard_page.dart' as _i15;
import '../page/depth_over_time/depth_over_time_page.dart' as _i12;
import '../page/filters/filters_page.dart' as _i11;
import '../page/fuel_consumption_over_time/fuel_consumption_over_time_page.dart'
    as _i14;
import '../page/fuel_consumption_per_mile/fuel_consumption_per_mile_page.dart'
    as _i13;
import '../page/main/main_page.dart' as _i4;
import '../page/map/map_page.dart' as _i17;
import '../page/scan_qr/scan_qr_page.dart' as _i3;
import '../page/select_robot/select_robot_page.dart' as _i10;
import '../page/settings/settings_page.dart' as _i18;
import '../page/splash/splash_page.dart' as _i1;
import '../page/water_depth/water_depth_page.dart' as _i9;
import '../page/water_temperature/water_temperature_page.dart' as _i8;

class MainRouter extends _i20.RootStackRouter {
  MainRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i1.SplashPage()),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddBoatRoute.name: (routeData) {
      final args = routeData.argsAs<AddBoatRouteArgs>();
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i2.AddBoatPage(
          showWelcomeText: args.showWelcomeText,
          error: args.error,
          name: args.name,
          address: args.address,
          secret: args.secret,
          key: args.key,
        )),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i3.ScanQrPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i4.MainPage(
          key: args.key,
          robotConfig: args.robotConfig,
        )),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChangeBoatNameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeBoatNameRouteArgs>();
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i5.ChangeBoatNamePage(
          key: args.key,
          boats: args.boats,
          currentBoatId: args.currentBoatId,
        )),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BoatListRoute.name: (routeData) {
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.BoatListPage(),
        transitionsBuilder: _i20.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ConnectionErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ConnectionErrorRouteArgs>();
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i7.ConnectionErrorPage(
          key: args.key,
          secret: args.secret,
          robot: args.robot,
        )),
        transitionsBuilder: _i20.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WaterTemperatureRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.WaterTemperaturePage(),
      );
    },
    WaterDepthRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.WaterDepthPage(),
      );
    },
    SelectRobotRoute.name: (routeData) {
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i10.SelectRobotPage()),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FiltersRoute.name: (routeData) {
      final args = routeData.argsAs<FiltersRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.FiltersPage(
          type: args.type,
          key: args.key,
        ),
      );
    },
    DepthOverTimeRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i12.DepthOverTimePage()),
      );
    },
    FuelConsumptionPerMileRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child:
            _i20.WrappedRoute(child: const _i13.FuelConsumptionPerMilePage()),
      );
    },
    FuelConsumptionOverTimeRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child:
            _i20.WrappedRoute(child: const _i14.FuelConsumptionOverTimePage()),
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i15.DashboardPage(
          sensors: args.sensors,
          robotConfig: args.robotConfig,
          key: args.key,
        )),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i16.CameraPage(
          cameraSensors: args.cameraSensors,
          key: args.key,
        ),
      );
    },
    MapRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i17.MapPage(
          resourceName: args.resourceName,
          key: args.key,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.SettingsPage(
          key: args.key,
          robotConfig: args.robotConfig,
        ),
      );
    },
    AnalyticsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.AnalyticsPage(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i20.RouteConfig(
          AddBoatRoute.name,
          path: '/add-boat-page',
        ),
        _i20.RouteConfig(
          ScanQrRoute.name,
          path: '/scan-qr-page',
        ),
        _i20.RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            _i20.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-page',
              parent: MainRoute.name,
            ),
            _i20.RouteConfig(
              CameraRoute.name,
              path: 'camera-page',
              parent: MainRoute.name,
            ),
            _i20.RouteConfig(
              MapRoute.name,
              path: 'map-page',
              parent: MainRoute.name,
            ),
            _i20.RouteConfig(
              SettingsRoute.name,
              path: 'settings-page',
              parent: MainRoute.name,
            ),
            _i20.RouteConfig(
              AnalyticsRoute.name,
              path: 'analytics-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i20.RouteConfig(
          ChangeBoatNameRoute.name,
          path: '/change-boat-name-page',
        ),
        _i20.RouteConfig(
          BoatListRoute.name,
          path: '/boat-list-page',
        ),
        _i20.RouteConfig(
          ConnectionErrorRoute.name,
          path: '/connection-error-page',
        ),
        _i20.RouteConfig(
          WaterTemperatureRoute.name,
          path: '/water-temperature-page',
        ),
        _i20.RouteConfig(
          WaterDepthRoute.name,
          path: '/water-depth-page',
        ),
        _i20.RouteConfig(
          SelectRobotRoute.name,
          path: '/select-robot-page',
        ),
        _i20.RouteConfig(
          FiltersRoute.name,
          path: '/filters-page',
        ),
        _i20.RouteConfig(
          DepthOverTimeRoute.name,
          path: '/depth-over-time-page',
        ),
        _i20.RouteConfig(
          FuelConsumptionPerMileRoute.name,
          path: '/fuel-consumption-per-mile-page',
        ),
        _i20.RouteConfig(
          FuelConsumptionOverTimeRoute.name,
          path: '/fuel-consumption-over-time-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AddBoatPage]
class AddBoatRoute extends _i20.PageRouteInfo<AddBoatRouteArgs> {
  AddBoatRoute({
    required bool showWelcomeText,
    _i22.ViamError? error,
    String? name,
    String? address,
    String? secret,
    _i21.Key? key,
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

  final _i22.ViamError? error;

  final String? name;

  final String? address;

  final String? secret;

  final _i21.Key? key;

  @override
  String toString() {
    return 'AddBoatRouteArgs{showWelcomeText: $showWelcomeText, error: $error, name: $name, address: $address, secret: $secret, key: $key}';
  }
}

/// generated route for
/// [_i3.ScanQrPage]
class ScanQrRoute extends _i20.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    required bool showWelcomeText,
    _i21.Key? key,
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

  final _i21.Key? key;

  @override
  String toString() {
    return 'ScanQrRouteArgs{showWelcomeText: $showWelcomeText, key: $key}';
  }
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i20.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i21.Key? key,
    required _i23.RobotConfig robotConfig,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          path: '/main-page',
          args: MainRouteArgs(
            key: key,
            robotConfig: robotConfig,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    required this.robotConfig,
  });

  final _i21.Key? key;

  final _i23.RobotConfig robotConfig;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, robotConfig: $robotConfig}';
  }
}

/// generated route for
/// [_i5.ChangeBoatNamePage]
class ChangeBoatNameRoute extends _i20.PageRouteInfo<ChangeBoatNameRouteArgs> {
  ChangeBoatNameRoute({
    _i21.Key? key,
    required List<_i24.ViamBoat> boats,
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

  final _i21.Key? key;

  final List<_i24.ViamBoat> boats;

  final String? currentBoatId;

  @override
  String toString() {
    return 'ChangeBoatNameRouteArgs{key: $key, boats: $boats, currentBoatId: $currentBoatId}';
  }
}

/// generated route for
/// [_i6.BoatListPage]
class BoatListRoute extends _i20.PageRouteInfo<void> {
  const BoatListRoute()
      : super(
          BoatListRoute.name,
          path: '/boat-list-page',
        );

  static const String name = 'BoatListRoute';
}

/// generated route for
/// [_i7.ConnectionErrorPage]
class ConnectionErrorRoute
    extends _i20.PageRouteInfo<ConnectionErrorRouteArgs> {
  ConnectionErrorRoute({
    _i21.Key? key,
    String? secret,
    required _i25.ViamAppRobot robot,
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

  final _i21.Key? key;

  final String? secret;

  final _i25.ViamAppRobot robot;

  @override
  String toString() {
    return 'ConnectionErrorRouteArgs{key: $key, secret: $secret, robot: $robot}';
  }
}

/// generated route for
/// [_i8.WaterTemperaturePage]
class WaterTemperatureRoute extends _i20.PageRouteInfo<void> {
  const WaterTemperatureRoute()
      : super(
          WaterTemperatureRoute.name,
          path: '/water-temperature-page',
        );

  static const String name = 'WaterTemperatureRoute';
}

/// generated route for
/// [_i9.WaterDepthPage]
class WaterDepthRoute extends _i20.PageRouteInfo<void> {
  const WaterDepthRoute()
      : super(
          WaterDepthRoute.name,
          path: '/water-depth-page',
        );

  static const String name = 'WaterDepthRoute';
}

/// generated route for
/// [_i10.SelectRobotPage]
class SelectRobotRoute extends _i20.PageRouteInfo<void> {
  const SelectRobotRoute()
      : super(
          SelectRobotRoute.name,
          path: '/select-robot-page',
        );

  static const String name = 'SelectRobotRoute';
}

/// generated route for
/// [_i11.FiltersPage]
class FiltersRoute extends _i20.PageRouteInfo<FiltersRouteArgs> {
  FiltersRoute({
    required _i26.FiltersType type,
    _i21.Key? key,
  }) : super(
          FiltersRoute.name,
          path: '/filters-page',
          args: FiltersRouteArgs(
            type: type,
            key: key,
          ),
        );

  static const String name = 'FiltersRoute';
}

class FiltersRouteArgs {
  const FiltersRouteArgs({
    required this.type,
    this.key,
  });

  final _i26.FiltersType type;

  final _i21.Key? key;

  @override
  String toString() {
    return 'FiltersRouteArgs{type: $type, key: $key}';
  }
}

/// generated route for
/// [_i12.DepthOverTimePage]
class DepthOverTimeRoute extends _i20.PageRouteInfo<void> {
  const DepthOverTimeRoute()
      : super(
          DepthOverTimeRoute.name,
          path: '/depth-over-time-page',
        );

  static const String name = 'DepthOverTimeRoute';
}

/// generated route for
/// [_i13.FuelConsumptionPerMilePage]
class FuelConsumptionPerMileRoute extends _i20.PageRouteInfo<void> {
  const FuelConsumptionPerMileRoute()
      : super(
          FuelConsumptionPerMileRoute.name,
          path: '/fuel-consumption-per-mile-page',
        );

  static const String name = 'FuelConsumptionPerMileRoute';
}

/// generated route for
/// [_i14.FuelConsumptionOverTimePage]
class FuelConsumptionOverTimeRoute extends _i20.PageRouteInfo<void> {
  const FuelConsumptionOverTimeRoute()
      : super(
          FuelConsumptionOverTimeRoute.name,
          path: '/fuel-consumption-over-time-page',
        );

  static const String name = 'FuelConsumptionOverTimeRoute';
}

/// generated route for
/// [_i15.DashboardPage]
class DashboardRoute extends _i20.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    required List<_i27.ViamAppResourceName> sensors,
    required _i23.RobotConfig robotConfig,
    _i21.Key? key,
  }) : super(
          DashboardRoute.name,
          path: 'dashboard-page',
          args: DashboardRouteArgs(
            sensors: sensors,
            robotConfig: robotConfig,
            key: key,
          ),
        );

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({
    required this.sensors,
    required this.robotConfig,
    this.key,
  });

  final List<_i27.ViamAppResourceName> sensors;

  final _i23.RobotConfig robotConfig;

  final _i21.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{sensors: $sensors, robotConfig: $robotConfig, key: $key}';
  }
}

/// generated route for
/// [_i16.CameraPage]
class CameraRoute extends _i20.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    required List<_i27.ViamAppResourceName> cameraSensors,
    _i21.Key? key,
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

  final List<_i27.ViamAppResourceName> cameraSensors;

  final _i21.Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{cameraSensors: $cameraSensors, key: $key}';
  }
}

/// generated route for
/// [_i17.MapPage]
class MapRoute extends _i20.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i27.ViamAppResourceName? resourceName,
    _i21.Key? key,
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

  final _i27.ViamAppResourceName? resourceName;

  final _i21.Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{resourceName: $resourceName, key: $key}';
  }
}

/// generated route for
/// [_i18.SettingsPage]
class SettingsRoute extends _i20.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i21.Key? key,
    required _i23.RobotConfig robotConfig,
  }) : super(
          SettingsRoute.name,
          path: 'settings-page',
          args: SettingsRouteArgs(
            key: key,
            robotConfig: robotConfig,
          ),
        );

  static const String name = 'SettingsRoute';
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.robotConfig,
  });

  final _i21.Key? key;

  final _i23.RobotConfig robotConfig;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, robotConfig: $robotConfig}';
  }
}

/// generated route for
/// [_i19.AnalyticsPage]
class AnalyticsRoute extends _i20.PageRouteInfo<void> {
  const AnalyticsRoute()
      : super(
          AnalyticsRoute.name,
          path: 'analytics-page',
        );

  static const String name = 'AnalyticsRoute';
}
