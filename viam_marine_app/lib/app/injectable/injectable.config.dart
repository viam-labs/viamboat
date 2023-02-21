// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:uuid/uuid.dart' as _i12;

import '../../sdk/viam_sdk.dart' as _i44;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i19;
import '../data/analytics/service/analytics_service_impl.dart' as _i21;
import '../data/boat/service/boat_service_impl.dart' as _i32;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i24;
import '../data/camera/data_source/camera_api_data_source.dart' as _i46;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i14;
import '../data/camera/service/camera_service_impl.dart' as _i51;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i52;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i15;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i16;
import '../data/movement/service/movement_service_impl.dart' as _i54;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i22;
import '../data/permissions/service/permissions_service_impl.dart' as _i29;
import '../data/resource/data_source/resource_api_data_source.dart' as _i48;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i13;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i17;
import '../data/resource/service/resource_service_impl.dart' as _i56;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i49;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i18;
import '../data/sensor/service/sensor_service_impl.dart' as _i58;
import '../domain/analytics/service/analytics_service.dart' as _i20;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i25;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i26;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i27;
import '../domain/boat/service/boat_service.dart' as _i31;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i23;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i45;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i33;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i34;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i35;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i36;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i38;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i39;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i40;
import '../domain/camera/service/camera_service.dart' as _i50;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i60;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i61;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i69;
import '../domain/current_time/get_current_time_use_case.dart' as _i7;
import '../domain/movement/service/movement_service.dart' as _i53;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i62;
import '../domain/movement/usecase/get_position_use_case.dart' as _i63;
import '../domain/permissions/service/permissions_service.dart' as _i28;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i37;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i30;
import '../domain/resource/service/resource_service.dart' as _i55;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i64;
import '../domain/sensor/service/sensor_service_impl.dart' as _i57;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i65;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i59;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i70;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i5;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i47;
import '../presentation/page/drawer/cubit/viam_drawer_cubit.dart' as _i43;
import '../presentation/page/main/cubit/main_cubit.dart' as _i66;
import '../presentation/page/map/cubit/map_cubit.dart' as _i67;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i10;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i41;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i42;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i71;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i68;
import 'camera_permission_injectable.dart' as _i74;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i72;
import 'navigator_key_injectable.dart' as _i73;
import 'shared_preferences_injectable.dart' as _i75;
import 'uuid_injectable.dart' as _i76;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i77;

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
  gh.factory<_i5.ChangeBoatNameCubit>(() => _i5.ChangeBoatNameCubit());
  gh.lazySingleton<_i6.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i6.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.factory<_i7.GetCurrentTimeUseCase>(() => _i7.GetCurrentTimeUseCase());
  gh.singleton<_i8.GlobalKey<_i8.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.singleton<_i9.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i10.ScanQrCubit>(() => _i10.ScanQrCubit());
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i12.Uuid>(uuidModule.uuid);
  gh.factory<_i13.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i13.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i14.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i14.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i15.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i15.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i16.ViamPositionToViamAppPositionMapper>(
      () => _i16.ViamPositionToViamAppPositionMapper());
  gh.factory<_i17.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i17.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i18.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i18.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i19.AnalyticsDataSink>(
      () => _i19.AnalyticsDataSinkImpl(get<_i6.FirebaseAnalytics>()));
  gh.factory<_i20.AnalyticsService>(
      () => _i21.AnalyticsServiceImpl(get<_i19.AnalyticsDataSink>()));
  gh.factory<_i22.CameraPermissionDataSource>(
      () => _i22.CameraPermissionDataSource(get<_i9.Permission>()));
  gh.factory<_i23.CurrentBoatStore>(() =>
      _i24.SharedPreferencesCurrentBoatStore(get<_i11.SharedPreferences>()));
  gh.factory<_i25.LogAddBoatEventUseCase>(
      () => _i25.LogAddBoatEventUseCase(get<_i20.AnalyticsService>()));
  gh.factory<_i26.LogDeleteBoatEventUseCase>(
      () => _i26.LogDeleteBoatEventUseCase(get<_i20.AnalyticsService>()));
  gh.factory<_i27.LogOpenAppEventUseCase>(
      () => _i27.LogOpenAppEventUseCase(get<_i20.AnalyticsService>()));
  gh.lazySingleton<_i28.PermissionsService>(() =>
      _i29.PermissionsServiceImpl(get<_i22.CameraPermissionDataSource>()));
  gh.factory<_i30.RequestCameraPermissionUseCase>(() =>
      _i30.RequestCameraPermissionUseCase(get<_i28.PermissionsService>()));
  gh.factory<_i31.BoatService>(() => _i32.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i23.CurrentBoatStore>(),
      ));
  gh.factory<_i33.ChangeBoatNameUseCase>(
      () => _i33.ChangeBoatNameUseCase(get<_i31.BoatService>()));
  gh.factory<_i34.CheckConnectionUseCase>(
      () => _i34.CheckConnectionUseCase(get<_i31.BoatService>()));
  gh.factory<_i35.DeleteBoatUseCase>(
      () => _i35.DeleteBoatUseCase(get<_i31.BoatService>()));
  gh.factory<_i36.GetBoatsUseCase>(
      () => _i36.GetBoatsUseCase(get<_i31.BoatService>()));
  gh.factory<_i37.GetCameraPermissionStatusUseCase>(() =>
      _i37.GetCameraPermissionStatusUseCase(get<_i28.PermissionsService>()));
  gh.factory<_i38.GetCurrentBoatIdUseCase>(
      () => _i38.GetCurrentBoatIdUseCase(get<_i31.BoatService>()));
  gh.factory<_i39.RemoveCurrentBoatIdUseCase>(
      () => _i39.RemoveCurrentBoatIdUseCase(get<_i31.BoatService>()));
  gh.factory<_i40.SetCurrentBoatIdUseCase>(
      () => _i40.SetCurrentBoatIdUseCase(get<_i31.BoatService>()));
  gh.factory<_i41.SettingsCubit>(() => _i41.SettingsCubit(
        get<_i36.GetBoatsUseCase>(),
        get<_i38.GetCurrentBoatIdUseCase>(),
        get<_i35.DeleteBoatUseCase>(),
        get<_i26.LogDeleteBoatEventUseCase>(),
        get<_i39.RemoveCurrentBoatIdUseCase>(),
        get<_i40.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i42.SplashCubit>(() => _i42.SplashCubit(
        get<_i38.GetCurrentBoatIdUseCase>(),
        get<_i36.GetBoatsUseCase>(),
      ));
  gh.factory<_i43.ViamDrawerCubit>(() => _i43.ViamDrawerCubit(
        get<_i36.GetBoatsUseCase>(),
        get<_i38.GetCurrentBoatIdUseCase>(),
        get<_i35.DeleteBoatUseCase>(),
        get<_i40.SetCurrentBoatIdUseCase>(),
        get<_i39.RemoveCurrentBoatIdUseCase>(),
        get<_i26.LogDeleteBoatEventUseCase>(),
        get<_i33.ChangeBoatNameUseCase>(),
      ));
  await gh.singletonAsync<_i44.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i36.GetBoatsUseCase>(),
      get<_i38.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i45.AddNewBoatUseCase>(
      () => _i45.AddNewBoatUseCase(get<_i31.BoatService>()));
  gh.factory<_i46.CameraDataSource>(
      () => _i46.CameraDataSource(get<_i44.ViamSdk>()));
  gh.factory<_i47.DashboardCubit>(() => _i47.DashboardCubit(
        get<_i36.GetBoatsUseCase>(),
        get<_i38.GetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i48.ResourceDataSource>(
      () => _i48.ResourceDataSource(get<_i44.ViamSdk>()));
  gh.factory<_i49.SensorDataSource>(
      () => _i49.SensorDataSource(get<_i44.ViamSdk>()));
  gh.factory<_i50.ViamAppCameraService>(() => _i51.ViamAppCameraServiceImpl(
        get<_i46.CameraDataSource>(),
        get<_i14.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i52.ViamAppMovementSdkDataSource>(
      () => _i52.ViamAppMovementSdkDataSource(get<_i44.ViamSdk>()));
  gh.factory<_i53.ViamAppMovementService>(() => _i54.ViamAppMovementServiceImpl(
        get<_i52.ViamAppMovementSdkDataSource>(),
        get<_i13.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i16.ViamPositionToViamAppPositionMapper>(),
        get<_i15.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i55.ViamAppResourceService>(() => _i56.ViamAppResourceServiceImpl(
        get<_i48.ResourceDataSource>(),
        get<_i17.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i57.ViamAppSensorService>(() => _i58.ViamAppSensorServiceImpl(
        get<_i49.SensorDataSource>(),
        get<_i13.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i18.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i59.AddBoatCubit>(() => _i59.AddBoatCubit(
        get<_i45.AddNewBoatUseCase>(),
        get<_i34.CheckConnectionUseCase>(),
        get<_i40.SetCurrentBoatIdUseCase>(),
        get<_i37.GetCameraPermissionStatusUseCase>(),
        get<_i30.RequestCameraPermissionUseCase>(),
        get<_i25.LogAddBoatEventUseCase>(),
        get<_i12.Uuid>(),
        get<_i36.GetBoatsUseCase>(),
      ));
  gh.factory<_i60.GetCameraDataUseCase>(
      () => _i60.GetCameraDataUseCase(get<_i50.ViamAppCameraService>()));
  gh.factory<_i61.GetCameraVideoUseCase>(
      () => _i61.GetCameraVideoUseCase(get<_i50.ViamAppCameraService>()));
  gh.factory<_i62.GetLinearVelocityUseCase>(
      () => _i62.GetLinearVelocityUseCase(get<_i53.ViamAppMovementService>()));
  gh.factory<_i63.GetPostionUseCase>(
      () => _i63.GetPostionUseCase(get<_i53.ViamAppMovementService>()));
  gh.factory<_i64.GetResourceNamesUseCase>(
      () => _i64.GetResourceNamesUseCase(get<_i55.ViamAppResourceService>()));
  gh.factory<_i65.GetSensorDataUseCase>(
      () => _i65.GetSensorDataUseCase(get<_i57.ViamAppSensorService>()));
  gh.factory<_i66.MainCubit>(
      () => _i66.MainCubit(get<_i64.GetResourceNamesUseCase>()));
  gh.factory<_i67.MapCubit>(() => _i67.MapCubit(
        get<_i63.GetPostionUseCase>(),
        get<_i65.GetSensorDataUseCase>(),
        get<_i7.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i68.SensorTileCubit>(() => _i68.SensorTileCubit(
        get<_i65.GetSensorDataUseCase>(),
        get<_i62.GetLinearVelocityUseCase>(),
        get<_i7.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i69.SubscribeToCameraStreamUseCase>(() =>
      _i69.SubscribeToCameraStreamUseCase(get<_i50.ViamAppCameraService>()));
  gh.factory<_i70.WebrtcCameraCubit>(() => _i70.WebrtcCameraCubit(
        get<_i61.GetCameraVideoUseCase>(),
        get<_i69.SubscribeToCameraStreamUseCase>(),
        get<_i7.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i71.CameraTileCubit>(
      () => _i71.CameraTileCubit(get<_i60.GetCameraDataUseCase>()));
  return get;
}

class _$FirebaseAnalyticsModule extends _i72.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i73.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i74.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i75.SharedPreferencesModule {}

class _$UuidModule extends _i76.UuidModule {}

class _$ViamModule extends _i77.ViamModule {}
