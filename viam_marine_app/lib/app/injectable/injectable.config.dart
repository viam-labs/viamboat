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

import '../../sdk/viam_sdk.dart' as _i28;
import '../data/boat/service/boat_service_impl.dart' as _i19;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i17;
import '../data/camera/data_source/camera_api_data_source.dart' as _i30;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i12;
import '../data/camera/service/camera_service_impl.dart' as _i34;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i35;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i13;
import '../data/movement/service/movement_service_impl.dart' as _i37;
import '../data/permissions/service/permissions_service_impl.dart' as _i8;
import '../data/resource/data_source/resource_api_data_source.dart' as _i31;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i11;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i14;
import '../data/resource/service/resource_service_impl.dart' as _i39;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i32;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i15;
import '../data/sensor/service/sensor_service_impl.dart' as _i41;
import '../domain/boat/service/boat_service.dart' as _i18;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i16;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i29;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i20;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i21;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i22;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i23;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i24;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i25;
import '../domain/camera/service/camera_service.dart' as _i33;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i43;
import '../domain/movement/service/movement_service.dart' as _i36;
import '../domain/movement/usecase/get_position_use_case.dart' as _i44;
import '../domain/permissions/service/permissions_service.dart' as _i7;
import '../domain/resource/service/resource_service.dart' as _i38;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i45;
import '../domain/sensor/service/sensor_service_impl.dart' as _i40;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i46;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i42;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i50;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i27;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i9;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i26;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i49;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i47;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i48;
import 'camera_permission_injectable.dart' as _i52;
import 'navigator_key_injectable.dart' as _i51;
import 'shared_preferences_injectable.dart' as _i53;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i54; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i20.CheckConnectionUseCase>(
      () => _i20.CheckConnectionUseCase(get<_i18.BoatService>()));
  gh.factory<_i21.DeleteBoatUseCase>(
      () => _i21.DeleteBoatUseCase(get<_i18.BoatService>()));
  gh.factory<_i22.GetBoatsUseCase>(
      () => _i22.GetBoatsUseCase(get<_i18.BoatService>()));
  gh.factory<_i23.GetCurrentBoatIdUseCase>(
      () => _i23.GetCurrentBoatIdUseCase(get<_i18.BoatService>()));
  gh.factory<_i24.RemoveCurrentBoatIdUseCase>(
      () => _i24.RemoveCurrentBoatIdUseCase(get<_i18.BoatService>()));
  gh.factory<_i25.SetCurrentBoatIdUseCase>(
      () => _i25.SetCurrentBoatIdUseCase(get<_i18.BoatService>()));
  gh.factory<_i26.SplashCubit>(() => _i26.SplashCubit(
        get<_i23.GetCurrentBoatIdUseCase>(),
        get<_i22.GetBoatsUseCase>(),
      ));
  gh.factory<_i27.ViamDrawerCubit>(() => _i27.ViamDrawerCubit(
        get<_i22.GetBoatsUseCase>(),
        get<_i23.GetCurrentBoatIdUseCase>(),
        get<_i21.DeleteBoatUseCase>(),
        get<_i25.SetCurrentBoatIdUseCase>(),
        get<_i24.RemoveCurrentBoatIdUseCase>(),
      ));
  await gh.singletonAsync<_i28.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i22.GetBoatsUseCase>(),
      get<_i23.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i29.AddNewBoatUseCase>(
      () => _i29.AddNewBoatUseCase(get<_i18.BoatService>()));
  gh.factory<_i30.CameraDataSource>(
      () => _i30.CameraDataSource(get<_i28.ViamSdk>()));
  gh.factory<_i31.ResourceDataSource>(
      () => _i31.ResourceDataSource(get<_i28.ViamSdk>()));
  gh.factory<_i32.SensorDataSource>(
      () => _i32.SensorDataSource(get<_i28.ViamSdk>()));
  gh.factory<_i33.ViamAppCameraService>(() => _i34.ViamAppCameraServiceImpl(
        get<_i30.CameraDataSource>(),
        get<_i12.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i35.ViamAppMovementSdkDataSource>(
      () => _i35.ViamAppMovementSdkDataSource(get<_i28.ViamSdk>()));
  gh.factory<_i36.ViamAppMovementService>(() => _i37.ViamAppMovementServiceImpl(
        get<_i35.ViamAppMovementSdkDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i13.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i38.ViamAppResourceService>(() => _i39.ViamAppResourceServiceImpl(
        get<_i31.ResourceDataSource>(),
        get<_i14.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i40.ViamAppSensorService>(() => _i41.ViamAppSensorServiceImpl(
        get<_i32.SensorDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i15.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i42.AddBoatCubit>(() => _i42.AddBoatCubit(
        get<_i29.AddNewBoatUseCase>(),
        get<_i20.CheckConnectionUseCase>(),
        get<_i25.SetCurrentBoatIdUseCase>(),
        get<_i7.PermissionsService>(),
      ));
  gh.factory<_i43.GetCameraDataUseCase>(
      () => _i43.GetCameraDataUseCase(get<_i33.ViamAppCameraService>()));
  gh.factory<_i44.GetPostionUseCase>(
      () => _i44.GetPostionUseCase(get<_i36.ViamAppMovementService>()));
  gh.factory<_i45.GetResourceNamesUseCase>(
      () => _i45.GetResourceNamesUseCase(get<_i38.ViamAppResourceService>()));
  gh.factory<_i46.GetSensorDataUseCase>(
      () => _i46.GetSensorDataUseCase(get<_i40.ViamAppSensorService>()));
  gh.factory<_i47.MapTileCubit>(() => _i47.MapTileCubit(
        get<_i44.GetPostionUseCase>(),
        get<_i46.GetSensorDataUseCase>(),
      ));
  gh.factory<_i48.SensorTileCubit>(
      () => _i48.SensorTileCubit(get<_i46.GetSensorDataUseCase>()));
  gh.factory<_i49.CameraTileCubit>(
      () => _i49.CameraTileCubit(get<_i43.GetCameraDataUseCase>()));
  gh.factory<_i50.DashboardCubit>(() => _i50.DashboardCubit(
        get<_i45.GetResourceNamesUseCase>(),
        get<_i22.GetBoatsUseCase>(),
        get<_i23.GetCurrentBoatIdUseCase>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i51.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i52.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i53.SharedPreferencesModule {}

class _$ViamModule extends _i54.ViamModule {}
