// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i7;
import 'package:flutter/material.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:uuid/uuid.dart' as _i15;

import '../../sdk/viam_sdk.dart' as _i46;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i22;
import '../data/analytics/service/analytics_service_impl.dart' as _i24;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i35;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i27;
import '../data/camera/data_source/camera_api_data_source.dart' as _i49;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i17;
import '../data/camera/service/camera_service_impl.dart' as _i55;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i56;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i18;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i19;
import '../data/movement/service/movement_service_impl.dart' as _i58;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i25;
import '../data/permissions/service/permissions_service_impl.dart' as _i32;
import '../data/resource/data_source/resource_api_data_source.dart' as _i52;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i16;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i20;
import '../data/resource/service/resource_service_impl.dart' as _i60;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i53;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i21;
import '../data/sensor/service/sensor_service_impl.dart' as _i62;
import '../domain/analytics/service/analytics_service.dart' as _i23;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i28;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i29;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i30;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i34;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i26;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i47;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i36;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i37;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i38;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i39;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i41;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i10;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i42;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i43;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i14;
import '../domain/camera/service/camera_service.dart' as _i54;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i64;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i65;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i73;
import '../domain/current_time/get_current_time_use_case.dart' as _i8;
import '../domain/movement/service/movement_service.dart' as _i57;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i66;
import '../domain/movement/usecase/get_position_use_case.dart' as _i67;
import '../domain/permissions/service/permissions_service.dart' as _i31;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i40;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i33;
import '../domain/resource/service/resource_service.dart' as _i59;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i68;
import '../domain/sensor/service/sensor_service_impl.dart' as _i61;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i69;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i63;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i48;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i74;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i50;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i51;
import '../presentation/page/main/cubit/main_cubit.dart' as _i70;
import '../presentation/page/map/cubit/map_cubit.dart' as _i71;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i12;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i44;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i45;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i75;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i72;
import 'camera_permission_injectable.dart' as _i78;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i76;
import 'navigator_key_injectable.dart' as _i77;
import 'shared_preferences_injectable.dart' as _i79;
import 'uuid_injectable.dart' as _i80;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i81;

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
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(
      () => _i6.BoatChangeBroadcasterImpl());
  gh.lazySingleton<_i7.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i7.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.factory<_i8.GetCurrentTimeUseCase>(() => _i8.GetCurrentTimeUseCase());
  gh.singleton<_i9.GlobalKey<_i9.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i10.NotifyBoatNameUpdateUseCase>(
      () => _i10.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i11.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i12.ScanQrCubit>(() => _i12.ScanQrCubit());
  await gh.factoryAsync<_i13.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i14.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i14.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i15.Uuid>(uuidModule.uuid);
  gh.factory<_i16.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i16.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i17.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i17.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i18.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i18.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i19.ViamPositionToViamAppPositionMapper>(
      () => _i19.ViamPositionToViamAppPositionMapper());
  gh.factory<_i20.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i20.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i21.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i21.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i22.AnalyticsDataSink>(
      () => _i22.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i23.AnalyticsService>(
      () => _i24.AnalyticsServiceImpl(get<_i22.AnalyticsDataSink>()));
  gh.factory<_i25.CameraPermissionDataSource>(
      () => _i25.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i26.CurrentBoatStore>(() =>
      _i27.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i28.LogAddBoatEventUseCase>(
      () => _i28.LogAddBoatEventUseCase(get<_i23.AnalyticsService>()));
  gh.factory<_i29.LogDeleteBoatEventUseCase>(
      () => _i29.LogDeleteBoatEventUseCase(get<_i23.AnalyticsService>()));
  gh.factory<_i30.LogOpenAppEventUseCase>(
      () => _i30.LogOpenAppEventUseCase(get<_i23.AnalyticsService>()));
  gh.lazySingleton<_i31.PermissionsService>(() =>
      _i32.PermissionsServiceImpl(get<_i25.CameraPermissionDataSource>()));
  gh.factory<_i33.RequestCameraPermissionUseCase>(() =>
      _i33.RequestCameraPermissionUseCase(get<_i31.PermissionsService>()));
  gh.factory<_i34.BoatService>(() => _i35.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i26.CurrentBoatStore>(),
      ));
  gh.factory<_i36.ChangeBoatNameUseCase>(
      () => _i36.ChangeBoatNameUseCase(get<_i34.BoatService>()));
  gh.factory<_i37.CheckConnectionUseCase>(
      () => _i37.CheckConnectionUseCase(get<_i34.BoatService>()));
  gh.factory<_i38.DeleteBoatUseCase>(
      () => _i38.DeleteBoatUseCase(get<_i34.BoatService>()));
  gh.factory<_i39.GetBoatsUseCase>(
      () => _i39.GetBoatsUseCase(get<_i34.BoatService>()));
  gh.factory<_i40.GetCameraPermissionStatusUseCase>(() =>
      _i40.GetCameraPermissionStatusUseCase(get<_i31.PermissionsService>()));
  gh.factory<_i41.GetCurrentBoatIdUseCase>(
      () => _i41.GetCurrentBoatIdUseCase(get<_i34.BoatService>()));
  gh.factory<_i42.RemoveCurrentBoatIdUseCase>(
      () => _i42.RemoveCurrentBoatIdUseCase(get<_i34.BoatService>()));
  gh.factory<_i43.SetCurrentBoatIdUseCase>(
      () => _i43.SetCurrentBoatIdUseCase(get<_i34.BoatService>()));
  gh.factory<_i44.SettingsCubit>(() => _i44.SettingsCubit(
        get<_i39.GetBoatsUseCase>(),
        get<_i41.GetCurrentBoatIdUseCase>(),
        get<_i38.DeleteBoatUseCase>(),
        get<_i29.LogDeleteBoatEventUseCase>(),
        get<_i42.RemoveCurrentBoatIdUseCase>(),
        get<_i43.SetCurrentBoatIdUseCase>(),
        get<_i14.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i45.SplashCubit>(() => _i45.SplashCubit(
        get<_i41.GetCurrentBoatIdUseCase>(),
        get<_i39.GetBoatsUseCase>(),
      ));
  await gh.singletonAsync<_i46.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i39.GetBoatsUseCase>(),
      get<_i41.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i47.AddNewBoatUseCase>(
      () => _i47.AddNewBoatUseCase(get<_i34.BoatService>()));
  gh.factory<_i48.BoatListCubit>(() => _i48.BoatListCubit(
        get<_i39.GetBoatsUseCase>(),
        get<_i41.GetCurrentBoatIdUseCase>(),
        get<_i43.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i49.CameraDataSource>(
      () => _i49.CameraDataSource(get<_i46.ViamSdk>()));
  gh.factory<_i50.ChangeBoatNameCubit>(() => _i50.ChangeBoatNameCubit(
        get<_i36.ChangeBoatNameUseCase>(),
        get<_i10.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i51.DashboardCubit>(() => _i51.DashboardCubit(
        get<_i39.GetBoatsUseCase>(),
        get<_i41.GetCurrentBoatIdUseCase>(),
        get<_i14.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i52.ResourceDataSource>(
      () => _i52.ResourceDataSource(get<_i46.ViamSdk>()));
  gh.factory<_i53.SensorDataSource>(
      () => _i53.SensorDataSource(get<_i46.ViamSdk>()));
  gh.factory<_i54.ViamAppCameraService>(() => _i55.ViamAppCameraServiceImpl(
        get<_i49.CameraDataSource>(),
        get<_i17.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i56.ViamAppMovementSdkDataSource>(
      () => _i56.ViamAppMovementSdkDataSource(get<_i46.ViamSdk>()));
  gh.factory<_i57.ViamAppMovementService>(() => _i58.ViamAppMovementServiceImpl(
        get<_i56.ViamAppMovementSdkDataSource>(),
        get<_i16.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i19.ViamPositionToViamAppPositionMapper>(),
        get<_i18.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i59.ViamAppResourceService>(() => _i60.ViamAppResourceServiceImpl(
        get<_i52.ResourceDataSource>(),
        get<_i20.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i61.ViamAppSensorService>(() => _i62.ViamAppSensorServiceImpl(
        get<_i53.SensorDataSource>(),
        get<_i16.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i21.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i63.AddBoatCubit>(() => _i63.AddBoatCubit(
        get<_i47.AddNewBoatUseCase>(),
        get<_i37.CheckConnectionUseCase>(),
        get<_i43.SetCurrentBoatIdUseCase>(),
        get<_i40.GetCameraPermissionStatusUseCase>(),
        get<_i33.RequestCameraPermissionUseCase>(),
        get<_i28.LogAddBoatEventUseCase>(),
        get<_i15.Uuid>(),
        get<_i39.GetBoatsUseCase>(),
      ));
  gh.factory<_i64.GetCameraDataUseCase>(
      () => _i64.GetCameraDataUseCase(get<_i54.ViamAppCameraService>()));
  gh.factory<_i65.GetCameraVideoUseCase>(
      () => _i65.GetCameraVideoUseCase(get<_i54.ViamAppCameraService>()));
  gh.factory<_i66.GetLinearVelocityUseCase>(
      () => _i66.GetLinearVelocityUseCase(get<_i57.ViamAppMovementService>()));
  gh.factory<_i67.GetPostionUseCase>(
      () => _i67.GetPostionUseCase(get<_i57.ViamAppMovementService>()));
  gh.factory<_i68.GetResourceNamesUseCase>(
      () => _i68.GetResourceNamesUseCase(get<_i59.ViamAppResourceService>()));
  gh.factory<_i69.GetSensorDataUseCase>(
      () => _i69.GetSensorDataUseCase(get<_i61.ViamAppSensorService>()));
  gh.factory<_i70.MainCubit>(
      () => _i70.MainCubit(get<_i68.GetResourceNamesUseCase>()));
  gh.factory<_i71.MapCubit>(() => _i71.MapCubit(
        get<_i67.GetPostionUseCase>(),
        get<_i69.GetSensorDataUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i72.SensorTileCubit>(() => _i72.SensorTileCubit(
        get<_i69.GetSensorDataUseCase>(),
        get<_i66.GetLinearVelocityUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i73.SubscribeToCameraStreamUseCase>(() =>
      _i73.SubscribeToCameraStreamUseCase(get<_i54.ViamAppCameraService>()));
  gh.factory<_i74.WebrtcCameraCubit>(() => _i74.WebrtcCameraCubit(
        get<_i65.GetCameraVideoUseCase>(),
        get<_i73.SubscribeToCameraStreamUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i75.CameraTileCubit>(
      () => _i75.CameraTileCubit(get<_i64.GetCameraDataUseCase>()));
  return get;
}

class _$FirebaseAnalyticsModule extends _i76.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i77.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i78.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i79.SharedPreferencesModule {}

class _$UuidModule extends _i80.UuidModule {}

class _$ViamModule extends _i81.ViamModule {}
