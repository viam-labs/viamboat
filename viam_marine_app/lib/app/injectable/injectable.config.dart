// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i8;
import 'package:uuid/uuid.dart' as _i9;

import '../../sdk/viam_sdk.dart' as _i32;
import '../data/boat/service/boat_service_impl.dart' as _i22;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i16;
import '../data/camera/data_source/camera_api_data_source.dart' as _i33;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart' as _i10;
import '../data/camera/service/camera_service_impl.dart' as _i37;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i38;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart' as _i11;
import '../data/movement/service/movement_service_impl.dart' as _i40;
import '../data/permissions/data_source/camera_permission_data_source.dart' as _i14;
import '../data/permissions/service/permissions_service_impl.dart' as _i18;
import '../data/resource/data_source/resource_api_data_source.dart' as _i34;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart' as _i9;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart' as _i12;
import '../data/resource/service/resource_service_impl.dart' as _i42;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i35;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart' as _i13;
import '../data/sensor/service/sensor_service_impl.dart' as _i44;
import '../domain/boat/service/boat_service.dart' as _i20;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i15;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i32;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i22;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i23;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i24;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i26;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i27;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i28;
import '../domain/camera/service/camera_service.dart' as _i36;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i46;
import '../domain/movement/service/movement_service.dart' as _i39;
import '../domain/movement/usecase/get_position_use_case.dart' as _i47;
import '../domain/permissions/service/permissions_service.dart' as _i17;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart' as _i25;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart' as _i19;
import '../domain/resource/service/resource_service.dart' as _i41;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i48;
import '../domain/sensor/service/sensor_service_impl.dart' as _i43;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i49;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i45;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i53;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart' as _i30;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i7;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i29;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart' as _i52;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i50;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart' as _i51;
import 'camera_permission_injectable.dart' as _i55;
import 'navigator_key_injectable.dart' as _i54;
import 'shared_preferences_injectable.dart' as _i56;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i57; // ignore_for_file: unnecessary_lambdas
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i17;
import '../data/camera/data_source/camera_api_data_source.dart' as _i34;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i11;
import '../data/camera/service/camera_service_impl.dart' as _i38;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i39;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i12;
import '../data/movement/service/movement_service_impl.dart' as _i41;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i15;
import '../data/permissions/service/permissions_service_impl.dart' as _i19;
import '../data/resource/data_source/resource_api_data_source.dart' as _i35;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i10;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i13;
import '../data/resource/service/resource_service_impl.dart' as _i43;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i36;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i14;
import '../data/sensor/service/sensor_service_impl.dart' as _i45;
import '../domain/boat/service/boat_service.dart' as _i21;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i16;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i33;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i23;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i24;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i25;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i27;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i28;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i29;
import '../domain/camera/service/camera_service.dart' as _i37;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i47;
import '../domain/movement/service/movement_service.dart' as _i40;
import '../domain/movement/usecase/get_position_use_case.dart' as _i48;
import '../domain/permissions/service/permissions_service.dart' as _i18;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i26;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i20;
import '../domain/resource/service/resource_service.dart' as _i42;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i49;
import '../domain/sensor/service/sensor_service_impl.dart' as _i44;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i50;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i46;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i54;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i31;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i7;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i30;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i53;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i51;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i52;
import 'camera_permission_injectable.dart' as _i56;
import 'navigator_key_injectable.dart' as _i55;
import 'shared_preferences_injectable.dart' as _i57;
import 'uuid_injectable.dart' as _i58;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i59; // ignore_for_file: unnecessary_lambdas

const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
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
  final firebaseAnalyticsModule = _$FirebaseAnalyticsModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  final cameraPermissionModule = _$CameraPermissionModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final uuidModule = _$UuidModule();
  final viamModule = _$ViamModule();
  gh.singleton<_i3.BoatBox>(_i4.CurrentBoatBoxImpl());
  gh.lazySingleton<_i5.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i5.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.singleton<_i6.GlobalKey<_i6.NavigatorState>>(navigatorKeyModule.navigatorKey());
  gh.singleton<_i6.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i7.ScanQrCubit>(() => _i7.ScanQrCubit());
  await gh.factoryAsync<_i8.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i9.ViamAppResourceNameToViamResourceNameMapper>(() => _i9.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i10.ViamCameraDataToViamAppCameraDataMapper>(() => _i10.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i11.ViamPositionToViamAppPositionMapper>(() => _i11.ViamPositionToViamAppPositionMapper());
  gh.factory<_i12.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i12.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i13.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i13.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i14.CameraPermissionDataSource>(() => _i14.CameraPermissionDataSource(get<_i6.Permission>()));
  gh.factory<_i15.CurrentBoatStore>(() => _i16.SharedPreferencesCurrentBoatStore(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i17.PermissionsService>(() => _i18.PermissionsServiceImpl(get<_i14.CameraPermissionDataSource>()));
  gh.factory<_i19.RequestCameraPermissionUseCase>(
      () => _i19.RequestCameraPermissionUseCase(get<_i17.PermissionsService>()));
  gh.factory<_i20.BoatService>(() => _i21.BoatServiceImpl(
  gh.singleton<_i9.Uuid>(uuidModule.uuidV4);
  gh.factory<_i10.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i10.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i11.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i11.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i12.ViamPositionToViamAppPositionMapper>(
      () => _i12.ViamPositionToViamAppPositionMapper());
  gh.factory<_i13.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i13.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i14.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i14.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i15.CameraPermissionDataSource>(
      () => _i15.CameraPermissionDataSource(get<_i6.Permission>()));
  gh.factory<_i16.CurrentBoatStore>(() =>
      _i17.SharedPreferencesCurrentBoatStore(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i18.PermissionsService>(() =>
      _i19.PermissionsServiceImpl(get<_i15.CameraPermissionDataSource>()));
  gh.factory<_i20.RequestCameraPermissionUseCase>(() =>
      _i20.RequestCameraPermissionUseCase(get<_i18.PermissionsService>()));
  gh.factory<_i21.BoatService>(() => _i22.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i16.CurrentBoatStore>(),
      ));
  gh.factory<_i22.CheckConnectionUseCase>(() => _i22.CheckConnectionUseCase(get<_i20.BoatService>()));
  gh.factory<_i23.DeleteBoatUseCase>(() => _i23.DeleteBoatUseCase(get<_i20.BoatService>()));
  gh.factory<_i24.GetBoatsUseCase>(() => _i24.GetBoatsUseCase(get<_i20.BoatService>()));
  gh.factory<_i25.GetCameraPermissionStatusUseCase>(
      () => _i25.GetCameraPermissionStatusUseCase(get<_i17.PermissionsService>()));
  gh.factory<_i26.GetCurrentBoatIdUseCase>(() => _i26.GetCurrentBoatIdUseCase(get<_i20.BoatService>()));
  gh.factory<_i27.RemoveCurrentBoatIdUseCase>(() => _i27.RemoveCurrentBoatIdUseCase(get<_i20.BoatService>()));
  gh.factory<_i28.SetCurrentBoatIdUseCase>(() => _i28.SetCurrentBoatIdUseCase(get<_i20.BoatService>()));
  gh.factory<_i29.SplashCubit>(() => _i29.SplashCubit(
        get<_i26.GetCurrentBoatIdUseCase>(),
        get<_i24.GetBoatsUseCase>(),
  gh.factory<_i23.CheckConnectionUseCase>(
      () => _i23.CheckConnectionUseCase(get<_i21.BoatService>()));
  gh.factory<_i24.DeleteBoatUseCase>(
      () => _i24.DeleteBoatUseCase(get<_i21.BoatService>()));
  gh.factory<_i25.GetBoatsUseCase>(
      () => _i25.GetBoatsUseCase(get<_i21.BoatService>()));
  gh.factory<_i26.GetCameraPermissionStatusUseCase>(() =>
      _i26.GetCameraPermissionStatusUseCase(get<_i18.PermissionsService>()));
  gh.factory<_i27.GetCurrentBoatIdUseCase>(
      () => _i27.GetCurrentBoatIdUseCase(get<_i21.BoatService>()));
  gh.factory<_i28.RemoveCurrentBoatIdUseCase>(
      () => _i28.RemoveCurrentBoatIdUseCase(get<_i21.BoatService>()));
  gh.factory<_i29.SetCurrentBoatIdUseCase>(
      () => _i29.SetCurrentBoatIdUseCase(get<_i21.BoatService>()));
  gh.factory<_i30.SplashCubit>(() => _i30.SplashCubit(
        get<_i27.GetCurrentBoatIdUseCase>(),
        get<_i25.GetBoatsUseCase>(),
      ));
  gh.factory<_i31.ViamDrawerCubit>(() => _i31.ViamDrawerCubit(
        get<_i25.GetBoatsUseCase>(),
        get<_i27.GetCurrentBoatIdUseCase>(),
        get<_i24.DeleteBoatUseCase>(),
        get<_i29.SetCurrentBoatIdUseCase>(),
        get<_i28.RemoveCurrentBoatIdUseCase>(),
      ));
  await gh.singletonAsync<_i32.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i25.GetBoatsUseCase>(),
      get<_i27.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i32.AddNewBoatUseCase>(() => _i32.AddNewBoatUseCase(get<_i20.BoatService>()));
  gh.factory<_i33.CameraDataSource>(() => _i33.CameraDataSource(get<_i31.ViamSdk>()));
  gh.factory<_i34.ResourceDataSource>(() => _i34.ResourceDataSource(get<_i31.ViamSdk>()));
  gh.factory<_i35.SensorDataSource>(() => _i35.SensorDataSource(get<_i31.ViamSdk>()));
  gh.factory<_i36.ViamAppCameraService>(() => _i37.ViamAppCameraServiceImpl(
        get<_i33.CameraDataSource>(),
        get<_i10.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i38.ViamAppMovementSdkDataSource>(() => _i38.ViamAppMovementSdkDataSource(get<_i31.ViamSdk>()));
  gh.factory<_i39.ViamAppMovementService>(() => _i40.ViamAppMovementServiceImpl(
        get<_i38.ViamAppMovementSdkDataSource>(),
        get<_i9.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i11.ViamPositionToViamAppPositionMapper>(),
  gh.factory<_i33.AddNewBoatUseCase>(
      () => _i33.AddNewBoatUseCase(get<_i21.BoatService>()));
  gh.factory<_i34.CameraDataSource>(
      () => _i34.CameraDataSource(get<_i32.ViamSdk>()));
  gh.factory<_i35.ResourceDataSource>(
      () => _i35.ResourceDataSource(get<_i32.ViamSdk>()));
  gh.factory<_i36.SensorDataSource>(
      () => _i36.SensorDataSource(get<_i32.ViamSdk>()));
  gh.factory<_i37.ViamAppCameraService>(() => _i38.ViamAppCameraServiceImpl(
        get<_i34.CameraDataSource>(),
        get<_i11.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i39.ViamAppMovementSdkDataSource>(
      () => _i39.ViamAppMovementSdkDataSource(get<_i32.ViamSdk>()));
  gh.factory<_i40.ViamAppMovementService>(() => _i41.ViamAppMovementServiceImpl(
        get<_i39.ViamAppMovementSdkDataSource>(),
        get<_i10.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i12.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i42.ViamAppResourceService>(() => _i43.ViamAppResourceServiceImpl(
        get<_i35.ResourceDataSource>(),
        get<_i13.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i44.ViamAppSensorService>(() => _i45.ViamAppSensorServiceImpl(
        get<_i36.SensorDataSource>(),
        get<_i10.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i14.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i46.AddBoatCubit>(() => _i46.AddBoatCubit(
        get<_i33.AddNewBoatUseCase>(),
        get<_i23.CheckConnectionUseCase>(),
        get<_i29.SetCurrentBoatIdUseCase>(),
        get<_i26.GetCameraPermissionStatusUseCase>(),
        get<_i20.RequestCameraPermissionUseCase>(),
        get<_i9.Uuid>(),
      ));
  gh.factory<_i46.GetCameraDataUseCase>(() => _i46.GetCameraDataUseCase(get<_i36.ViamAppCameraService>()));
  gh.factory<_i47.GetPostionUseCase>(() => _i47.GetPostionUseCase(get<_i39.ViamAppMovementService>()));
  gh.factory<_i48.GetResourceNamesUseCase>(() => _i48.GetResourceNamesUseCase(get<_i41.ViamAppResourceService>()));
  gh.factory<_i49.GetSensorDataUseCase>(() => _i49.GetSensorDataUseCase(get<_i43.ViamAppSensorService>()));
  gh.factory<_i50.MapTileCubit>(() => _i50.MapTileCubit(
        get<_i47.GetPostionUseCase>(),
        get<_i49.GetSensorDataUseCase>(),
      ));
  gh.factory<_i51.SensorTileCubit>(() => _i51.SensorTileCubit(get<_i49.GetSensorDataUseCase>()));
  gh.factory<_i52.CameraTileCubit>(() => _i52.CameraTileCubit(get<_i46.GetCameraDataUseCase>()));
  gh.factory<_i53.DashboardCubit>(() => _i53.DashboardCubit(
        get<_i48.GetResourceNamesUseCase>(),
        get<_i24.GetBoatsUseCase>(),
        get<_i26.GetCurrentBoatIdUseCase>(),
  gh.factory<_i47.GetCameraDataUseCase>(
      () => _i47.GetCameraDataUseCase(get<_i37.ViamAppCameraService>()));
  gh.factory<_i48.GetPostionUseCase>(
      () => _i48.GetPostionUseCase(get<_i40.ViamAppMovementService>()));
  gh.factory<_i49.GetResourceNamesUseCase>(
      () => _i49.GetResourceNamesUseCase(get<_i42.ViamAppResourceService>()));
  gh.factory<_i50.GetSensorDataUseCase>(
      () => _i50.GetSensorDataUseCase(get<_i44.ViamAppSensorService>()));
  gh.factory<_i51.MapTileCubit>(() => _i51.MapTileCubit(
        get<_i48.GetPostionUseCase>(),
        get<_i50.GetSensorDataUseCase>(),
      ));
  gh.factory<_i52.SensorTileCubit>(
      () => _i52.SensorTileCubit(get<_i50.GetSensorDataUseCase>()));
  gh.factory<_i53.CameraTileCubit>(
      () => _i53.CameraTileCubit(get<_i47.GetCameraDataUseCase>()));
  gh.factory<_i54.DashboardCubit>(() => _i54.DashboardCubit(
        get<_i49.GetResourceNamesUseCase>(),
        get<_i25.GetBoatsUseCase>(),
        get<_i27.GetCurrentBoatIdUseCase>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i55.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i56.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i57.SharedPreferencesModule {}

class _$UuidModule extends _i58.UuidModule {}

class _$ViamModule extends _i59.ViamModule {}
