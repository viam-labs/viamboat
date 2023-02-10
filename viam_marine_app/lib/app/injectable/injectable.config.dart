// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:uuid/uuid.dart' as _i11;

import '../../sdk/viam_sdk.dart' as _i42;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i18;
import '../data/analytics/service/analytics_service_impl.dart' as _i20;
import '../data/boat/service/boat_service_impl.dart' as _i31;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i23;
import '../data/camera/data_source/camera_api_data_source.dart' as _i44;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i13;
import '../data/camera/service/camera_service_impl.dart' as _i48;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i49;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i14;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i15;
import '../data/movement/service/movement_service_impl.dart' as _i51;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i21;
import '../data/permissions/service/permissions_service_impl.dart' as _i28;
import '../data/resource/data_source/resource_api_data_source.dart' as _i45;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i12;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i16;
import '../data/resource/service/resource_service_impl.dart' as _i53;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i46;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i17;
import '../data/sensor/service/sensor_service_impl.dart' as _i55;
import '../domain/analytics/service/analytics_service.dart' as _i19;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i24;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i25;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i26;
import '../domain/boat/service/boat_service.dart' as _i30;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i22;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i43;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i32;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i33;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i34;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i35;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i37;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i38;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i39;
import '../domain/camera/service/camera_service.dart' as _i47;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i57;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i58;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i65;
import '../domain/current_time/get_current_time_use_case.dart' as _i6;
import '../domain/movement/service/movement_service.dart' as _i50;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i59;
import '../domain/movement/usecase/get_position_use_case.dart' as _i60;
import '../domain/permissions/service/permissions_service.dart' as _i27;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i36;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i29;
import '../domain/resource/service/resource_service.dart' as _i52;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i61;
import '../domain/sensor/service/sensor_service_impl.dart' as _i54;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i62;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i56;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i68;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i41;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i9;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i40;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i67;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i63;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i64;
import '../presentation/widgets/webrtc_camera_tile/cubit/webrtc_camera_cubit.dart'
    as _i66;
import 'camera_permission_injectable.dart' as _i71;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i69;
import 'navigator_key_injectable.dart' as _i70;
import 'shared_preferences_injectable.dart' as _i72;
import 'uuid_injectable.dart' as _i73;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i74;

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
  gh.factory<_i6.GetCurrentTimeUseCase>(() => _i6.GetCurrentTimeUseCase());
  gh.singleton<_i7.GlobalKey<_i7.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.singleton<_i8.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i9.ScanQrCubit>(() => _i9.ScanQrCubit());
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i11.Uuid>(uuidModule.uuid);
  gh.factory<_i12.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i12.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i13.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i13.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i14.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i14.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i15.ViamPositionToViamAppPositionMapper>(
      () => _i15.ViamPositionToViamAppPositionMapper());
  gh.factory<_i16.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i16.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i17.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i17.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i18.AnalyticsDataSink>(
      () => _i18.AnalyticsDataSinkImpl(get<_i5.FirebaseAnalytics>()));
  gh.factory<_i19.AnalyticsService>(
      () => _i20.AnalyticsServiceImpl(get<_i18.AnalyticsDataSink>()));
  gh.factory<_i21.CameraPermissionDataSource>(
      () => _i21.CameraPermissionDataSource(get<_i8.Permission>()));
  gh.factory<_i22.CurrentBoatStore>(() =>
      _i23.SharedPreferencesCurrentBoatStore(get<_i10.SharedPreferences>()));
  gh.factory<_i24.LogAddBoatEventUseCase>(
      () => _i24.LogAddBoatEventUseCase(get<_i19.AnalyticsService>()));
  gh.factory<_i25.LogDeleteBoatEventUseCase>(
      () => _i25.LogDeleteBoatEventUseCase(get<_i19.AnalyticsService>()));
  gh.factory<_i26.LogOpenAppEventUseCase>(
      () => _i26.LogOpenAppEventUseCase(get<_i19.AnalyticsService>()));
  gh.lazySingleton<_i27.PermissionsService>(() =>
      _i28.PermissionsServiceImpl(get<_i21.CameraPermissionDataSource>()));
  gh.factory<_i29.RequestCameraPermissionUseCase>(() =>
      _i29.RequestCameraPermissionUseCase(get<_i27.PermissionsService>()));
  gh.factory<_i30.BoatService>(() => _i31.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i22.CurrentBoatStore>(),
      ));
  gh.factory<_i32.ChangeBoatNameUseCase>(
      () => _i32.ChangeBoatNameUseCase(get<_i30.BoatService>()));
  gh.factory<_i33.CheckConnectionUseCase>(
      () => _i33.CheckConnectionUseCase(get<_i30.BoatService>()));
  gh.factory<_i34.DeleteBoatUseCase>(
      () => _i34.DeleteBoatUseCase(get<_i30.BoatService>()));
  gh.factory<_i35.GetBoatsUseCase>(
      () => _i35.GetBoatsUseCase(get<_i30.BoatService>()));
  gh.factory<_i36.GetCameraPermissionStatusUseCase>(() =>
      _i36.GetCameraPermissionStatusUseCase(get<_i27.PermissionsService>()));
  gh.factory<_i37.GetCurrentBoatIdUseCase>(
      () => _i37.GetCurrentBoatIdUseCase(get<_i30.BoatService>()));
  gh.factory<_i38.RemoveCurrentBoatIdUseCase>(
      () => _i38.RemoveCurrentBoatIdUseCase(get<_i30.BoatService>()));
  gh.factory<_i39.SetCurrentBoatIdUseCase>(
      () => _i39.SetCurrentBoatIdUseCase(get<_i30.BoatService>()));
  gh.factory<_i40.SplashCubit>(() => _i40.SplashCubit(
        get<_i37.GetCurrentBoatIdUseCase>(),
        get<_i35.GetBoatsUseCase>(),
      ));
  gh.factory<_i41.ViamDrawerCubit>(() => _i41.ViamDrawerCubit(
        get<_i35.GetBoatsUseCase>(),
        get<_i37.GetCurrentBoatIdUseCase>(),
        get<_i34.DeleteBoatUseCase>(),
        get<_i39.SetCurrentBoatIdUseCase>(),
        get<_i38.RemoveCurrentBoatIdUseCase>(),
        get<_i25.LogDeleteBoatEventUseCase>(),
        get<_i32.ChangeBoatNameUseCase>(),
      ));
  await gh.singletonAsync<_i42.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i35.GetBoatsUseCase>(),
      get<_i37.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i43.AddNewBoatUseCase>(
      () => _i43.AddNewBoatUseCase(get<_i30.BoatService>()));
  gh.factory<_i44.CameraDataSource>(
      () => _i44.CameraDataSource(get<_i42.ViamSdk>()));
  gh.factory<_i45.ResourceDataSource>(
      () => _i45.ResourceDataSource(get<_i42.ViamSdk>()));
  gh.factory<_i46.SensorDataSource>(
      () => _i46.SensorDataSource(get<_i42.ViamSdk>()));
  gh.factory<_i47.ViamAppCameraService>(() => _i48.ViamAppCameraServiceImpl(
        get<_i44.CameraDataSource>(),
        get<_i13.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i49.ViamAppMovementSdkDataSource>(
      () => _i49.ViamAppMovementSdkDataSource(get<_i42.ViamSdk>()));
  gh.factory<_i50.ViamAppMovementService>(() => _i51.ViamAppMovementServiceImpl(
        get<_i49.ViamAppMovementSdkDataSource>(),
        get<_i12.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i15.ViamPositionToViamAppPositionMapper>(),
        get<_i14.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i52.ViamAppResourceService>(() => _i53.ViamAppResourceServiceImpl(
        get<_i45.ResourceDataSource>(),
        get<_i16.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i54.ViamAppSensorService>(() => _i55.ViamAppSensorServiceImpl(
        get<_i46.SensorDataSource>(),
        get<_i12.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i17.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i56.AddBoatCubit>(() => _i56.AddBoatCubit(
        get<_i43.AddNewBoatUseCase>(),
        get<_i33.CheckConnectionUseCase>(),
        get<_i39.SetCurrentBoatIdUseCase>(),
        get<_i36.GetCameraPermissionStatusUseCase>(),
        get<_i29.RequestCameraPermissionUseCase>(),
        get<_i24.LogAddBoatEventUseCase>(),
        get<_i11.Uuid>(),
        get<_i35.GetBoatsUseCase>(),
      ));
  gh.factory<_i57.GetCameraDataUseCase>(
      () => _i57.GetCameraDataUseCase(get<_i47.ViamAppCameraService>()));
  gh.factory<_i58.GetCameraVideoUseCase>(
      () => _i58.GetCameraVideoUseCase(get<_i47.ViamAppCameraService>()));
  gh.factory<_i59.GetLinearVelocityUseCase>(
      () => _i59.GetLinearVelocityUseCase(get<_i50.ViamAppMovementService>()));
  gh.factory<_i60.GetPostionUseCase>(
      () => _i60.GetPostionUseCase(get<_i50.ViamAppMovementService>()));
  gh.factory<_i61.GetResourceNamesUseCase>(
      () => _i61.GetResourceNamesUseCase(get<_i52.ViamAppResourceService>()));
  gh.factory<_i62.GetSensorDataUseCase>(
      () => _i62.GetSensorDataUseCase(get<_i54.ViamAppSensorService>()));
  gh.factory<_i63.MapTileCubit>(() => _i63.MapTileCubit(
        get<_i60.GetPostionUseCase>(),
        get<_i62.GetSensorDataUseCase>(),
        get<_i6.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i64.SensorTileCubit>(() => _i64.SensorTileCubit(
        get<_i62.GetSensorDataUseCase>(),
        get<_i59.GetLinearVelocityUseCase>(),
        get<_i6.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i65.SubscribeToCameraStreamUseCase>(() =>
      _i65.SubscribeToCameraStreamUseCase(get<_i47.ViamAppCameraService>()));
  gh.factory<_i66.WebrtcCameraCubit>(() => _i66.WebrtcCameraCubit(
        get<_i58.GetCameraVideoUseCase>(),
        get<_i65.SubscribeToCameraStreamUseCase>(),
      ));
  gh.factory<_i67.CameraTileCubit>(
      () => _i67.CameraTileCubit(get<_i57.GetCameraDataUseCase>()));
  gh.factory<_i68.DashboardCubit>(() => _i68.DashboardCubit(
        get<_i61.GetResourceNamesUseCase>(),
        get<_i35.GetBoatsUseCase>(),
        get<_i37.GetCurrentBoatIdUseCase>(),
      ));
  return get;
}

class _$FirebaseAnalyticsModule extends _i69.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i70.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i71.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i72.SharedPreferencesModule {}

class _$UuidModule extends _i73.UuidModule {}

class _$ViamModule extends _i74.ViamModule {}
