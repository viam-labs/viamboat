// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../../sdk/viam_sdk.dart' as _i22;
import '../data/boat/service/boat_service_impl.dart' as _i19;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i17;
import '../data/camera/data_source/camera_api_data_source.dart' as _i23;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i12;
import '../data/camera/service/camera_service_impl.dart' as _i32;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i33;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i13;
import '../data/movement/service/movement_service_impl.dart' as _i35;
import '../data/permissions/service/permissions_service_impl.dart' as _i8;
import '../data/resource/data_source/resource_api_data_source.dart' as _i24;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i11;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i14;
import '../data/resource/service/resource_service_impl.dart' as _i26;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i27;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i15;
import '../data/sensor/service/sensor_service_impl.dart' as _i29;
import '../domain/boat/service/boat_service.dart' as _i18;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i16;
import '../domain/camera/service/camera_service.dart' as _i31;
import '../domain/movement/service/movement_service.dart' as _i34;
import '../domain/permissions/service/permissions_service.dart' as _i7;
import '../domain/resource/service/resource_service_impl.dart' as _i25;
import '../domain/sensor/service/sensor_service_impl.dart' as _i28;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i36;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i38;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i21;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i9;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i20;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i37;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i39;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i30;
import 'camera_permission_injectable.dart' as _i41;
import 'navigator_key_injectable.dart' as _i40;
import 'shared_preferences_injectable.dart' as _i42;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i43; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final navigatorKeyModule = _$NavigatorKeyModule();
  final cameraPermissionModule = _$CameraPermissionModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final viamModule = _$ViamModule();
  gh.singleton<_i3.BoatBox>(_i4.CurrentBoatBoxImpl());
  gh.singleton<_i5.GlobalKey<_i5.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.singleton<_i6.Permission>(cameraPermissionModule.cameraPermission);
  gh.lazySingleton<_i7.PermissionsService>(
      () => _i8.PermissionsServiceImpl(get<_i6.Permission>()));
  gh.factory<_i9.ScanQrCubit>(() => _i9.ScanQrCubit());
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i11.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i11.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i12.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i12.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i13.ViamPositionToViamAppPositionMapper>(
      () => _i13.ViamPositionToViamAppPositionMapper());
  gh.factory<_i14.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i14.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i15.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i15.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i16.CurrentBoatStore>(() =>
      _i17.SharedPreferencesCurrentBoatStore(get<_i10.SharedPreferences>()));
  gh.factory<_i18.BoatService>(() => _i19.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i16.CurrentBoatStore>(),
      ));
  gh.factory<_i20.SplashCubit>(() => _i20.SplashCubit(get<_i18.BoatService>()));
  gh.factory<_i21.ViamDrawerCubit>(
      () => _i21.ViamDrawerCubit(get<_i18.BoatService>()));
  await gh.singletonAsync<_i22.ViamSdk>(
    () => viamModule.getViamSdk(get<_i18.BoatService>()),
    preResolve: true,
  );
  gh.factory<_i23.CameraDataSource>(
      () => _i23.CameraDataSource(get<_i22.ViamSdk>()));
  gh.factory<_i24.ResourceDataSource>(
      () => _i24.ResourceDataSource(get<_i22.ViamSdk>()));
  gh.factory<_i25.ResourceService>(() => _i26.ResourceServiceImpl(
        get<_i24.ResourceDataSource>(),
        get<_i14.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i27.SensorDataSource>(
      () => _i27.SensorDataSource(get<_i22.ViamSdk>()));
  gh.factory<_i28.SensorService>(() => _i29.SensorServiceImpl(
        get<_i27.SensorDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i15.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i30.SensorTileCubit>(
      () => _i30.SensorTileCubit(get<_i28.SensorService>()));
  gh.factory<_i31.ViamAppCameraService>(() => _i32.ViamAppCameraServiceImpl(
        get<_i23.CameraDataSource>(),
        get<_i12.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i33.ViamAppMovementSdkDataSource>(
      () => _i33.ViamAppMovementSdkDataSource(get<_i22.ViamSdk>()));
  gh.factory<_i34.ViamAppMovementService>(() => _i35.ViamAppMovementServiceImpl(
        get<_i33.ViamAppMovementSdkDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i13.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i36.AddBoatCubit>(() => _i36.AddBoatCubit(
        get<_i18.BoatService>(),
        get<_i25.ResourceService>(),
        get<_i7.PermissionsService>(),
      ));
  gh.factory<_i37.CameraTileCubit>(
      () => _i37.CameraTileCubit(get<_i31.ViamAppCameraService>()));
  gh.factory<_i38.DashboardCubit>(() => _i38.DashboardCubit(
        get<_i25.ResourceService>(),
        get<_i18.BoatService>(),
      ));
  gh.factory<_i39.MapTileCubit>(() => _i39.MapTileCubit(
        get<_i34.ViamAppMovementService>(),
        get<_i28.SensorService>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i40.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i41.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i42.SharedPreferencesModule {}

class _$ViamModule extends _i43.ViamModule {}
