// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:flutter/material.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i21;
import 'package:uuid/uuid.dart' as _i28;
import 'package:viam_sdk/viam_sdk.dart' as _i29;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i42;
import '../data/analytics/service/analytics_service_impl.dart' as _i44;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i45;
import '../data/app_viam/service/app_viam_service.dart' as _i47;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i49;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i98;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i61;
import '../data/camera/data_source/camera_api_data_source.dart' as _i51;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i32;
import '../data/camera/service/camera_service_impl.dart' as _i88;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i57;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i62;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i96;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i15;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i17;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i30;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i34;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i35;
import '../data/movement/service/movement_service_impl.dart' as _i90;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i52;
import '../data/permissions/service/permissions_service_impl.dart' as _i78;
import '../data/resource/data_source/resource_api_data_source.dart' as _i80;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i31;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i36;
import '../data/resource/service/resource_service_impl.dart' as _i92;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i81;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i37;
import '../data/sensor/service/sensor_service_impl.dart' as _i94;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i25;
import '../data/viam/data_source/viam_data_source.dart' as _i33;
import '../data/viam/service/viam_service_impl.dart' as _i39;
import '../data/viam/store/token_box.dart' as _i23;
import '../data/viam/store/token_store_impl.dart' as _i27;
import '../domain/analytics/service/analytics_service.dart' as _i43;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i73;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i74;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i75;
import '../domain/app_viam/service/app_viam_service.dart' as _i46;
import '../domain/app_viam/store/app_viam_store.dart' as _i48;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i63;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i64;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i65;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i67;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i69;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i70;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i71;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i68;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i82;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i83;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i84;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i97;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i60;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i123;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i99;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i100;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i102;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i104;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i108;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i18;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i117;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i119;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i22;
import '../domain/camera/service/camera_service.dart' as _i87;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i105;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i107;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i121;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i56;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i58;
import '../domain/current_time/get_current_time_use_case.dart' as _i11;
import '../domain/data_viam/service/viam_data_service.dart' as _i95;
import '../domain/data_viam/use_case/connect_to_viam_app_use_case.dart'
    as _i101;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i103;
import '../domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart'
    as _i113;
import '../domain/local_photo/service/local_photo_service.dart' as _i16;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i53;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i55;
import '../domain/movement/service/movement_service.dart' as _i89;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i109;
import '../domain/movement/usecase/get_position_use_case.dart' as _i110;
import '../domain/permissions/service/permissions_service.dart' as _i77;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i106;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i79;
import '../domain/resource/service/resource_service.dart' as _i91;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i111;
import '../domain/sensor/service/sensor_service_impl.dart' as _i93;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i112;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i24;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i86;
import '../domain/viam/service/viam_service.dart' as _i38;
import '../domain/viam/store/token_store.dart' as _i26;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i50;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i54;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i59;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i12;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i72;
import '../domain/viam/usecase/logout_use_case.dart' as _i76;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i132;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i124;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i130;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i9;
import '../presentation/page/analytics/widgets/fuel_consumption_per_time/cubit/fuel_consumption_per_time_cubit.dart'
    as _i10;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i40;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i41;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i125;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i122;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i127;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i128;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i129;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i131;
import '../presentation/page/main/cubit/main_cubit.dart' as _i114;
import '../presentation/page/map/cubit/map_cubit.dart' as _i115;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i116;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i20;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i120;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i85;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i126;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i118;
import 'camera_permission_injectable.dart' as _i137;
import 'file_picker_injectable.dart' as _i133;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i134;
import 'image_picker_injectable.dart' as _i136;
import 'navigator_key_injectable.dart' as _i135;
import 'shared_preferences_injectable.dart' as _i138;
import 'uuid_injectable.dart' as _i139;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i140;

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
  final filePickerModule = _$FilePickerModule();
  final firebaseAnalyticsModule = _$FirebaseAnalyticsModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  final imagePickerModule = _$ImagePickerModule();
  final cameraPermissionModule = _$CameraPermissionModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final uuidModule = _$UuidModule();
  final viamSdkModule = _$ViamSdkModule();
  final viamSdkDirectDataClientModule = _$ViamSdkDirectDataClientModule();
  gh.singleton<_i3.BoatBox>(_i4.CurrentBoatBoxImpl());
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(
      () => _i6.BoatChangeBroadcasterImpl());
  gh.factory<_i7.FilePicker>(() => filePickerModule.filePicker);
  gh.lazySingleton<_i8.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i8.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.factory<_i9.FuelConsumptionPerMileCubit>(
      () => _i9.FuelConsumptionPerMileCubit());
  gh.factory<_i10.FuelConsumptionPerTimeCubit>(
      () => _i10.FuelConsumptionPerTimeCubit());
  gh.factory<_i11.GetCurrentTimeUseCase>(() => _i11.GetCurrentTimeUseCase());
  gh.factory<_i12.GetRobotAddressUseCase>(() => _i12.GetRobotAddressUseCase());
  gh.singleton<_i13.GlobalKey<_i13.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i14.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i15.LocalPhotoDataSource>(() => _i15.LocalPhotoDataSource(
        get<_i14.ImagePicker>(),
        get<_i7.FilePicker>(),
      ));
  gh.factory<_i16.LocalPhotoService>(() => _i17.LocalPhotoServiceImpl(
        get<_i15.LocalPhotoDataSource>(),
        get<_i3.BoatBox>(),
      ));
  gh.factory<_i18.NotifyBoatNameUpdateUseCase>(
      () => _i18.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i19.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i20.ScanQrCubit>(() => _i20.ScanQrCubit());
  await gh.factoryAsync<_i21.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i22.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i22.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i23.TokenBox>(_i23.TokenBoxImpl());
  gh.singleton<_i24.TokenExpiredBroadcaster>(
      _i25.TokenExpiredBroadcasterImpl());
  gh.factory<_i26.TokenStore>(() => _i27.TokenStoreImpl(get<_i23.TokenBox>()));
  gh.singleton<_i28.Uuid>(uuidModule.uuid);
  gh.singleton<_i29.Viam>(
    viamSdkModule.viam,
    instanceName: 'viamSdk',
  );
  gh.singleton<_i29.Viam>(
    viamSdkDirectDataClientModule.viam,
    instanceName: 'directDataClient',
  );
  gh.factory<_i30.ViamAppMovementSdkDataSource>(() =>
      _i30.ViamAppMovementSdkDataSource(
          get<_i29.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i31.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i31.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i32.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i32.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i33.ViamDataSource>(
      () => _i33.ViamDataSource(get<_i29.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i34.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i34.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i35.ViamPositionToViamAppPositionMapper>(
      () => _i35.ViamPositionToViamAppPositionMapper());
  gh.factory<_i36.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i36.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i37.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i37.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i38.ViamService>(() => _i39.ViamServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i33.ViamDataSource>(),
        get<_i26.TokenStore>(),
      ));
  gh.factory<_i40.WaterDepthCubit>(() => _i40.WaterDepthCubit());
  gh.factory<_i41.WaterTemperatureCubit>(() => _i41.WaterTemperatureCubit());
  gh.factory<_i42.AnalyticsDataSink>(
      () => _i42.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i43.AnalyticsService>(
      () => _i44.AnalyticsServiceImpl(get<_i42.AnalyticsDataSink>()));
  gh.factory<_i45.AppViamDataSource>(
      () => _i45.AppViamDataSource(get<_i29.Viam>(instanceName: 'viamSdk')));
  gh.lazySingleton<_i46.AppViamService>(() => _i47.AppViamServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i45.AppViamDataSource>(),
      ));
  gh.factory<_i48.AppViamStore>(
      () => _i49.SharedPreferencesAppViamStore(get<_i21.SharedPreferences>()));
  gh.factory<_i50.AuthenticateUseCase>(
      () => _i50.AuthenticateUseCase(get<_i38.ViamService>()));
  gh.factory<_i51.CameraDataSource>(
      () => _i51.CameraDataSource(get<_i29.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i52.CameraPermissionDataSource>(
      () => _i52.CameraPermissionDataSource(get<_i19.Permission>()));
  gh.factory<_i53.CapturePhotoForBoatUseCase>(
      () => _i53.CapturePhotoForBoatUseCase(get<_i16.LocalPhotoService>()));
  gh.factory<_i54.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i54.CheckIfHasTokenAndRefreshTokenUseCase(get<_i26.TokenStore>()));
  gh.factory<_i55.ChoosePhotoForBoatUseCase>(
      () => _i55.ChoosePhotoForBoatUseCase(get<_i16.LocalPhotoService>()));
  gh.factory<_i56.ClearCacheService>(() => _i57.ClearCacheServiceImpl(
        get<_i26.TokenStore>(),
        get<_i48.AppViamStore>(),
      ));
  gh.factory<_i58.ClearCacheUseCase>(
      () => _i58.ClearCacheUseCase(get<_i56.ClearCacheService>()));
  gh.factory<_i59.ConnectToRobotUseCase>(
      () => _i59.ConnectToRobotUseCase(get<_i38.ViamService>()));
  gh.factory<_i60.CurrentBoatStore>(() =>
      _i61.SharedPreferencesCurrentBoatStore(get<_i21.SharedPreferences>()));
  gh.factory<_i62.DataViamDataSource>(() => _i62.DataViamDataSource(
      get<_i29.Viam>(instanceName: 'directDataClient')));
  gh.factory<_i63.GetLocationIdUseCase>(
      () => _i63.GetLocationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i64.GetLocationUseCase>(
      () => _i64.GetLocationUseCase(get<_i46.AppViamService>()));
  gh.factory<_i65.GetLocationsUseCase>(
      () => _i65.GetLocationsUseCase(get<_i46.AppViamService>()));
  gh.factory<_i66.GetOrganizationIdUseCase>(
      () => _i66.GetOrganizationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i67.GetOrganizationUseCase>(
      () => _i67.GetOrganizationUseCase(get<_i46.AppViamService>()));
  gh.factory<_i68.GetOrganizationsListUseCase>(
      () => _i68.GetOrganizationsListUseCase(get<_i46.AppViamService>()));
  gh.factory<_i69.GetRobotIdUseCase>(
      () => _i69.GetRobotIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i70.GetRobotUseCase>(
      () => _i70.GetRobotUseCase(get<_i46.AppViamService>()));
  gh.factory<_i71.GetRobotsUseCase>(
      () => _i71.GetRobotsUseCase(get<_i46.AppViamService>()));
  gh.factory<_i72.GetTokenOrNullUseCase>(
      () => _i72.GetTokenOrNullUseCase(get<_i26.TokenStore>()));
  gh.factory<_i73.LogAddBoatEventUseCase>(
      () => _i73.LogAddBoatEventUseCase(get<_i43.AnalyticsService>()));
  gh.factory<_i74.LogDeleteBoatEventUseCase>(
      () => _i74.LogDeleteBoatEventUseCase(get<_i43.AnalyticsService>()));
  gh.factory<_i75.LogOpenAppEventUseCase>(
      () => _i75.LogOpenAppEventUseCase(get<_i43.AnalyticsService>()));
  gh.factory<_i76.LogoutUseCase>(
      () => _i76.LogoutUseCase(get<_i38.ViamService>()));
  gh.lazySingleton<_i77.PermissionsService>(() =>
      _i78.PermissionsServiceImpl(get<_i52.CameraPermissionDataSource>()));
  gh.factory<_i79.RequestCameraPermissionUseCase>(() =>
      _i79.RequestCameraPermissionUseCase(get<_i77.PermissionsService>()));
  gh.factory<_i80.ResourceDataSource>(
      () => _i80.ResourceDataSource(get<_i29.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i81.SensorDataSource>(
      () => _i81.SensorDataSource(get<_i29.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i82.SetLocationIdUseCase>(
      () => _i82.SetLocationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i83.SetOrganizationIdUseCase>(
      () => _i83.SetOrganizationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i84.SetRobotIdUseCase>(
      () => _i84.SetRobotIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i85.SplashCubit>(() =>
      _i85.SplashCubit(get<_i54.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i86.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i86.SubscribeToTokenExpiredStreamUseCase(
          get<_i24.TokenExpiredBroadcaster>()));
  gh.factory<_i87.ViamAppCameraService>(() => _i88.ViamAppCameraServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i51.CameraDataSource>(),
        get<_i32.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i89.ViamAppMovementService>(() => _i90.ViamAppMovementServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i30.ViamAppMovementSdkDataSource>(),
        get<_i31.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i35.ViamPositionToViamAppPositionMapper>(),
        get<_i34.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i91.ViamAppResourceService>(() => _i92.ViamAppResourceServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i80.ResourceDataSource>(),
        get<_i36.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i93.ViamAppSensorService>(() => _i94.ViamAppSensorServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i81.SensorDataSource>(),
        get<_i31.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i37.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i95.ViamDataService>(() => _i96.ViamDataServiceImpl(
        get<_i24.TokenExpiredBroadcaster>(),
        get<_i62.DataViamDataSource>(),
      ));
  gh.factory<_i97.BoatService>(() => _i98.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i60.CurrentBoatStore>(),
      ));
  gh.factory<_i99.ChangeBoatNameUseCase>(
      () => _i99.ChangeBoatNameUseCase(get<_i97.BoatService>()));
  gh.factory<_i100.CheckConnectionUseCase>(
      () => _i100.CheckConnectionUseCase(get<_i97.BoatService>()));
  gh.factory<_i101.ConnectToViamAppUseCase>(
      () => _i101.ConnectToViamAppUseCase(get<_i95.ViamDataService>()));
  gh.factory<_i102.DeleteBoatUseCase>(
      () => _i102.DeleteBoatUseCase(get<_i97.BoatService>()));
  gh.factory<_i103.GetBinaryDataByFilterUseCase>(
      () => _i103.GetBinaryDataByFilterUseCase(get<_i95.ViamDataService>()));
  gh.factory<_i104.GetBoatsUseCase>(
      () => _i104.GetBoatsUseCase(get<_i97.BoatService>()));
  gh.factory<_i105.GetCameraDataUseCase>(
      () => _i105.GetCameraDataUseCase(get<_i87.ViamAppCameraService>()));
  gh.factory<_i106.GetCameraPermissionStatusUseCase>(() =>
      _i106.GetCameraPermissionStatusUseCase(get<_i77.PermissionsService>()));
  gh.factory<_i107.GetCameraVideoUseCase>(
      () => _i107.GetCameraVideoUseCase(get<_i87.ViamAppCameraService>()));
  gh.factory<_i108.GetCurrentBoatIdUseCase>(
      () => _i108.GetCurrentBoatIdUseCase(get<_i97.BoatService>()));
  gh.factory<_i109.GetLinearVelocityUseCase>(
      () => _i109.GetLinearVelocityUseCase(get<_i89.ViamAppMovementService>()));
  gh.factory<_i110.GetPostionUseCase>(
      () => _i110.GetPostionUseCase(get<_i89.ViamAppMovementService>()));
  gh.factory<_i111.GetResourceNamesUseCase>(
      () => _i111.GetResourceNamesUseCase(get<_i91.ViamAppResourceService>()));
  gh.factory<_i112.GetSensorDataUseCase>(
      () => _i112.GetSensorDataUseCase(get<_i93.ViamAppSensorService>()));
  gh.factory<_i113.GetTabularDataByFilterUseCase>(
      () => _i113.GetTabularDataByFilterUseCase(get<_i95.ViamDataService>()));
  gh.factory<_i114.MainCubit>(() => _i114.MainCubit(
        get<_i111.GetResourceNamesUseCase>(),
        get<_i72.GetTokenOrNullUseCase>(),
        get<_i86.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i58.ClearCacheUseCase>(),
      ));
  gh.factory<_i115.MapCubit>(() => _i115.MapCubit(
        get<_i110.GetPostionUseCase>(),
        get<_i112.GetSensorDataUseCase>(),
        get<_i11.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i116.OrganizationsCubit>(() => _i116.OrganizationsCubit(
        get<_i68.GetOrganizationsListUseCase>(),
        get<_i59.ConnectToRobotUseCase>(),
        get<_i72.GetTokenOrNullUseCase>(),
        get<_i66.GetOrganizationIdUseCase>(),
        get<_i83.SetOrganizationIdUseCase>(),
        get<_i58.ClearCacheUseCase>(),
        get<_i76.LogoutUseCase>(),
        get<_i86.SubscribeToTokenExpiredStreamUseCase>(),
      ));
  gh.factory<_i117.RemoveCurrentBoatIdUseCase>(
      () => _i117.RemoveCurrentBoatIdUseCase(get<_i97.BoatService>()));
  gh.factory<_i118.SensorTileCubit>(() => _i118.SensorTileCubit(
        get<_i112.GetSensorDataUseCase>(),
        get<_i109.GetLinearVelocityUseCase>(),
        get<_i11.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i119.SetCurrentBoatIdUseCase>(
      () => _i119.SetCurrentBoatIdUseCase(get<_i97.BoatService>()));
  gh.factory<_i120.SettingsCubit>(() => _i120.SettingsCubit(
        get<_i104.GetBoatsUseCase>(),
        get<_i102.DeleteBoatUseCase>(),
        get<_i74.LogDeleteBoatEventUseCase>(),
        get<_i117.RemoveCurrentBoatIdUseCase>(),
        get<_i119.SetCurrentBoatIdUseCase>(),
        get<_i22.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i55.ChoosePhotoForBoatUseCase>(),
        get<_i53.CapturePhotoForBoatUseCase>(),
        get<_i76.LogoutUseCase>(),
        get<_i58.ClearCacheUseCase>(),
      ));
  gh.factory<_i121.SubscribeToCameraStreamUseCase>(() =>
      _i121.SubscribeToCameraStreamUseCase(get<_i87.ViamAppCameraService>()));
  gh.factory<_i122.WebrtcCameraCubit>(() => _i122.WebrtcCameraCubit(
        get<_i107.GetCameraVideoUseCase>(),
        get<_i121.SubscribeToCameraStreamUseCase>(),
        get<_i11.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i123.AddNewBoatUseCase>(
      () => _i123.AddNewBoatUseCase(get<_i97.BoatService>()));
  gh.factory<_i124.AnalyticsCubit>(() => _i124.AnalyticsCubit(
        get<_i101.ConnectToViamAppUseCase>(),
        get<_i72.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i125.BoatListCubit>(() => _i125.BoatListCubit(
        get<_i104.GetBoatsUseCase>(),
        get<_i108.GetCurrentBoatIdUseCase>(),
        get<_i119.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i126.CameraTileCubit>(
      () => _i126.CameraTileCubit(get<_i105.GetCameraDataUseCase>()));
  gh.factory<_i127.ChangeBoatNameCubit>(() => _i127.ChangeBoatNameCubit(
        get<_i99.ChangeBoatNameUseCase>(),
        get<_i18.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i128.ConnectionErrorCubit>(() => _i128.ConnectionErrorCubit(
        get<_i59.ConnectToRobotUseCase>(),
        get<_i72.GetTokenOrNullUseCase>(),
        get<_i123.AddNewBoatUseCase>(),
        get<_i104.GetBoatsUseCase>(),
        get<_i12.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i129.DashboardCubit>(() => _i129.DashboardCubit(
        get<_i104.GetBoatsUseCase>(),
        get<_i108.GetCurrentBoatIdUseCase>(),
        get<_i22.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i130.DepthOverTimeCubit>(() =>
      _i130.DepthOverTimeCubit(get<_i113.GetTabularDataByFilterUseCase>()));
  gh.factory<_i131.LocationsPageCubit>(() => _i131.LocationsPageCubit(
        get<_i65.GetLocationsUseCase>(),
        get<_i123.AddNewBoatUseCase>(),
        get<_i59.ConnectToRobotUseCase>(),
        get<_i12.GetRobotAddressUseCase>(),
        get<_i104.GetBoatsUseCase>(),
        get<_i71.GetRobotsUseCase>(),
        get<_i72.GetTokenOrNullUseCase>(),
        get<_i82.SetLocationIdUseCase>(),
        get<_i69.GetRobotIdUseCase>(),
        get<_i63.GetLocationIdUseCase>(),
        get<_i84.SetRobotIdUseCase>(),
      ));
  gh.factory<_i132.AddBoatCubit>(() => _i132.AddBoatCubit(
        get<_i123.AddNewBoatUseCase>(),
        get<_i100.CheckConnectionUseCase>(),
        get<_i119.SetCurrentBoatIdUseCase>(),
        get<_i106.GetCameraPermissionStatusUseCase>(),
        get<_i79.RequestCameraPermissionUseCase>(),
        get<_i73.LogAddBoatEventUseCase>(),
        get<_i28.Uuid>(),
        get<_i104.GetBoatsUseCase>(),
        get<_i50.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i133.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i134.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i135.NavigatorKeyModule {}

class _$ImagePickerModule extends _i136.ImagePickerModule {}

class _$CameraPermissionModule extends _i137.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i138.SharedPreferencesModule {}

class _$UuidModule extends _i139.UuidModule {}

class _$ViamSdkModule extends _i140.ViamSdkModule {}

class _$ViamSdkDirectDataClientModule
    extends _i140.ViamSdkDirectDataClientModule {}
