// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:flutter/material.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i20;
import 'package:shared_preferences/shared_preferences.dart' as _i22;
import 'package:uuid/uuid.dart' as _i29;
import 'package:viam_sdk/viam_sdk.dart' as _i30;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i45;
import '../data/analytics/service/analytics_service_impl.dart' as _i47;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i48;
import '../data/app_viam/service/app_viam_service.dart' as _i50;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i52;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i101;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i64;
import '../data/camera/data_source/camera_api_data_source.dart' as _i54;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i33;
import '../data/camera/service/camera_service_impl.dart' as _i91;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i60;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i65;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i99;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i16;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i18;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i31;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i35;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i36;
import '../data/movement/service/movement_service_impl.dart' as _i93;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i55;
import '../data/permissions/service/permissions_service_impl.dart' as _i81;
import '../data/resource/data_source/resource_api_data_source.dart' as _i83;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i32;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i37;
import '../data/resource/service/resource_service_impl.dart' as _i95;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i84;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i38;
import '../data/sensor/service/sensor_service_impl.dart' as _i97;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i26;
import '../data/viam/data_source/viam_data_source.dart' as _i34;
import '../data/viam/service/viam_service_impl.dart' as _i40;
import '../data/viam/store/token_box.dart' as _i24;
import '../data/viam/store/token_store_impl.dart' as _i28;
import '../domain/analytics/service/analytics_service.dart' as _i46;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i76;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i77;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i78;
import '../domain/app_viam/service/app_viam_service.dart' as _i49;
import '../domain/app_viam/store/app_viam_store.dart' as _i51;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i67;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i68;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i69;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i70;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i72;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i73;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i74;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i71;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i85;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i86;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i87;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i100;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i63;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i128;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i102;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i103;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i105;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i107;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i111;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i19;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i122;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i124;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i23;
import '../domain/camera/service/camera_service.dart' as _i90;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i108;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i110;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i126;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i59;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i61;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/data_viam/service/viam_data_service.dart' as _i98;
import '../domain/data_viam/use_case/connect_to_viam_app_use_case.dart'
    as _i104;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i106;
import '../domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i112;
import '../domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i113;
import '../domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart'
    as _i118;
import '../domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i12;
import '../domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i13;
import '../domain/local_photo/service/local_photo_service.dart' as _i17;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i56;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i58;
import '../domain/movement/service/movement_service.dart' as _i92;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i114;
import '../domain/movement/usecase/get_position_use_case.dart' as _i115;
import '../domain/permissions/service/permissions_service.dart' as _i80;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i109;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i82;
import '../domain/resource/service/resource_service.dart' as _i94;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i116;
import '../domain/sensor/service/sensor_service_impl.dart' as _i96;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i117;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i25;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i89;
import '../domain/viam/service/viam_service.dart' as _i39;
import '../domain/viam/store/token_store.dart' as _i27;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i53;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i57;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i62;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i11;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i75;
import '../domain/viam/usecase/logout_use_case.dart' as _i79;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i138;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i129;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i135;
import '../presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i9;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i136;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i42;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i44;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i130;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i127;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i132;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i133;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i134;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i137;
import '../presentation/page/main/cubit/main_cubit.dart' as _i119;
import '../presentation/page/map/cubit/map_cubit.dart' as _i120;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i121;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i21;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i125;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i88;
import '../presentation/page/water_depth/cubit/water_depth_cubit.dart' as _i41;
import '../presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i43;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i131;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i123;
import 'camera_permission_injectable.dart' as _i143;
import 'file_picker_injectable.dart' as _i139;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i140;
import 'image_picker_injectable.dart' as _i142;
import 'navigator_key_injectable.dart' as _i141;
import 'shared_preferences_injectable.dart' as _i144;
import 'uuid_injectable.dart' as _i145;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i146;

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
  final filePickerModule = _$FilePickerModule();
  final firebaseAnalyticsModule = _$FirebaseAnalyticsModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  final imagePickerModule = _$ImagePickerModule();
  final cameraPermissionModule = _$CameraPermissionModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final uuidModule = _$UuidModule();
  final viamSdkDirectDataClientModule = _$ViamSdkDirectDataClientModule();
  final viamSdkModule = _$ViamSdkModule();
  gh.singleton<_i3.BoatBox>(_i4.CurrentBoatBoxImpl());
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(
      () => _i6.BoatChangeBroadcasterImpl());
  gh.factory<_i7.FilePicker>(() => filePickerModule.filePicker);
  gh.singleton<_i8.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.lazySingleton<_i8.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.factory<_i9.FuelConsumptionOverTimeCubit>(
      () => _i9.FuelConsumptionOverTimeCubit());
  gh.factory<_i10.GetCurrentTimeUseCase>(() => _i10.GetCurrentTimeUseCase());
  gh.factory<_i11.GetRobotAddressUseCase>(() => _i11.GetRobotAddressUseCase());
  gh.factory<_i12.GetWaterDepthDataUseCase>(
      () => _i12.GetWaterDepthDataUseCase());
  gh.factory<_i13.GetWaterTemperatureDataUseCase>(
      () => _i13.GetWaterTemperatureDataUseCase());
  gh.singleton<_i14.GlobalKey<_i14.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i15.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i16.LocalPhotoDataSource>(() => _i16.LocalPhotoDataSource(
        get<_i15.ImagePicker>(),
        get<_i7.FilePicker>(),
      ));
  gh.factory<_i17.LocalPhotoService>(() => _i18.LocalPhotoServiceImpl(
        get<_i16.LocalPhotoDataSource>(),
        get<_i3.BoatBox>(),
      ));
  gh.factory<_i19.NotifyBoatNameUpdateUseCase>(
      () => _i19.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i20.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i21.ScanQrCubit>(() => _i21.ScanQrCubit());
  await gh.factoryAsync<_i22.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i23.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i23.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i24.TokenBox>(_i24.TokenBoxImpl());
  gh.singleton<_i25.TokenExpiredBroadcaster>(
      _i26.TokenExpiredBroadcasterImpl());
  gh.factory<_i27.TokenStore>(() => _i28.TokenStoreImpl(get<_i24.TokenBox>()));
  gh.singleton<_i29.Uuid>(uuidModule.uuid);
  gh.singleton<_i30.Viam>(
    viamSdkDirectDataClientModule.viam,
    instanceName: 'directDataClient',
  );
  gh.singleton<_i30.Viam>(
    viamSdkModule.viam,
    instanceName: 'viamSdk',
  );
  gh.factory<_i31.ViamAppMovementSdkDataSource>(() =>
      _i31.ViamAppMovementSdkDataSource(
          get<_i30.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i32.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i32.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i33.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i33.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i34.ViamDataSource>(
      () => _i34.ViamDataSource(get<_i30.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i35.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i35.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i36.ViamPositionToViamAppPositionMapper>(
      () => _i36.ViamPositionToViamAppPositionMapper());
  gh.factory<_i37.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i37.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i38.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i38.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i39.ViamService>(() => _i40.ViamServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i34.ViamDataSource>(),
        get<_i27.TokenStore>(),
      ));
  gh.factory<_i41.WaterDepthCubit>(
      () => _i41.WaterDepthCubit(get<_i12.GetWaterDepthDataUseCase>()));
  gh.factory<_i42.WaterDepthCubit>(
      () => _i42.WaterDepthCubit(get<_i12.GetWaterDepthDataUseCase>()));
  gh.factory<_i43.WaterTemperatureCubit>(() =>
      _i43.WaterTemperatureCubit(get<_i13.GetWaterTemperatureDataUseCase>()));
  gh.factory<_i44.WaterTemperatureCubit>(() =>
      _i44.WaterTemperatureCubit(get<_i13.GetWaterTemperatureDataUseCase>()));
  gh.factory<_i45.AnalyticsDataSink>(
      () => _i45.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i46.AnalyticsService>(
      () => _i47.AnalyticsServiceImpl(get<_i45.AnalyticsDataSink>()));
  gh.factory<_i48.AppViamDataSource>(
      () => _i48.AppViamDataSource(get<_i30.Viam>(instanceName: 'viamSdk')));
  gh.lazySingleton<_i49.AppViamService>(() => _i50.AppViamServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i48.AppViamDataSource>(),
      ));
  gh.factory<_i51.AppViamStore>(
      () => _i52.SharedPreferencesAppViamStore(get<_i22.SharedPreferences>()));
  gh.factory<_i53.AuthenticateUseCase>(
      () => _i53.AuthenticateUseCase(get<_i39.ViamService>()));
  gh.factory<_i54.CameraDataSource>(
      () => _i54.CameraDataSource(get<_i30.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i55.CameraPermissionDataSource>(
      () => _i55.CameraPermissionDataSource(get<_i20.Permission>()));
  gh.factory<_i56.CapturePhotoForBoatUseCase>(
      () => _i56.CapturePhotoForBoatUseCase(get<_i17.LocalPhotoService>()));
  gh.factory<_i57.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i57.CheckIfHasTokenAndRefreshTokenUseCase(get<_i27.TokenStore>()));
  gh.factory<_i58.ChoosePhotoForBoatUseCase>(
      () => _i58.ChoosePhotoForBoatUseCase(get<_i17.LocalPhotoService>()));
  gh.factory<_i59.ClearCacheService>(() => _i60.ClearCacheServiceImpl(
        get<_i27.TokenStore>(),
        get<_i51.AppViamStore>(),
      ));
  gh.factory<_i61.ClearCacheUseCase>(
      () => _i61.ClearCacheUseCase(get<_i59.ClearCacheService>()));
  gh.factory<_i62.ConnectToRobotUseCase>(
      () => _i62.ConnectToRobotUseCase(get<_i39.ViamService>()));
  gh.factory<_i63.CurrentBoatStore>(() =>
      _i64.SharedPreferencesCurrentBoatStore(get<_i22.SharedPreferences>()));
  gh.factory<_i65.DataViamDataSource>(() => _i65.DataViamDataSource(
      get<_i30.Viam>(instanceName: 'directDataClient')));
  gh.factory<_i66.GetLocationIdUseCase>(
      () => _i66.GetLocationIdUseCase(get<_i51.AppViamStore>()));
  gh.factory<_i67.GetLocationUseCase>(
      () => _i67.GetLocationUseCase(get<_i49.AppViamService>()));
  gh.factory<_i68.GetLocationsUseCase>(
      () => _i68.GetLocationsUseCase(get<_i49.AppViamService>()));
  gh.factory<_i69.GetOrganizationIdUseCase>(
      () => _i69.GetOrganizationIdUseCase(get<_i51.AppViamStore>()));
  gh.factory<_i70.GetOrganizationUseCase>(
      () => _i70.GetOrganizationUseCase(get<_i49.AppViamService>()));
  gh.factory<_i71.GetOrganizationsListUseCase>(
      () => _i71.GetOrganizationsListUseCase(get<_i49.AppViamService>()));
  gh.factory<_i72.GetRobotIdUseCase>(
      () => _i72.GetRobotIdUseCase(get<_i51.AppViamStore>()));
  gh.factory<_i73.GetRobotUseCase>(
      () => _i73.GetRobotUseCase(get<_i49.AppViamService>()));
  gh.factory<_i74.GetRobotsUseCase>(
      () => _i74.GetRobotsUseCase(get<_i49.AppViamService>()));
  gh.factory<_i75.GetTokenOrNullUseCase>(
      () => _i75.GetTokenOrNullUseCase(get<_i27.TokenStore>()));
  gh.factory<_i76.LogAddBoatEventUseCase>(
      () => _i76.LogAddBoatEventUseCase(get<_i46.AnalyticsService>()));
  gh.factory<_i77.LogDeleteBoatEventUseCase>(
      () => _i77.LogDeleteBoatEventUseCase(get<_i46.AnalyticsService>()));
  gh.factory<_i78.LogOpenAppEventUseCase>(
      () => _i78.LogOpenAppEventUseCase(get<_i46.AnalyticsService>()));
  gh.factory<_i79.LogoutUseCase>(
      () => _i79.LogoutUseCase(get<_i39.ViamService>()));
  gh.lazySingleton<_i80.PermissionsService>(() =>
      _i81.PermissionsServiceImpl(get<_i55.CameraPermissionDataSource>()));
  gh.factory<_i82.RequestCameraPermissionUseCase>(() =>
      _i82.RequestCameraPermissionUseCase(get<_i80.PermissionsService>()));
  gh.factory<_i83.ResourceDataSource>(
      () => _i83.ResourceDataSource(get<_i30.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i84.SensorDataSource>(
      () => _i84.SensorDataSource(get<_i30.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i85.SetLocationIdUseCase>(
      () => _i85.SetLocationIdUseCase(get<_i51.AppViamStore>()));
  gh.factory<_i86.SetOrganizationIdUseCase>(
      () => _i86.SetOrganizationIdUseCase(get<_i51.AppViamStore>()));
  gh.factory<_i87.SetRobotIdUseCase>(
      () => _i87.SetRobotIdUseCase(get<_i51.AppViamStore>()));
  gh.factory<_i88.SplashCubit>(() =>
      _i88.SplashCubit(get<_i57.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i89.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i89.SubscribeToTokenExpiredStreamUseCase(
          get<_i25.TokenExpiredBroadcaster>()));
  gh.factory<_i90.ViamAppCameraService>(() => _i91.ViamAppCameraServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i54.CameraDataSource>(),
        get<_i33.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i92.ViamAppMovementService>(() => _i93.ViamAppMovementServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i31.ViamAppMovementSdkDataSource>(),
        get<_i32.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i36.ViamPositionToViamAppPositionMapper>(),
        get<_i35.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i94.ViamAppResourceService>(() => _i95.ViamAppResourceServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i83.ResourceDataSource>(),
        get<_i37.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i96.ViamAppSensorService>(() => _i97.ViamAppSensorServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i84.SensorDataSource>(),
        get<_i32.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i38.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i98.ViamDataService>(() => _i99.ViamDataServiceImpl(
        get<_i25.TokenExpiredBroadcaster>(),
        get<_i65.DataViamDataSource>(),
      ));
  gh.factory<_i100.BoatService>(() => _i101.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i63.CurrentBoatStore>(),
      ));
  gh.factory<_i102.ChangeBoatNameUseCase>(
      () => _i102.ChangeBoatNameUseCase(get<_i100.BoatService>()));
  gh.factory<_i103.CheckConnectionUseCase>(
      () => _i103.CheckConnectionUseCase(get<_i100.BoatService>()));
  gh.factory<_i104.ConnectToViamAppUseCase>(
      () => _i104.ConnectToViamAppUseCase(get<_i98.ViamDataService>()));
  gh.factory<_i105.DeleteBoatUseCase>(
      () => _i105.DeleteBoatUseCase(get<_i100.BoatService>()));
  gh.factory<_i106.GetBinaryDataByFilterUseCase>(
      () => _i106.GetBinaryDataByFilterUseCase(get<_i98.ViamDataService>()));
  gh.factory<_i107.GetBoatsUseCase>(
      () => _i107.GetBoatsUseCase(get<_i100.BoatService>()));
  gh.factory<_i108.GetCameraDataUseCase>(
      () => _i108.GetCameraDataUseCase(get<_i90.ViamAppCameraService>()));
  gh.factory<_i109.GetCameraPermissionStatusUseCase>(() =>
      _i109.GetCameraPermissionStatusUseCase(get<_i80.PermissionsService>()));
  gh.factory<_i110.GetCameraVideoUseCase>(
      () => _i110.GetCameraVideoUseCase(get<_i90.ViamAppCameraService>()));
  gh.factory<_i111.GetCurrentBoatIdUseCase>(
      () => _i111.GetCurrentBoatIdUseCase(get<_i100.BoatService>()));
  gh.factory<_i112.GetDepthOverTimeDataUseCase>(
      () => _i112.GetDepthOverTimeDataUseCase(get<_i98.ViamDataService>()));
  gh.factory<_i113.GetFuelConsumptionPerMileDataUseCase>(() =>
      _i113.GetFuelConsumptionPerMileDataUseCase(get<_i98.ViamDataService>()));
  gh.factory<_i114.GetLinearVelocityUseCase>(
      () => _i114.GetLinearVelocityUseCase(get<_i92.ViamAppMovementService>()));
  gh.factory<_i115.GetPostionUseCase>(
      () => _i115.GetPostionUseCase(get<_i92.ViamAppMovementService>()));
  gh.factory<_i116.GetResourceNamesUseCase>(
      () => _i116.GetResourceNamesUseCase(get<_i94.ViamAppResourceService>()));
  gh.factory<_i117.GetSensorDataUseCase>(
      () => _i117.GetSensorDataUseCase(get<_i96.ViamAppSensorService>()));
  gh.factory<_i118.GetTabularDataByFilterUseCase>(
      () => _i118.GetTabularDataByFilterUseCase(get<_i98.ViamDataService>()));
  gh.factory<_i119.MainCubit>(() => _i119.MainCubit(
        get<_i116.GetResourceNamesUseCase>(),
        get<_i75.GetTokenOrNullUseCase>(),
        get<_i89.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i61.ClearCacheUseCase>(),
      ));
  gh.factory<_i120.MapCubit>(() => _i120.MapCubit(
        get<_i115.GetPostionUseCase>(),
        get<_i117.GetSensorDataUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i121.OrganizationsCubit>(() => _i121.OrganizationsCubit(
        get<_i71.GetOrganizationsListUseCase>(),
        get<_i62.ConnectToRobotUseCase>(),
        get<_i75.GetTokenOrNullUseCase>(),
        get<_i69.GetOrganizationIdUseCase>(),
        get<_i86.SetOrganizationIdUseCase>(),
        get<_i61.ClearCacheUseCase>(),
        get<_i79.LogoutUseCase>(),
        get<_i89.SubscribeToTokenExpiredStreamUseCase>(),
      ));
  gh.factory<_i122.RemoveCurrentBoatIdUseCase>(
      () => _i122.RemoveCurrentBoatIdUseCase(get<_i100.BoatService>()));
  gh.factory<_i123.SensorTileCubit>(() => _i123.SensorTileCubit(
        get<_i117.GetSensorDataUseCase>(),
        get<_i114.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i124.SetCurrentBoatIdUseCase>(
      () => _i124.SetCurrentBoatIdUseCase(get<_i100.BoatService>()));
  gh.factory<_i125.SettingsCubit>(() => _i125.SettingsCubit(
        get<_i107.GetBoatsUseCase>(),
        get<_i105.DeleteBoatUseCase>(),
        get<_i77.LogDeleteBoatEventUseCase>(),
        get<_i122.RemoveCurrentBoatIdUseCase>(),
        get<_i124.SetCurrentBoatIdUseCase>(),
        get<_i23.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i58.ChoosePhotoForBoatUseCase>(),
        get<_i56.CapturePhotoForBoatUseCase>(),
        get<_i79.LogoutUseCase>(),
        get<_i61.ClearCacheUseCase>(),
      ));
  gh.factory<_i126.SubscribeToCameraStreamUseCase>(() =>
      _i126.SubscribeToCameraStreamUseCase(get<_i90.ViamAppCameraService>()));
  gh.factory<_i127.WebrtcCameraCubit>(() => _i127.WebrtcCameraCubit(
        get<_i110.GetCameraVideoUseCase>(),
        get<_i126.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i128.AddNewBoatUseCase>(
      () => _i128.AddNewBoatUseCase(get<_i100.BoatService>()));
  gh.factory<_i129.AnalyticsCubit>(() => _i129.AnalyticsCubit(
        get<_i104.ConnectToViamAppUseCase>(),
        get<_i75.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i130.BoatListCubit>(() => _i130.BoatListCubit(
        get<_i107.GetBoatsUseCase>(),
        get<_i111.GetCurrentBoatIdUseCase>(),
        get<_i124.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i131.CameraTileCubit>(
      () => _i131.CameraTileCubit(get<_i108.GetCameraDataUseCase>()));
  gh.factory<_i132.ChangeBoatNameCubit>(() => _i132.ChangeBoatNameCubit(
        get<_i102.ChangeBoatNameUseCase>(),
        get<_i19.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i133.ConnectionErrorCubit>(() => _i133.ConnectionErrorCubit(
        get<_i62.ConnectToRobotUseCase>(),
        get<_i75.GetTokenOrNullUseCase>(),
        get<_i128.AddNewBoatUseCase>(),
        get<_i107.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i134.DashboardCubit>(() => _i134.DashboardCubit(
        get<_i107.GetBoatsUseCase>(),
        get<_i111.GetCurrentBoatIdUseCase>(),
        get<_i23.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i135.DepthOverTimeCubit>(
      () => _i135.DepthOverTimeCubit(get<_i112.GetDepthOverTimeDataUseCase>()));
  gh.factory<_i136.FuelConsumptionPerMileCubit>(() =>
      _i136.FuelConsumptionPerMileCubit(
          get<_i113.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i137.LocationsPageCubit>(() => _i137.LocationsPageCubit(
        get<_i68.GetLocationsUseCase>(),
        get<_i128.AddNewBoatUseCase>(),
        get<_i62.ConnectToRobotUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
        get<_i107.GetBoatsUseCase>(),
        get<_i74.GetRobotsUseCase>(),
        get<_i75.GetTokenOrNullUseCase>(),
        get<_i85.SetLocationIdUseCase>(),
        get<_i72.GetRobotIdUseCase>(),
        get<_i66.GetLocationIdUseCase>(),
        get<_i87.SetRobotIdUseCase>(),
      ));
  gh.factory<_i138.AddBoatCubit>(() => _i138.AddBoatCubit(
        get<_i128.AddNewBoatUseCase>(),
        get<_i103.CheckConnectionUseCase>(),
        get<_i124.SetCurrentBoatIdUseCase>(),
        get<_i109.GetCameraPermissionStatusUseCase>(),
        get<_i82.RequestCameraPermissionUseCase>(),
        get<_i76.LogAddBoatEventUseCase>(),
        get<_i29.Uuid>(),
        get<_i107.GetBoatsUseCase>(),
        get<_i53.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i139.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i140.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i141.NavigatorKeyModule {}

class _$ImagePickerModule extends _i142.ImagePickerModule {}

class _$CameraPermissionModule extends _i143.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i144.SharedPreferencesModule {}

class _$UuidModule extends _i145.UuidModule {}

class _$ViamSdkDirectDataClientModule
    extends _i146.ViamSdkDirectDataClientModule {}

class _$ViamSdkModule extends _i146.ViamSdkModule {}
