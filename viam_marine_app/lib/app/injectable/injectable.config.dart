// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../sdk/viam_sdk.dart' as _i30;
import '../data/boat/service/boat_service_impl.dart' as _i21;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i18;
import '../data/camera/data_source/camera_api_data_source.dart' as _i32;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i13;
import '../data/camera/service/camera_service_impl.dart' as _i36;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i37;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i14;
import '../data/movement/service/movement_service_impl.dart' as _i39;
import '../data/permissions/service/permissions_service_impl.dart' as _i8;
import '../data/resource/data_source/resource_api_data_source.dart' as _i33;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i12;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i15;
import '../data/resource/service/resource_service_impl.dart' as _i41;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i34;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i16;
import '../data/sensor/service/sensor_service_impl.dart' as _i43;
import '../domain/boat/service/boat_service.dart' as _i20;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i17;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i31;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i22;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i23;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i24;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i25;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i26;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i27;
import '../domain/camera/service/camera_service.dart' as _i35;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i45;
import '../domain/movement/service/movement_service.dart' as _i38;
import '../domain/movement/usecase/get_position_use_case.dart' as _i46;
import '../domain/permissions/service/permissions_service.dart' as _i7;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i19;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i9;
import '../domain/resource/service/resource_service.dart' as _i40;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i47;
import '../domain/sensor/service/sensor_service_impl.dart' as _i42;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i48;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i44;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i52;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i29;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i10;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i28;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i51;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i49;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i50;
import 'camera_permission_injectable.dart' as _i54;
import 'navigator_key_injectable.dart' as _i53;
import 'shared_preferences_injectable.dart' as _i55;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i56; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.RequestCameraPermissionUseCase>(
      () => _i9.RequestCameraPermissionUseCase(get<_i7.PermissionsService>()));
  gh.factory<_i10.ScanQrCubit>(() => _i10.ScanQrCubit());
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i12.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i12.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i13.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i13.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i14.ViamPositionToViamAppPositionMapper>(
      () => _i14.ViamPositionToViamAppPositionMapper());
  gh.factory<_i15.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i15.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i16.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i16.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i17.CurrentBoatStore>(() =>
      _i18.SharedPreferencesCurrentBoatStore(get<_i11.SharedPreferences>()));
  gh.factory<_i19.GetCameraPermissionStatusUseCase>(() =>
      _i19.GetCameraPermissionStatusUseCase(get<_i7.PermissionsService>()));
  gh.factory<_i20.BoatService>(() => _i21.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i17.CurrentBoatStore>(),
      ));
  gh.factory<_i22.CheckConnectionUseCase>(
      () => _i22.CheckConnectionUseCase(get<_i20.BoatService>()));
  gh.factory<_i23.DeleteBoatUseCase>(
      () => _i23.DeleteBoatUseCase(get<_i20.BoatService>()));
  gh.factory<_i24.GetBoatsUseCase>(
      () => _i24.GetBoatsUseCase(get<_i20.BoatService>()));
  gh.factory<_i25.GetCurrentBoatIdUseCase>(
      () => _i25.GetCurrentBoatIdUseCase(get<_i20.BoatService>()));
  gh.factory<_i26.RemoveCurrentBoatIdUseCase>(
      () => _i26.RemoveCurrentBoatIdUseCase(get<_i20.BoatService>()));
  gh.factory<_i27.SetCurrentBoatIdUseCase>(
      () => _i27.SetCurrentBoatIdUseCase(get<_i20.BoatService>()));
  gh.factory<_i28.SplashCubit>(() => _i28.SplashCubit(
        get<_i25.GetCurrentBoatIdUseCase>(),
        get<_i24.GetBoatsUseCase>(),
      ));
  gh.factory<_i29.ViamDrawerCubit>(() => _i29.ViamDrawerCubit(
        get<_i24.GetBoatsUseCase>(),
        get<_i25.GetCurrentBoatIdUseCase>(),
        get<_i23.DeleteBoatUseCase>(),
        get<_i27.SetCurrentBoatIdUseCase>(),
        get<_i26.RemoveCurrentBoatIdUseCase>(),
      ));
  await gh.singletonAsync<_i30.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i24.GetBoatsUseCase>(),
      get<_i25.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i31.AddNewBoatUseCase>(
      () => _i31.AddNewBoatUseCase(get<_i20.BoatService>()));
  gh.factory<_i32.CameraDataSource>(
      () => _i32.CameraDataSource(get<_i30.ViamSdk>()));
  gh.factory<_i33.ResourceDataSource>(
      () => _i33.ResourceDataSource(get<_i30.ViamSdk>()));
  gh.factory<_i34.SensorDataSource>(
      () => _i34.SensorDataSource(get<_i30.ViamSdk>()));
  gh.factory<_i35.ViamAppCameraService>(() => _i36.ViamAppCameraServiceImpl(
        get<_i32.CameraDataSource>(),
        get<_i13.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i37.ViamAppMovementSdkDataSource>(
      () => _i37.ViamAppMovementSdkDataSource(get<_i30.ViamSdk>()));
  gh.factory<_i38.ViamAppMovementService>(() => _i39.ViamAppMovementServiceImpl(
        get<_i37.ViamAppMovementSdkDataSource>(),
        get<_i12.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i14.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i40.ViamAppResourceService>(() => _i41.ViamAppResourceServiceImpl(
        get<_i33.ResourceDataSource>(),
        get<_i15.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i42.ViamAppSensorService>(() => _i43.ViamAppSensorServiceImpl(
        get<_i34.SensorDataSource>(),
        get<_i12.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i16.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i44.AddBoatCubit>(() => _i44.AddBoatCubit(
        get<_i31.AddNewBoatUseCase>(),
        get<_i22.CheckConnectionUseCase>(),
        get<_i27.SetCurrentBoatIdUseCase>(),
        get<_i19.GetCameraPermissionStatusUseCase>(),
        get<_i9.RequestCameraPermissionUseCase>(),
      ));
  gh.factory<_i45.GetCameraDataUseCase>(
      () => _i45.GetCameraDataUseCase(get<_i35.ViamAppCameraService>()));
  gh.factory<_i46.GetPostionUseCase>(
      () => _i46.GetPostionUseCase(get<_i38.ViamAppMovementService>()));
  gh.factory<_i47.GetResourceNamesUseCase>(
      () => _i47.GetResourceNamesUseCase(get<_i40.ViamAppResourceService>()));
  gh.factory<_i48.GetSensorDataUseCase>(
      () => _i48.GetSensorDataUseCase(get<_i42.ViamAppSensorService>()));
  gh.factory<_i49.MapTileCubit>(() => _i49.MapTileCubit(
        get<_i46.GetPostionUseCase>(),
        get<_i48.GetSensorDataUseCase>(),
      ));
  gh.factory<_i50.SensorTileCubit>(
      () => _i50.SensorTileCubit(get<_i48.GetSensorDataUseCase>()));
  gh.factory<_i51.CameraTileCubit>(
      () => _i51.CameraTileCubit(get<_i45.GetCameraDataUseCase>()));
  gh.factory<_i52.DashboardCubit>(() => _i52.DashboardCubit(
        get<_i47.GetResourceNamesUseCase>(),
        get<_i24.GetBoatsUseCase>(),
        get<_i25.GetCurrentBoatIdUseCase>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i53.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i54.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i55.SharedPreferencesModule {}

class _$ViamModule extends _i56.ViamModule {}
