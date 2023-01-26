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

import '../../sdk/viam_sdk.dart' as _i40;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i17;
import '../data/analytics/service/analytics_service_impl.dart' as _i19;
import '../data/boat/service/boat_service_impl.dart' as _i30;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i22;
import '../data/camera/data_source/camera_api_data_source.dart' as _i42;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i12;
import '../data/camera/service/camera_service_impl.dart' as _i46;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i47;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i13;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i14;
import '../data/movement/service/movement_service_impl.dart' as _i49;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i20;
import '../data/permissions/service/permissions_service_impl.dart' as _i27;
import '../data/resource/data_source/resource_api_data_source.dart' as _i43;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i11;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i15;
import '../data/resource/service/resource_service_impl.dart' as _i51;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i44;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i16;
import '../data/sensor/service/sensor_service_impl.dart' as _i53;
import '../domain/analytics/service/analytics_service.dart' as _i18;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i23;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i24;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i25;
import '../domain/boat/service/boat_service.dart' as _i29;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i21;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i41;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i31;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i32;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i33;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i35;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i36;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i37;
import '../domain/camera/service/camera_service.dart' as _i45;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i55;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i56;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i63;
import '../domain/movement/service/movement_service.dart' as _i48;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i57;
import '../domain/movement/usecase/get_position_use_case.dart' as _i58;
import '../domain/permissions/service/permissions_service.dart' as _i26;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i34;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i28;
import '../domain/resource/service/resource_service.dart' as _i50;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i59;
import '../domain/sensor/service/sensor_service_impl.dart' as _i52;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i60;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i54;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i66;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i39;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i8;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i38;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i65;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i61;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i62;
import '../presentation/widgets/webrtc_camera_tile/cubit/webrtc_camera_cubit.dart'
    as _i64;
import 'camera_permission_injectable.dart' as _i69;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i67;
import 'navigator_key_injectable.dart' as _i68;
import 'shared_preferences_injectable.dart' as _i70;
import 'uuid_injectable.dart' as _i71;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i72;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
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
  gh.singleton<_i5.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.lazySingleton<_i5.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
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
  gh.factory<_i13.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i13.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i14.ViamPositionToViamAppPositionMapper>(
      () => _i14.ViamPositionToViamAppPositionMapper());
  gh.factory<_i15.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i15.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i16.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i16.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i17.AnalyticsDataSink>(
      () => _i17.AnalyticsDataSinkImpl(get<_i5.FirebaseAnalytics>()));
  gh.factory<_i18.AnalyticsService>(
      () => _i19.AnalyticsServiceImpl(get<_i17.AnalyticsDataSink>()));
  gh.factory<_i20.CameraPermissionDataSource>(
      () => _i20.CameraPermissionDataSource(get<_i7.Permission>()));
  gh.factory<_i21.CurrentBoatStore>(() =>
      _i22.SharedPreferencesCurrentBoatStore(get<_i9.SharedPreferences>()));
  gh.factory<_i23.LogAddBoatEventUseCase>(
      () => _i23.LogAddBoatEventUseCase(get<_i18.AnalyticsService>()));
  gh.factory<_i24.LogDeleteBoatEventUseCase>(
      () => _i24.LogDeleteBoatEventUseCase(get<_i18.AnalyticsService>()));
  gh.factory<_i25.LogOpenAppEventUseCase>(
      () => _i25.LogOpenAppEventUseCase(get<_i18.AnalyticsService>()));
  gh.lazySingleton<_i26.PermissionsService>(() =>
      _i27.PermissionsServiceImpl(get<_i20.CameraPermissionDataSource>()));
  gh.factory<_i28.RequestCameraPermissionUseCase>(() =>
      _i28.RequestCameraPermissionUseCase(get<_i26.PermissionsService>()));
  gh.factory<_i29.BoatService>(() => _i30.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i21.CurrentBoatStore>(),
      ));
  gh.factory<_i31.CheckConnectionUseCase>(
      () => _i31.CheckConnectionUseCase(get<_i29.BoatService>()));
  gh.factory<_i32.DeleteBoatUseCase>(
      () => _i32.DeleteBoatUseCase(get<_i29.BoatService>()));
  gh.factory<_i33.GetBoatsUseCase>(
      () => _i33.GetBoatsUseCase(get<_i29.BoatService>()));
  gh.factory<_i34.GetCameraPermissionStatusUseCase>(() =>
      _i34.GetCameraPermissionStatusUseCase(get<_i26.PermissionsService>()));
  gh.factory<_i35.GetCurrentBoatIdUseCase>(
      () => _i35.GetCurrentBoatIdUseCase(get<_i29.BoatService>()));
  gh.factory<_i36.RemoveCurrentBoatIdUseCase>(
      () => _i36.RemoveCurrentBoatIdUseCase(get<_i29.BoatService>()));
  gh.factory<_i37.SetCurrentBoatIdUseCase>(
      () => _i37.SetCurrentBoatIdUseCase(get<_i29.BoatService>()));
  gh.factory<_i38.SplashCubit>(() => _i38.SplashCubit(
        get<_i35.GetCurrentBoatIdUseCase>(),
        get<_i33.GetBoatsUseCase>(),
      ));
  gh.factory<_i39.ViamDrawerCubit>(() => _i39.ViamDrawerCubit(
        get<_i33.GetBoatsUseCase>(),
        get<_i35.GetCurrentBoatIdUseCase>(),
        get<_i32.DeleteBoatUseCase>(),
        get<_i37.SetCurrentBoatIdUseCase>(),
        get<_i36.RemoveCurrentBoatIdUseCase>(),
        get<_i24.LogDeleteBoatEventUseCase>(),
      ));
  await gh.singletonAsync<_i40.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i33.GetBoatsUseCase>(),
      get<_i35.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i41.AddNewBoatUseCase>(
      () => _i41.AddNewBoatUseCase(get<_i29.BoatService>()));
  gh.factory<_i42.CameraDataSource>(
      () => _i42.CameraDataSource(get<_i40.ViamSdk>()));
  gh.factory<_i43.ResourceDataSource>(
      () => _i43.ResourceDataSource(get<_i40.ViamSdk>()));
  gh.factory<_i44.SensorDataSource>(
      () => _i44.SensorDataSource(get<_i40.ViamSdk>()));
  gh.factory<_i45.ViamAppCameraService>(() => _i46.ViamAppCameraServiceImpl(
        get<_i42.CameraDataSource>(),
        get<_i12.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i47.ViamAppMovementSdkDataSource>(
      () => _i47.ViamAppMovementSdkDataSource(get<_i40.ViamSdk>()));
  gh.factory<_i48.ViamAppMovementService>(() => _i49.ViamAppMovementServiceImpl(
        get<_i47.ViamAppMovementSdkDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i14.ViamPositionToViamAppPositionMapper>(),
        get<_i13.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i50.ViamAppResourceService>(() => _i51.ViamAppResourceServiceImpl(
        get<_i43.ResourceDataSource>(),
        get<_i15.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i52.ViamAppSensorService>(() => _i53.ViamAppSensorServiceImpl(
        get<_i44.SensorDataSource>(),
        get<_i11.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i16.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i54.AddBoatCubit>(() => _i54.AddBoatCubit(
        get<_i41.AddNewBoatUseCase>(),
        get<_i31.CheckConnectionUseCase>(),
        get<_i37.SetCurrentBoatIdUseCase>(),
        get<_i34.GetCameraPermissionStatusUseCase>(),
        get<_i28.RequestCameraPermissionUseCase>(),
        get<_i23.LogAddBoatEventUseCase>(),
        get<_i10.Uuid>(),
      ));
  gh.factory<_i55.GetCameraDataUseCase>(
      () => _i55.GetCameraDataUseCase(get<_i45.ViamAppCameraService>()));
  gh.factory<_i56.GetCameraVideoUseCase>(
      () => _i56.GetCameraVideoUseCase(get<_i45.ViamAppCameraService>()));
  gh.factory<_i57.GetLinearVelocityUseCase>(
      () => _i57.GetLinearVelocityUseCase(get<_i48.ViamAppMovementService>()));
  gh.factory<_i58.GetPostionUseCase>(
      () => _i58.GetPostionUseCase(get<_i48.ViamAppMovementService>()));
  gh.factory<_i59.GetResourceNamesUseCase>(
      () => _i59.GetResourceNamesUseCase(get<_i50.ViamAppResourceService>()));
  gh.factory<_i60.GetSensorDataUseCase>(
      () => _i60.GetSensorDataUseCase(get<_i52.ViamAppSensorService>()));
  gh.factory<_i61.MapTileCubit>(() => _i61.MapTileCubit(
        get<_i58.GetPostionUseCase>(),
        get<_i60.GetSensorDataUseCase>(),
      ));
  gh.factory<_i62.SensorTileCubit>(() => _i62.SensorTileCubit(
        get<_i60.GetSensorDataUseCase>(),
        get<_i57.GetLinearVelocityUseCase>(),
      ));
  gh.factory<_i63.SubscribeToCameraStreamUseCase>(() =>
      _i63.SubscribeToCameraStreamUseCase(get<_i45.ViamAppCameraService>()));
  gh.factory<_i64.WebrtcCameraCubit>(() => _i64.WebrtcCameraCubit(
        get<_i56.GetCameraVideoUseCase>(),
        get<_i63.SubscribeToCameraStreamUseCase>(),
      ));
  gh.factory<_i65.CameraTileCubit>(
      () => _i65.CameraTileCubit(get<_i55.GetCameraDataUseCase>()));
  gh.factory<_i66.DashboardCubit>(() => _i66.DashboardCubit(
        get<_i59.GetResourceNamesUseCase>(),
        get<_i33.GetBoatsUseCase>(),
        get<_i35.GetCurrentBoatIdUseCase>(),
      ));
  return get;
}

class _$FirebaseAnalyticsModule extends _i67.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i68.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i69.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i70.SharedPreferencesModule {}

class _$UuidModule extends _i71.UuidModule {}

class _$ViamModule extends _i72.ViamModule {}
