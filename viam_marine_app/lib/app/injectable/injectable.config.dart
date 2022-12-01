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
import 'package:shared_preferences/shared_preferences.dart' as _i12;

<<<<<<< HEAD
import '../../sdk/viam_sdk.dart' as _i37;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i18;
import '../data/analytics/service/analytics_service_impl.dart' as _i20;
import '../data/boat/service/boat_service_impl.dart' as _i28;
=======
<<<<<<< HEAD
import '../../sdk/viam_sdk.dart' as _i30;
import '../data/boat/service/boat_service_impl.dart' as _i21;
>>>>>>> b966baa ([VIAM-44] move logic to webrtcCameraCubit)
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i22;
import '../data/camera/data_source/camera_api_data_source.dart' as _i39;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i14;
import '../data/camera/service/camera_service_impl.dart' as _i43;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i44;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i15;
import '../data/movement/service/movement_service_impl.dart' as _i46;
import '../data/permissions/service/permissions_service_impl.dart' as _i9;
import '../data/resource/data_source/resource_api_data_source.dart' as _i40;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i13;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i16;
import '../data/resource/service/resource_service_impl.dart' as _i48;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i41;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i17;
import '../data/sensor/service/sensor_service_impl.dart' as _i50;
import '../domain/analytics/service/analytics_service.dart' as _i19;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i24;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i25;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i26;
import '../domain/boat/service/boat_service.dart' as _i27;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i21;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i38;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i29;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i30;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i31;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i32;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i33;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i34;
import '../domain/camera/service/camera_service.dart' as _i42;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i52;
import '../domain/movement/service/movement_service.dart' as _i45;
import '../domain/movement/usecase/get_position_use_case.dart' as _i53;
import '../domain/permissions/service/permissions_service.dart' as _i8;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i23;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i10;
import '../domain/resource/service/resource_service.dart' as _i47;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i54;
import '../domain/sensor/service/sensor_service_impl.dart' as _i49;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i55;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i51;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i59;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i36;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i11;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i35;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i58;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i56;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
<<<<<<< HEAD
    as _i57;
import 'camera_permission_injectable.dart' as _i62;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i60;
import 'navigator_key_injectable.dart' as _i61;
import 'shared_preferences_injectable.dart' as _i63;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i64;
=======
    as _i50;
import 'camera_permission_injectable.dart' as _i54;
import 'navigator_key_injectable.dart' as _i53;
import 'shared_preferences_injectable.dart' as _i55;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i56; // ignore_for_file: unnecessary_lambdas
=======
import '../../sdk/src/viam_sdk.dart' as _i11;
import '../../sdk/viam_sdk.dart' as _i8;
<<<<<<< HEAD
import '../data/camera/data_source/camera_api_data_source.dart' as _i10;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart' as _i5;
import '../data/camera/service/camera_service_impl.dart' as _i19;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i20;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart' as _i6;
import '../data/movement/service/movement_service_impl.dart' as _i22;
import '../data/resource/data_source/resource_api_data_source.dart' as _i11;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart' as _i4;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart' as _i7;
import '../data/resource/service/resource_service_impl.dart' as _i13;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i14;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart' as _i9;
import '../data/sensor/service/sensor_service_impl.dart' as _i16;
import '../domain/camera/service/camera_service.dart' as _i18;
import '../domain/movement/service/movement_service.dart' as _i21;
import '../domain/resource/service/resource_service_impl.dart' as _i12;
import '../domain/sensor/service/sensor_service_impl.dart' as _i15;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i24;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart' as _i23;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i25;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart' as _i17;
import 'navigator_key_injectable.dart' as _i26;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i27; // ignore_for_file: unnecessary_lambdas
>>>>>>> 33bfe38 ([VIAM-44] move logic to webrtcCameraCubit)
<<<<<<< HEAD
>>>>>>> b966baa ([VIAM-44] move logic to webrtcCameraCubit)
=======
=======
import '../data/camera/data_source/camera_api_data_source.dart' as _i12;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i5;
import '../data/camera/service/camera_service_impl.dart' as _i21;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i22;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i6;
import '../data/movement/service/movement_service_impl.dart' as _i24;
import '../data/resource/data_source/resource_api_data_source.dart' as _i13;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i4;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i7;
import '../data/resource/service/resource_service_impl.dart' as _i15;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i16;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i9;
import '../data/sensor/service/sensor_service_impl.dart' as _i18;
import '../domain/camera/service/camera_service.dart' as _i20;
import '../domain/movement/service/movement_service.dart' as _i23;
import '../domain/resource/service/resource_service_impl.dart' as _i14;
import '../domain/sensor/service/sensor_service_impl.dart' as _i17;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i26;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i25;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i27;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i19;
import '../presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_cubit.dart'
    as _i10;
import 'navigator_key_injectable.dart' as _i28;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas
>>>>>>> a951e9f (rebase)
>>>>>>> a0b8c96 (rebase)

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
  final viamModule = _$ViamModule();
<<<<<<< HEAD
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
  gh.lazySingleton<_i8.PermissionsService>(
      () => _i9.PermissionsServiceImpl(get<_i7.Permission>()));
  gh.factory<_i10.RequestCameraPermissionUseCase>(
      () => _i10.RequestCameraPermissionUseCase(get<_i8.PermissionsService>()));
  gh.factory<_i11.ScanQrCubit>(() => _i11.ScanQrCubit());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i13.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i13.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i14.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i14.ViamCameraDataToViamAppCameraDataMapper());
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
  gh.factory<_i21.CurrentBoatStore>(() =>
      _i22.SharedPreferencesCurrentBoatStore(get<_i12.SharedPreferences>()));
  gh.factory<_i23.GetCameraPermissionStatusUseCase>(() =>
      _i23.GetCameraPermissionStatusUseCase(get<_i8.PermissionsService>()));
  gh.factory<_i24.LogAddBoatEventUseCase>(
      () => _i24.LogAddBoatEventUseCase(get<_i19.AnalyticsService>()));
  gh.factory<_i25.LogDeleteBoatEventUseCase>(
      () => _i25.LogDeleteBoatEventUseCase(get<_i19.AnalyticsService>()));
  gh.factory<_i26.LogOpenAppEventUseCase>(
      () => _i26.LogOpenAppEventUseCase(get<_i19.AnalyticsService>()));
  gh.factory<_i27.BoatService>(() => _i28.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i21.CurrentBoatStore>(),
      ));
  gh.factory<_i29.CheckConnectionUseCase>(
      () => _i29.CheckConnectionUseCase(get<_i27.BoatService>()));
  gh.factory<_i30.DeleteBoatUseCase>(
      () => _i30.DeleteBoatUseCase(get<_i27.BoatService>()));
  gh.factory<_i31.GetBoatsUseCase>(
      () => _i31.GetBoatsUseCase(get<_i27.BoatService>()));
  gh.factory<_i32.GetCurrentBoatIdUseCase>(
      () => _i32.GetCurrentBoatIdUseCase(get<_i27.BoatService>()));
  gh.factory<_i33.RemoveCurrentBoatIdUseCase>(
      () => _i33.RemoveCurrentBoatIdUseCase(get<_i27.BoatService>()));
  gh.factory<_i34.SetCurrentBoatIdUseCase>(
      () => _i34.SetCurrentBoatIdUseCase(get<_i27.BoatService>()));
  gh.factory<_i35.SplashCubit>(() => _i35.SplashCubit(
        get<_i32.GetCurrentBoatIdUseCase>(),
        get<_i31.GetBoatsUseCase>(),
      ));
  gh.factory<_i36.ViamDrawerCubit>(() => _i36.ViamDrawerCubit(
        get<_i31.GetBoatsUseCase>(),
        get<_i32.GetCurrentBoatIdUseCase>(),
        get<_i30.DeleteBoatUseCase>(),
        get<_i34.SetCurrentBoatIdUseCase>(),
        get<_i33.RemoveCurrentBoatIdUseCase>(),
        get<_i25.LogDeleteBoatEventUseCase>(),
      ));
  await gh.singletonAsync<_i37.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i31.GetBoatsUseCase>(),
      get<_i32.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i38.AddNewBoatUseCase>(
      () => _i38.AddNewBoatUseCase(get<_i27.BoatService>()));
  gh.factory<_i39.CameraDataSource>(
      () => _i39.CameraDataSource(get<_i37.ViamSdk>()));
  gh.factory<_i40.ResourceDataSource>(
      () => _i40.ResourceDataSource(get<_i37.ViamSdk>()));
  gh.factory<_i41.SensorDataSource>(
      () => _i41.SensorDataSource(get<_i37.ViamSdk>()));
  gh.factory<_i42.ViamAppCameraService>(() => _i43.ViamAppCameraServiceImpl(
        get<_i39.CameraDataSource>(),
        get<_i14.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i44.ViamAppMovementSdkDataSource>(
      () => _i44.ViamAppMovementSdkDataSource(get<_i37.ViamSdk>()));
  gh.factory<_i45.ViamAppMovementService>(() => _i46.ViamAppMovementServiceImpl(
        get<_i44.ViamAppMovementSdkDataSource>(),
        get<_i13.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i15.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i47.ViamAppResourceService>(() => _i48.ViamAppResourceServiceImpl(
        get<_i40.ResourceDataSource>(),
        get<_i16.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i49.ViamAppSensorService>(() => _i50.ViamAppSensorServiceImpl(
        get<_i41.SensorDataSource>(),
        get<_i13.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i17.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i51.AddBoatCubit>(() => _i51.AddBoatCubit(
        get<_i38.AddNewBoatUseCase>(),
        get<_i29.CheckConnectionUseCase>(),
        get<_i34.SetCurrentBoatIdUseCase>(),
        get<_i23.GetCameraPermissionStatusUseCase>(),
        get<_i10.RequestCameraPermissionUseCase>(),
        get<_i24.LogAddBoatEventUseCase>(),
      ));
  gh.factory<_i52.GetCameraDataUseCase>(
      () => _i52.GetCameraDataUseCase(get<_i42.ViamAppCameraService>()));
  gh.factory<_i53.GetPostionUseCase>(
      () => _i53.GetPostionUseCase(get<_i45.ViamAppMovementService>()));
  gh.factory<_i54.GetResourceNamesUseCase>(
      () => _i54.GetResourceNamesUseCase(get<_i47.ViamAppResourceService>()));
  gh.factory<_i55.GetSensorDataUseCase>(
      () => _i55.GetSensorDataUseCase(get<_i49.ViamAppSensorService>()));
  gh.factory<_i56.MapTileCubit>(() => _i56.MapTileCubit(
        get<_i53.GetPostionUseCase>(),
        get<_i55.GetSensorDataUseCase>(),
      ));
<<<<<<< HEAD
  gh.factory<_i57.SensorTileCubit>(
      () => _i57.SensorTileCubit(get<_i55.GetSensorDataUseCase>()));
  gh.factory<_i58.CameraTileCubit>(
      () => _i58.CameraTileCubit(get<_i52.GetCameraDataUseCase>()));
  gh.factory<_i59.DashboardCubit>(() => _i59.DashboardCubit(
        get<_i54.GetResourceNamesUseCase>(),
        get<_i31.GetBoatsUseCase>(),
        get<_i32.GetCurrentBoatIdUseCase>(),
=======
  gh.factory<_i50.SensorTileCubit>(
      () => _i50.SensorTileCubit(get<_i48.GetSensorDataUseCase>()));
  gh.factory<_i51.CameraTileCubit>(
      () => _i51.CameraTileCubit(get<_i45.GetCameraDataUseCase>()));
  gh.factory<_i52.DashboardCubit>(() => _i52.DashboardCubit(
        get<_i47.GetResourceNamesUseCase>(),
        get<_i24.GetBoatsUseCase>(),
        get<_i25.GetCurrentBoatIdUseCase>(),
=======
  gh.singleton<_i3.GlobalKey<_i3.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i4.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i4.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i5.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i5.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i6.ViamPositionToViamAppPositionMapper>(
      () => _i6.ViamPositionToViamAppPositionMapper());
  gh.factory<_i7.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i7.ViamResourceNameToViamAppResourceNameMapper());
  gh.singleton<_i8.ViamSdk>(viamModule.getViamSdk());
  gh.factory<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i9.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i10.WebrtcCameraCubit>(
      () => _i10.WebrtcCameraCubit(get<_i11.ViamSdk>()));
  gh.factory<_i12.CameraDataSource>(
      () => _i12.CameraDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i13.ResourceDataSource>(
      () => _i13.ResourceDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i14.ResourceService>(() => _i15.ResourceServiceImpl(
        get<_i13.ResourceDataSource>(),
        get<_i7.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i16.SensorDataSource>(
      () => _i16.SensorDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i17.SensorService>(() => _i18.SensorServiceImpl(
        get<_i16.SensorDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i19.SensorTileCubit>(
      () => _i19.SensorTileCubit(get<_i17.SensorService>()));
  gh.factory<_i20.ViamAppCameraService>(() => _i21.ViamAppCameraServiceImpl(
        get<_i12.CameraDataSource>(),
        get<_i5.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i22.ViamAppMovementSdkDataSource>(
      () => _i22.ViamAppMovementSdkDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i23.ViamAppMovementService>(() => _i24.ViamAppMovementServiceImpl(
        get<_i22.ViamAppMovementSdkDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i6.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i25.CameraTileCubit>(
      () => _i25.CameraTileCubit(get<_i20.ViamAppCameraService>()));
  gh.factory<_i26.DashboardCubit>(
      () => _i26.DashboardCubit(get<_i14.ResourceService>()));
  gh.factory<_i27.MapTileCubit>(() => _i27.MapTileCubit(
        get<_i23.ViamAppMovementService>(),
        get<_i17.SensorService>(),
>>>>>>> a951e9f (rebase)
>>>>>>> a0b8c96 (rebase)
      ));
  return get;
}

<<<<<<< HEAD
class _$FirebaseAnalyticsModule extends _i60.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i61.NavigatorKeyModule {}
=======
<<<<<<< HEAD
class _$NavigatorKeyModule extends _i53.NavigatorKeyModule {}
>>>>>>> b966baa ([VIAM-44] move logic to webrtcCameraCubit)

class _$CameraPermissionModule extends _i62.CameraPermissionModule {}

<<<<<<< HEAD
class _$SharedPreferencesModule extends _i63.SharedPreferencesModule {}
=======
class _$SharedPreferencesModule extends _i55.SharedPreferencesModule {}
=======
class _$NavigatorKeyModule extends _i28.NavigatorKeyModule {}
>>>>>>> 33bfe38 ([VIAM-44] move logic to webrtcCameraCubit)
>>>>>>> b966baa ([VIAM-44] move logic to webrtcCameraCubit)

<<<<<<< HEAD
class _$ViamModule extends _i64.ViamModule {}
=======
<<<<<<< HEAD
class _$ViamModule extends _i56.ViamModule {}
=======
class _$ViamModule extends _i29.ViamModule {}
>>>>>>> a951e9f (rebase)
>>>>>>> a0b8c96 (rebase)
