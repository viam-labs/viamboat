// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i9;
import 'package:uuid/uuid.dart' as _i10;

import '../../sdk/viam_sdk.dart' as _i39;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i16;
import '../data/analytics/service/analytics_service_impl.dart' as _i18;
import '../data/boat/service/boat_service_impl.dart' as _i29;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i21;
import '../data/camera/data_source/camera_api_data_source.dart' as _i41;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i12;
import '../data/camera/service/camera_service_impl.dart' as _i45;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i46;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i13;
import '../data/movement/service/movement_service_impl.dart' as _i48;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i19;
import '../data/permissions/service/permissions_service_impl.dart' as _i26;
import '../data/resource/data_source/resource_api_data_source.dart' as _i42;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i11;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i14;
import '../data/resource/service/resource_service_impl.dart' as _i50;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i43;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i15;
import '../data/sensor/service/sensor_service_impl.dart' as _i52;
import '../domain/analytics/service/analytics_service.dart' as _i17;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i22;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i23;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i24;
import '../domain/boat/service/boat_service.dart' as _i28;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i20;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i40;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i30;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i31;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i32;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i34;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i35;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i36;
import '../domain/camera/service/camera_service.dart' as _i44;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i54;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i55;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i61;
import '../domain/movement/service/movement_service.dart' as _i47;
import '../domain/movement/usecase/get_position_use_case.dart' as _i56;
import '../domain/permissions/service/permissions_service.dart' as _i25;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i33;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i27;
import '../domain/resource/service/resource_service.dart' as _i49;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i57;
import '../domain/sensor/service/sensor_service_impl.dart' as _i51;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i58;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i53;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i64;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i38;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i8;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i37;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i63;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i59;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i60;
import '../presentation/widgets/webrtc_camera_tile/cubit/webrtc_camera_cubit.dart'
    as _i62;
import 'camera_permission_injectable.dart' as _i67;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i65;
import 'navigator_key_injectable.dart' as _i66;
import 'shared_preferences_injectable.dart' as _i68;
import 'uuid_injectable.dart' as _i69;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i70;

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
  gh.singleton<_i6.GlobalKey<_i6.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.singleton<_i7.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i8.ScanQrCubit>(() => _i8.ScanQrCubit());
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i10.Uuid>(uuidModule.uuid);
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
  gh.factory<_i16.AnalyticsDataSink>(
      () => _i16.AnalyticsDataSinkImpl(get<_i5.FirebaseAnalytics>()));
  gh.factory<_i17.AnalyticsService>(
      () => _i18.AnalyticsServiceImpl(get<_i16.AnalyticsDataSink>()));
  gh.factory<_i19.CameraPermissionDataSource>(
      () => _i19.CameraPermissionDataSource(get<_i7.Permission>()));
  gh.factory<_i20.CurrentBoatStore>(() =>
      _i21.SharedPreferencesCurrentBoatStore(get<_i9.SharedPreferences>()));
  gh.factory<_i22.LogAddBoatEventUseCase>(
      () => _i22.LogAddBoatEventUseCase(get<_i17.AnalyticsService>()));
  gh.factory<_i23.LogDeleteBoatEventUseCase>(
      () => _i23.LogDeleteBoatEventUseCase(get<_i17.AnalyticsService>()));
  gh.factory<_i24.LogOpenAppEventUseCase>(
      () => _i24.LogOpenAppEventUseCase(get<_i17.AnalyticsService>()));
  gh.lazySingleton<_i25.PermissionsService>(() =>
      _i26.PermissionsServiceImpl(get<_i19.CameraPermissionDataSource>()));
  gh.factory<_i27.RequestCameraPermissionUseCase>(() =>
      _i27.RequestCameraPermissionUseCase(get<_i25.PermissionsService>()));
  gh.factory<_i28.BoatService>(() => _i29.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i20.CurrentBoatStore>(),
      ));
  gh.factory<_i30.CheckConnectionUseCase>(
      () => _i30.CheckConnectionUseCase(get<_i28.BoatService>()));
  gh.factory<_i31.DeleteBoatUseCase>(
      () => _i31.DeleteBoatUseCase(get<_i28.BoatService>()));
  gh.factory<_i32.GetBoatsUseCase>(
      () => _i32.GetBoatsUseCase(get<_i28.BoatService>()));
  gh.factory<_i33.GetCameraPermissionStatusUseCase>(() =>
      _i33.GetCameraPermissionStatusUseCase(get<_i25.PermissionsService>()));
  gh.factory<_i34.GetCurrentBoatIdUseCase>(
      () => _i34.GetCurrentBoatIdUseCase(get<_i28.BoatService>()));
  gh.factory<_i35.RemoveCurrentBoatIdUseCase>(
      () => _i35.RemoveCurrentBoatIdUseCase(get<_i28.BoatService>()));
  gh.factory<_i36.SetCurrentBoatIdUseCase>(
      () => _i36.SetCurrentBoatIdUseCase(get<_i28.BoatService>()));
  gh.factory<_i37.SplashCubit>(() => _i37.SplashCubit(
        get<_i34.GetCurrentBoatIdUseCase>(),
        get<_i32.GetBoatsUseCase>(),
      ));
  gh.factory<_i38.ViamDrawerCubit>(() => _i38.ViamDrawerCubit(
        get<_i32.GetBoatsUseCase>(),
        get<_i34.GetCurrentBoatIdUseCase>(),
        get<_i31.DeleteBoatUseCase>(),
        get<_i36.SetCurrentBoatIdUseCase>(),
        get<_i35.RemoveCurrentBoatIdUseCase>(),
        get<_i23.LogDeleteBoatEventUseCase>(),
      ));
  await gh.singletonAsync<_i39.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i32.GetBoatsUseCase>(),
      get<_i34.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i40.AddNewBoatUseCase>(
      () => _i40.AddNewBoatUseCase(get<_i28.BoatService>()));
  gh.factory<_i41.CameraDataSource>(
      () => _i41.CameraDataSource(get<_i39.ViamSdk>()));
  gh.factory<_i42.ResourceDataSource>(
      () => _i42.ResourceDataSource(get<_i39.ViamSdk>()));
  gh.factory<_i43.SensorDataSource>(
      () => _i43.SensorDataSource(get<_i39.ViamSdk>()));
  gh.factory<_i44.ViamAppCameraService>(() => _i45.ViamAppCameraServiceImpl(
        get<_i41.CameraDataSource>(),
        get<_i12.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i46.ViamAppMovementSdkDataSource>(
      () => _i46.ViamAppMovementSdkDataSource(get<_i39.ViamSdk>()));
  gh.factory<_i47.ViamAppMovementService>(() => _i48.ViamAppMovementServiceImpl(
        get<_i46.ViamAppMovementSdkDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i13.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i49.ViamAppResourceService>(() => _i50.ViamAppResourceServiceImpl(
        get<_i42.ResourceDataSource>(),
        get<_i14.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i51.ViamAppSensorService>(() => _i52.ViamAppSensorServiceImpl(
        get<_i43.SensorDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i15.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i53.AddBoatCubit>(() => _i53.AddBoatCubit(
        get<_i40.AddNewBoatUseCase>(),
        get<_i30.CheckConnectionUseCase>(),
        get<_i36.SetCurrentBoatIdUseCase>(),
        get<_i33.GetCameraPermissionStatusUseCase>(),
        get<_i27.RequestCameraPermissionUseCase>(),
        get<_i22.LogAddBoatEventUseCase>(),
        get<_i10.Uuid>(),
      ));
  gh.factory<_i54.GetCameraDataUseCase>(
      () => _i54.GetCameraDataUseCase(get<_i44.ViamAppCameraService>()));
  gh.factory<_i55.GetCameraVideoUseCase>(
      () => _i55.GetCameraVideoUseCase(get<_i44.ViamAppCameraService>()));
  gh.factory<_i56.GetPostionUseCase>(
      () => _i56.GetPostionUseCase(get<_i47.ViamAppMovementService>()));
  gh.factory<_i57.GetResourceNamesUseCase>(
      () => _i57.GetResourceNamesUseCase(get<_i49.ViamAppResourceService>()));
  gh.factory<_i58.GetSensorDataUseCase>(
      () => _i58.GetSensorDataUseCase(get<_i51.ViamAppSensorService>()));
  gh.factory<_i59.MapTileCubit>(() => _i59.MapTileCubit(
        get<_i56.GetPostionUseCase>(),
        get<_i58.GetSensorDataUseCase>(),
      ));
  gh.factory<_i60.SensorTileCubit>(
      () => _i60.SensorTileCubit(get<_i58.GetSensorDataUseCase>()));
  gh.factory<_i61.SubscribeToCameraStreamUseCase>(() =>
      _i61.SubscribeToCameraStreamUseCase(get<_i44.ViamAppCameraService>()));
  gh.factory<_i62.WebrtcCameraCubit>(() => _i62.WebrtcCameraCubit(
        get<_i55.GetCameraVideoUseCase>(),
        get<_i61.SubscribeToCameraStreamUseCase>(),
      ));
  gh.factory<_i63.CameraTileCubit>(
      () => _i63.CameraTileCubit(get<_i54.GetCameraDataUseCase>()));
  gh.factory<_i64.DashboardCubit>(() => _i64.DashboardCubit(
        get<_i57.GetResourceNamesUseCase>(),
        get<_i32.GetBoatsUseCase>(),
        get<_i34.GetCurrentBoatIdUseCase>(),
      ));
  return get;
}

class _$FirebaseAnalyticsModule extends _i65.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i66.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i67.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i68.SharedPreferencesModule {}

class _$UuidModule extends _i69.UuidModule {}

class _$ViamModule extends _i70.ViamModule {}
