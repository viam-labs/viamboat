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

import '../../domain/app_viam/model/robot_config.dart' as _i22;
import '../../domain/app_viam/model/viam_app_robot.dart' as _i24;
import '../../domain/boat/model/viam_boat.dart' as _i23;
import '../../domain/data_viam/model/filter_type.dart' as _i25;
import '../../domain/resource/model/viam_app_resource_name.dart' as _i26;
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
import '../page/login/login_page.dart' as _i2;
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
    LoginRoute.name: (routeData) {
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i2.LoginPage()),
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
          message: args.message,
          robot: args.robot,
        )),
        transitionsBuilder: _i20.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WaterTemperatureRoute.name: (routeData) {
      final args = routeData.argsAs<WaterTemperatureRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.WaterTemperaturePage(
          key: args.key,
          tempSensorName: args.tempSensorName,
          movementSensorName: args.movementSensorName,
          config: args.config,
        ),
      );
    },
    WaterDepthRoute.name: (routeData) {
      final args = routeData.argsAs<WaterDepthRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.WaterDepthPage(
          key: args.key,
          depthSensorName: args.depthSensorName,
          movementSensorName: args.movementSensorName,
          config: args.config,
        ),
      );
    },
    SelectRobotRoute.name: (routeData) {
      final args = routeData.argsAs<SelectRobotRouteArgs>(
          orElse: () => const SelectRobotRouteArgs());
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i10.SelectRobotPage(
          key: args.key,
          currentRobotId: args.currentRobotId,
          isAutoConnectOn: args.isAutoConnectOn,
        )),
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
          initialStartDate: args.initialStartDate,
          initialEndDate: args.initialEndDate,
          key: args.key,
        ),
      );
    },
    DepthOverTimeRoute.name: (routeData) {
      final args = routeData.argsAs<DepthOverTimeRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i12.DepthOverTimePage(
          key: args.key,
          sensorName: args.sensorName,
          robotConfig: args.robotConfig,
        )),
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
        child: _i20.WrappedRoute(
            child: _i16.CameraPage(
          cameraSensors: args.cameraSensors,
          robotConfig: args.robotConfig,
          key: args.key,
        )),
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
      final args = routeData.argsAs<AnalyticsRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.AnalyticsPage(
          key: args.key,
          sensorNames: args.sensorNames,
          config: args.config,
        ),
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
          LoginRoute.name,
          path: '/login-page',
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
/// [_i2.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
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
    required _i22.RobotConfig robotConfig,
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

  final _i22.RobotConfig robotConfig;

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
    required List<_i23.ViamBoat> boats,
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

  final List<_i23.ViamBoat> boats;

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
    String? message,
    required _i24.ViamAppRobot robot,
  }) : super(
          ConnectionErrorRoute.name,
          path: '/connection-error-page',
          args: ConnectionErrorRouteArgs(
            key: key,
            secret: secret,
            message: message,
            robot: robot,
          ),
        );

  static const String name = 'ConnectionErrorRoute';
}

class ConnectionErrorRouteArgs {
  const ConnectionErrorRouteArgs({
    this.key,
    this.secret,
    this.message,
    required this.robot,
  });

  final _i21.Key? key;

  final String? secret;

  final String? message;

  final _i24.ViamAppRobot robot;

  @override
  String toString() {
    return 'ConnectionErrorRouteArgs{key: $key, secret: $secret, message: $message, robot: $robot}';
  }
}

/// generated route for
/// [_i8.WaterTemperaturePage]
class WaterTemperatureRoute
    extends _i20.PageRouteInfo<WaterTemperatureRouteArgs> {
  WaterTemperatureRoute({
    _i21.Key? key,
    String? tempSensorName,
    String? movementSensorName,
    required _i22.RobotConfig config,
  }) : super(
          WaterTemperatureRoute.name,
          path: '/water-temperature-page',
          args: WaterTemperatureRouteArgs(
            key: key,
            tempSensorName: tempSensorName,
            movementSensorName: movementSensorName,
            config: config,
          ),
        );

  static const String name = 'WaterTemperatureRoute';
}

class WaterTemperatureRouteArgs {
  const WaterTemperatureRouteArgs({
    this.key,
    this.tempSensorName,
    this.movementSensorName,
    required this.config,
  });

  final _i21.Key? key;

  final String? tempSensorName;

  final String? movementSensorName;

  final _i22.RobotConfig config;

  @override
  String toString() {
    return 'WaterTemperatureRouteArgs{key: $key, tempSensorName: $tempSensorName, movementSensorName: $movementSensorName, config: $config}';
  }
}

/// generated route for
/// [_i9.WaterDepthPage]
class WaterDepthRoute extends _i20.PageRouteInfo<WaterDepthRouteArgs> {
  WaterDepthRoute({
    _i21.Key? key,
    String? depthSensorName,
    String? movementSensorName,
    required _i22.RobotConfig config,
  }) : super(
          WaterDepthRoute.name,
          path: '/water-depth-page',
          args: WaterDepthRouteArgs(
            key: key,
            depthSensorName: depthSensorName,
            movementSensorName: movementSensorName,
            config: config,
          ),
        );

  static const String name = 'WaterDepthRoute';
}

class WaterDepthRouteArgs {
  const WaterDepthRouteArgs({
    this.key,
    this.depthSensorName,
    this.movementSensorName,
    required this.config,
  });

  final _i21.Key? key;

  final String? depthSensorName;

  final String? movementSensorName;

  final _i22.RobotConfig config;

  @override
  String toString() {
    return 'WaterDepthRouteArgs{key: $key, depthSensorName: $depthSensorName, movementSensorName: $movementSensorName, config: $config}';
  }
}

/// generated route for
/// [_i10.SelectRobotPage]
class SelectRobotRoute extends _i20.PageRouteInfo<SelectRobotRouteArgs> {
  SelectRobotRoute({
    _i21.Key? key,
    String? currentRobotId,
    bool isAutoConnectOn = true,
  }) : super(
          SelectRobotRoute.name,
          path: '/select-robot-page',
          args: SelectRobotRouteArgs(
            key: key,
            currentRobotId: currentRobotId,
            isAutoConnectOn: isAutoConnectOn,
          ),
        );

  static const String name = 'SelectRobotRoute';
}

class SelectRobotRouteArgs {
  const SelectRobotRouteArgs({
    this.key,
    this.currentRobotId,
    this.isAutoConnectOn = true,
  });

  final _i21.Key? key;

  final String? currentRobotId;

  final bool isAutoConnectOn;

  @override
  String toString() {
    return 'SelectRobotRouteArgs{key: $key, currentRobotId: $currentRobotId, isAutoConnectOn: $isAutoConnectOn}';
  }
}

/// generated route for
/// [_i11.FiltersPage]
class FiltersRoute extends _i20.PageRouteInfo<FiltersRouteArgs> {
  FiltersRoute({
    required _i25.FiltersType type,
    DateTime? initialStartDate,
    DateTime? initialEndDate,
    _i21.Key? key,
  }) : super(
          FiltersRoute.name,
          path: '/filters-page',
          args: FiltersRouteArgs(
            type: type,
            initialStartDate: initialStartDate,
            initialEndDate: initialEndDate,
            key: key,
          ),
        );

  static const String name = 'FiltersRoute';
}

class FiltersRouteArgs {
  const FiltersRouteArgs({
    required this.type,
    this.initialStartDate,
    this.initialEndDate,
    this.key,
  });

  final _i25.FiltersType type;

  final DateTime? initialStartDate;

  final DateTime? initialEndDate;

  final _i21.Key? key;

  @override
  String toString() {
    return 'FiltersRouteArgs{type: $type, initialStartDate: $initialStartDate, initialEndDate: $initialEndDate, key: $key}';
  }
}

/// generated route for
/// [_i12.DepthOverTimePage]
class DepthOverTimeRoute extends _i20.PageRouteInfo<DepthOverTimeRouteArgs> {
  DepthOverTimeRoute({
    _i21.Key? key,
    String? sensorName,
    required _i22.RobotConfig robotConfig,
  }) : super(
          DepthOverTimeRoute.name,
          path: '/depth-over-time-page',
          args: DepthOverTimeRouteArgs(
            key: key,
            sensorName: sensorName,
            robotConfig: robotConfig,
          ),
        );

  static const String name = 'DepthOverTimeRoute';
}

class DepthOverTimeRouteArgs {
  const DepthOverTimeRouteArgs({
    this.key,
    this.sensorName,
    required this.robotConfig,
  });

  final _i21.Key? key;

  final String? sensorName;

  final _i22.RobotConfig robotConfig;

  @override
  String toString() {
    return 'DepthOverTimeRouteArgs{key: $key, sensorName: $sensorName, robotConfig: $robotConfig}';
  }
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
    required List<_i26.ViamAppResourceName> sensors,
    required _i22.RobotConfig robotConfig,
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

  final List<_i26.ViamAppResourceName> sensors;

  final _i22.RobotConfig robotConfig;

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
    required List<_i26.ViamAppResourceName> cameraSensors,
    required _i22.RobotConfig robotConfig,
    _i21.Key? key,
  }) : super(
          CameraRoute.name,
          path: 'camera-page',
          args: CameraRouteArgs(
            cameraSensors: cameraSensors,
            robotConfig: robotConfig,
            key: key,
          ),
        );

  static const String name = 'CameraRoute';
}

class CameraRouteArgs {
  const CameraRouteArgs({
    required this.cameraSensors,
    required this.robotConfig,
    this.key,
  });

  final List<_i26.ViamAppResourceName> cameraSensors;

  final _i22.RobotConfig robotConfig;

  final _i21.Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{cameraSensors: $cameraSensors, robotConfig: $robotConfig, key: $key}';
  }
}

/// generated route for
/// [_i17.MapPage]
class MapRoute extends _i20.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i26.ViamAppResourceName? resourceName,
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

  final _i26.ViamAppResourceName? resourceName;

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
    required _i22.RobotConfig robotConfig,
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

  final _i22.RobotConfig robotConfig;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, robotConfig: $robotConfig}';
  }
}

/// generated route for
/// [_i19.AnalyticsPage]
class AnalyticsRoute extends _i20.PageRouteInfo<AnalyticsRouteArgs> {
  AnalyticsRoute({
    _i21.Key? key,
    required List<String?> sensorNames,
    required _i22.RobotConfig config,
  }) : super(
          AnalyticsRoute.name,
          path: 'analytics-page',
          args: AnalyticsRouteArgs(
            key: key,
            sensorNames: sensorNames,
            config: config,
          ),
        );

  static const String name = 'AnalyticsRoute';
}

class AnalyticsRouteArgs {
  const AnalyticsRouteArgs({
    this.key,
    required this.sensorNames,
    required this.config,
  });

  final _i21.Key? key;

  final List<String?> sensorNames;

  final _i22.RobotConfig config;

  @override
  String toString() {
    return 'AnalyticsRouteArgs{key: $key, sensorNames: $sensorNames, config: $config}';
  }
}
