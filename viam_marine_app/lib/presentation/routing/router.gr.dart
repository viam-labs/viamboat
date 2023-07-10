// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/cupertino.dart' as _i25;
import 'package:flutter/material.dart' as _i21;
import 'package:viam_marine/domain/app_viam/model/robot_config.dart' as _i22;
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart' as _i27;
import 'package:viam_marine/domain/boat/model/viam_boat.dart' as _i24;
import 'package:viam_marine/domain/data_viam/model/filter_type.dart' as _i23;
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart'
    as _i26;
import 'package:viam_marine/presentation/page/analytics/analytics_page.dart'
    as _i19;
import 'package:viam_marine/presentation/page/boat_list/boat_list_page.dart'
    as _i12;
import 'package:viam_marine/presentation/page/camera/camera_page.dart' as _i7;
import 'package:viam_marine/presentation/page/change_boat_name/change_boat_name_page.dart'
    as _i3;
import 'package:viam_marine/presentation/page/connection_error/connection_error_page.dart'
    as _i16;
import 'package:viam_marine/presentation/page/dashboard/dashboard_page.dart'
    as _i9;
import 'package:viam_marine/presentation/page/depth_over_time/depth_over_time_page.dart'
    as _i11;
import 'package:viam_marine/presentation/page/filters/filters_page.dart' as _i2;
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/fuel_consumption_over_time_page.dart'
    as _i13;
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/fuel_consumption_per_mile_page.dart'
    as _i6;
import 'package:viam_marine/presentation/page/login/login_page.dart' as _i18;
import 'package:viam_marine/presentation/page/main/main_page.dart' as _i15;
import 'package:viam_marine/presentation/page/map/map_page.dart' as _i10;
import 'package:viam_marine/presentation/page/scan_qr/scan_qr_page.dart' as _i8;
import 'package:viam_marine/presentation/page/select_robot/select_robot_page.dart'
    as _i17;
import 'package:viam_marine/presentation/page/settings/settings_page.dart'
    as _i4;
import 'package:viam_marine/presentation/page/splash/splash_page.dart' as _i5;
import 'package:viam_marine/presentation/page/water_depth/water_depth_page.dart'
    as _i14;
import 'package:viam_marine/presentation/page/water_temperature/water_temperature_page.dart'
    as _i1;

abstract class $MainRouter extends _i20.RootStackRouter {
  $MainRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    WaterTemperatureRoute.name: (routeData) {
      final args = routeData.argsAs<WaterTemperatureRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.WaterTemperaturePage(
          key: args.key,
          tempSensorName: args.tempSensorName,
          movementSensorName: args.movementSensorName,
          config: args.config,
        ),
      );
    },
    FiltersRoute.name: (routeData) {
      final args = routeData.argsAs<FiltersRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.FiltersPage(
          type: args.type,
          initialStartDate: args.initialStartDate,
          initialEndDate: args.initialEndDate,
          key: args.key,
        ),
      );
    },
    ChangeBoatNameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeBoatNameRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i3.ChangeBoatNamePage(
          key: args.key,
          boats: args.boats,
          currentBoatId: args.currentBoatId,
        )),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SettingsPage(
          key: args.key,
          robotConfig: args.robotConfig,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i5.SplashPage()),
      );
    },
    FuelConsumptionPerMileRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i6.FuelConsumptionPerMilePage()),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CameraPage(
          key: args.key,
          cameraSensors: args.cameraSensors,
        ),
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i8.ScanQrPage(
          showWelcomeText: args.showWelcomeText,
          key: args.key,
        )),
      );
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i9.DashboardPage(
          sensors: args.sensors,
          robotConfig: args.robotConfig,
          key: args.key,
        )),
      );
    },
    MapRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i10.MapPage(
          resourceName: args.resourceName,
          key: args.key,
        )),
      );
    },
    DepthOverTimeRoute.name: (routeData) {
      final args = routeData.argsAs<DepthOverTimeRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i11.DepthOverTimePage(
          key: args.key,
          sensorName: args.sensorName,
          robotConfig: args.robotConfig,
        )),
      );
    },
    BoatListRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.BoatListPage(),
      );
    },
    FuelConsumptionOverTimeRoute.name: (routeData) {
      final args = routeData.argsAs<FuelConsumptionOverTimeRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i13.FuelConsumptionOverTimePage(
          key: args.key,
          fuelSensorName: args.fuelSensorName,
          movementSensorName: args.movementSensorName,
          locationId: args.locationId,
          robotName: args.robotName,
        )),
      );
    },
    WaterDepthRoute.name: (routeData) {
      final args = routeData.argsAs<WaterDepthRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.WaterDepthPage(
          key: args.key,
          depthSensorName: args.depthSensorName,
          movementSensorName: args.movementSensorName,
          config: args.config,
        ),
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i15.MainPage(
          key: args.key,
          robotConfig: args.robotConfig,
        )),
      );
    },
    ConnectionErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ConnectionErrorRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i16.ConnectionErrorPage(
          key: args.key,
          secret: args.secret,
          message: args.message,
          robot: args.robot,
        )),
      );
    },
    SelectRobotRoute.name: (routeData) {
      final args = routeData.argsAs<SelectRobotRouteArgs>(
          orElse: () => const SelectRobotRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i17.SelectRobotPage(
          key: args.key,
          currentRobotId: args.currentRobotId,
          isAutoConnectOn: args.isAutoConnectOn,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i18.LoginPage()),
      );
    },
    AnalyticsRoute.name: (routeData) {
      final args = routeData.argsAs<AnalyticsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.AnalyticsPage(
          key: args.key,
          sensorNames: args.sensorNames,
          config: args.config,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.WaterTemperaturePage]
class WaterTemperatureRoute
    extends _i20.PageRouteInfo<WaterTemperatureRouteArgs> {
  WaterTemperatureRoute({
    _i21.Key? key,
    String? tempSensorName,
    String? movementSensorName,
    required _i22.RobotConfig config,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          WaterTemperatureRoute.name,
          args: WaterTemperatureRouteArgs(
            key: key,
            tempSensorName: tempSensorName,
            movementSensorName: movementSensorName,
            config: config,
          ),
          initialChildren: children,
        );

  static const String name = 'WaterTemperatureRoute';

  static const _i20.PageInfo<WaterTemperatureRouteArgs> page =
      _i20.PageInfo<WaterTemperatureRouteArgs>(name);
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
/// [_i2.FiltersPage]
class FiltersRoute extends _i20.PageRouteInfo<FiltersRouteArgs> {
  FiltersRoute({
    required _i23.FiltersType type,
    DateTime? initialStartDate,
    DateTime? initialEndDate,
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          FiltersRoute.name,
          args: FiltersRouteArgs(
            type: type,
            initialStartDate: initialStartDate,
            initialEndDate: initialEndDate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FiltersRoute';

  static const _i20.PageInfo<FiltersRouteArgs> page =
      _i20.PageInfo<FiltersRouteArgs>(name);
}

class FiltersRouteArgs {
  const FiltersRouteArgs({
    required this.type,
    this.initialStartDate,
    this.initialEndDate,
    this.key,
  });

  final _i23.FiltersType type;

  final DateTime? initialStartDate;

  final DateTime? initialEndDate;

  final _i21.Key? key;

  @override
  String toString() {
    return 'FiltersRouteArgs{type: $type, initialStartDate: $initialStartDate, initialEndDate: $initialEndDate, key: $key}';
  }
}

/// generated route for
/// [_i3.ChangeBoatNamePage]
class ChangeBoatNameRoute extends _i20.PageRouteInfo<ChangeBoatNameRouteArgs> {
  ChangeBoatNameRoute({
    _i21.Key? key,
    required List<_i24.ViamBoat> boats,
    required String? currentBoatId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ChangeBoatNameRoute.name,
          args: ChangeBoatNameRouteArgs(
            key: key,
            boats: boats,
            currentBoatId: currentBoatId,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangeBoatNameRoute';

  static const _i20.PageInfo<ChangeBoatNameRouteArgs> page =
      _i20.PageInfo<ChangeBoatNameRouteArgs>(name);
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
/// [_i4.SettingsPage]
class SettingsRoute extends _i20.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i25.Key? key,
    required _i22.RobotConfig robotConfig,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(
            key: key,
            robotConfig: robotConfig,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i20.PageInfo<SettingsRouteArgs> page =
      _i20.PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.robotConfig,
  });

  final _i25.Key? key;

  final _i22.RobotConfig robotConfig;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, robotConfig: $robotConfig}';
  }
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FuelConsumptionPerMilePage]
class FuelConsumptionPerMileRoute extends _i20.PageRouteInfo<void> {
  const FuelConsumptionPerMileRoute({List<_i20.PageRouteInfo>? children})
      : super(
          FuelConsumptionPerMileRoute.name,
          initialChildren: children,
        );

  static const String name = 'FuelConsumptionPerMileRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CameraPage]
class CameraRoute extends _i20.PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    _i21.Key? key,
    required List<_i26.ViamAppResourceName> cameraSensors,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          CameraRoute.name,
          args: CameraRouteArgs(
            key: key,
            cameraSensors: cameraSensors,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const _i20.PageInfo<CameraRouteArgs> page =
      _i20.PageInfo<CameraRouteArgs>(name);
}

class CameraRouteArgs {
  const CameraRouteArgs({
    this.key,
    required this.cameraSensors,
  });

  final _i21.Key? key;

  final List<_i26.ViamAppResourceName> cameraSensors;

  @override
  String toString() {
    return 'CameraRouteArgs{key: $key, cameraSensors: $cameraSensors}';
  }
}

/// generated route for
/// [_i8.ScanQrPage]
class ScanQrRoute extends _i20.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    required bool showWelcomeText,
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ScanQrRoute.name,
          args: ScanQrRouteArgs(
            showWelcomeText: showWelcomeText,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ScanQrRoute';

  static const _i20.PageInfo<ScanQrRouteArgs> page =
      _i20.PageInfo<ScanQrRouteArgs>(name);
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
/// [_i9.DashboardPage]
class DashboardRoute extends _i20.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    required List<_i26.ViamAppResourceName> sensors,
    required _i22.RobotConfig robotConfig,
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          args: DashboardRouteArgs(
            sensors: sensors,
            robotConfig: robotConfig,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i20.PageInfo<DashboardRouteArgs> page =
      _i20.PageInfo<DashboardRouteArgs>(name);
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
/// [_i10.MapPage]
class MapRoute extends _i20.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    required _i26.ViamAppResourceName? resourceName,
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          MapRoute.name,
          args: MapRouteArgs(
            resourceName: resourceName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i20.PageInfo<MapRouteArgs> page =
      _i20.PageInfo<MapRouteArgs>(name);
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
/// [_i11.DepthOverTimePage]
class DepthOverTimeRoute extends _i20.PageRouteInfo<DepthOverTimeRouteArgs> {
  DepthOverTimeRoute({
    _i21.Key? key,
    String? sensorName,
    required _i22.RobotConfig robotConfig,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          DepthOverTimeRoute.name,
          args: DepthOverTimeRouteArgs(
            key: key,
            sensorName: sensorName,
            robotConfig: robotConfig,
          ),
          initialChildren: children,
        );

  static const String name = 'DepthOverTimeRoute';

  static const _i20.PageInfo<DepthOverTimeRouteArgs> page =
      _i20.PageInfo<DepthOverTimeRouteArgs>(name);
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
/// [_i12.BoatListPage]
class BoatListRoute extends _i20.PageRouteInfo<void> {
  const BoatListRoute({List<_i20.PageRouteInfo>? children})
      : super(
          BoatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'BoatListRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.FuelConsumptionOverTimePage]
class FuelConsumptionOverTimeRoute
    extends _i20.PageRouteInfo<FuelConsumptionOverTimeRouteArgs> {
  FuelConsumptionOverTimeRoute({
    _i21.Key? key,
    String? fuelSensorName,
    String? movementSensorName,
    required String locationId,
    required String robotName,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          FuelConsumptionOverTimeRoute.name,
          args: FuelConsumptionOverTimeRouteArgs(
            key: key,
            fuelSensorName: fuelSensorName,
            movementSensorName: movementSensorName,
            locationId: locationId,
            robotName: robotName,
          ),
          initialChildren: children,
        );

  static const String name = 'FuelConsumptionOverTimeRoute';

  static const _i20.PageInfo<FuelConsumptionOverTimeRouteArgs> page =
      _i20.PageInfo<FuelConsumptionOverTimeRouteArgs>(name);
}

class FuelConsumptionOverTimeRouteArgs {
  const FuelConsumptionOverTimeRouteArgs({
    this.key,
    this.fuelSensorName,
    this.movementSensorName,
    required this.locationId,
    required this.robotName,
  });

  final _i21.Key? key;

  final String? fuelSensorName;

  final String? movementSensorName;

  final String locationId;

  final String robotName;

  @override
  String toString() {
    return 'FuelConsumptionOverTimeRouteArgs{key: $key, fuelSensorName: $fuelSensorName, movementSensorName: $movementSensorName, locationId: $locationId, robotName: $robotName}';
  }
}

/// generated route for
/// [_i14.WaterDepthPage]
class WaterDepthRoute extends _i20.PageRouteInfo<WaterDepthRouteArgs> {
  WaterDepthRoute({
    _i21.Key? key,
    String? depthSensorName,
    String? movementSensorName,
    required _i22.RobotConfig config,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          WaterDepthRoute.name,
          args: WaterDepthRouteArgs(
            key: key,
            depthSensorName: depthSensorName,
            movementSensorName: movementSensorName,
            config: config,
          ),
          initialChildren: children,
        );

  static const String name = 'WaterDepthRoute';

  static const _i20.PageInfo<WaterDepthRouteArgs> page =
      _i20.PageInfo<WaterDepthRouteArgs>(name);
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
/// [_i15.MainPage]
class MainRoute extends _i20.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i21.Key? key,
    required _i22.RobotConfig robotConfig,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            key: key,
            robotConfig: robotConfig,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i20.PageInfo<MainRouteArgs> page =
      _i20.PageInfo<MainRouteArgs>(name);
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
/// [_i16.ConnectionErrorPage]
class ConnectionErrorRoute
    extends _i20.PageRouteInfo<ConnectionErrorRouteArgs> {
  ConnectionErrorRoute({
    _i21.Key? key,
    String? secret,
    String? message,
    required _i27.ViamAppRobot robot,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ConnectionErrorRoute.name,
          args: ConnectionErrorRouteArgs(
            key: key,
            secret: secret,
            message: message,
            robot: robot,
          ),
          initialChildren: children,
        );

  static const String name = 'ConnectionErrorRoute';

  static const _i20.PageInfo<ConnectionErrorRouteArgs> page =
      _i20.PageInfo<ConnectionErrorRouteArgs>(name);
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

  final _i27.ViamAppRobot robot;

  @override
  String toString() {
    return 'ConnectionErrorRouteArgs{key: $key, secret: $secret, message: $message, robot: $robot}';
  }
}

/// generated route for
/// [_i17.SelectRobotPage]
class SelectRobotRoute extends _i20.PageRouteInfo<SelectRobotRouteArgs> {
  SelectRobotRoute({
    _i21.Key? key,
    String? currentRobotId,
    bool isAutoConnectOn = true,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectRobotRoute.name,
          args: SelectRobotRouteArgs(
            key: key,
            currentRobotId: currentRobotId,
            isAutoConnectOn: isAutoConnectOn,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectRobotRoute';

  static const _i20.PageInfo<SelectRobotRouteArgs> page =
      _i20.PageInfo<SelectRobotRouteArgs>(name);
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
/// [_i18.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.AnalyticsPage]
class AnalyticsRoute extends _i20.PageRouteInfo<AnalyticsRouteArgs> {
  AnalyticsRoute({
    _i21.Key? key,
    required List<String?> sensorNames,
    required _i22.RobotConfig config,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          AnalyticsRoute.name,
          args: AnalyticsRouteArgs(
            key: key,
            sensorNames: sensorNames,
            config: config,
          ),
          initialChildren: children,
        );

  static const String name = 'AnalyticsRoute';

  static const _i20.PageInfo<AnalyticsRouteArgs> page =
      _i20.PageInfo<AnalyticsRouteArgs>(name);
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
