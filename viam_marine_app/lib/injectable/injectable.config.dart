// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i9;
import 'package:flutter/material.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i18;
import 'package:shared_preferences/shared_preferences.dart' as _i20;
import 'package:uuid/uuid.dart' as _i27;
import 'package:viam_sdk/viam_sdk.dart' as _i28;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i41;
import '../data/analytics/service/analytics_service_impl.dart' as _i43;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i44;
import '../data/app_viam/service/app_viam_service.dart' as _i46;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i48;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i97;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i60;
import '../data/camera/data_source/camera_api_data_source.dart' as _i50;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i31;
import '../data/camera/service/camera_service_impl.dart' as _i87;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i56;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i61;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i95;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i14;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i16;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i29;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i33;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i34;
import '../data/movement/service/movement_service_impl.dart' as _i89;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i51;
import '../data/permissions/service/permissions_service_impl.dart' as _i77;
import '../data/resource/data_source/resource_api_data_source.dart' as _i79;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i30;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i35;
import '../data/resource/service/resource_service_impl.dart' as _i91;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i80;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i36;
import '../data/sensor/service/sensor_service_impl.dart' as _i93;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i24;
import '../data/viam/data_source/viam_data_source.dart' as _i32;
import '../data/viam/service/viam_service_impl.dart' as _i38;
import '../data/viam/store/token_box.dart' as _i22;
import '../data/viam/store/token_store_impl.dart' as _i26;
import '../domain/analytics/service/analytics_service.dart' as _i42;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i72;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i73;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i74;
import '../domain/app_viam/service/app_viam_service.dart' as _i45;
import '../domain/app_viam/store/app_viam_store.dart' as _i47;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i62;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i63;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i64;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i65;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i68;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i69;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i70;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i67;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i81;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i82;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i83;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i96;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i59;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i120;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i98;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i99;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i100;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i102;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i106;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i17;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i114;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i116;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i21;
import '../domain/camera/service/camera_service.dart' as _i86;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i103;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i105;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i118;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i55;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i57;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/data_viam/service/viam_data_service.dart' as _i94;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i101;
import '../domain/local_photo/service/local_photo_service.dart' as _i15;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i52;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i54;
import '../domain/movement/service/movement_service.dart' as _i88;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i107;
import '../domain/movement/usecase/get_position_use_case.dart' as _i108;
import '../domain/permissions/service/permissions_service.dart' as _i76;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i104;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i78;
import '../domain/resource/service/resource_service.dart' as _i90;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i109;
import '../domain/sensor/service/sensor_service_impl.dart' as _i92;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i110;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i23;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i85;
import '../domain/viam/service/viam_service.dart' as _i37;
import '../domain/viam/store/token_store.dart' as _i25;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i49;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i53;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i58;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i11;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i71;
import '../domain/viam/usecase/logout_use_case.dart' as _i75;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i127;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i39;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i40;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i121;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i119;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i123;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i124;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i125;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i126;
import '../presentation/page/main/cubit/main_cubit.dart' as _i111;
import '../presentation/page/map/cubit/map_cubit.dart' as _i112;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i113;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i19;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i117;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i84;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i122;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i115;
import 'camera_permission_injectable.dart' as _i132;
import 'file_picker_injectable.dart' as _i128;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i129;
import 'image_picker_injectable.dart' as _i131;
import 'navigator_key_injectable.dart' as _i130;
import 'shared_preferences_injectable.dart' as _i133;
import 'uuid_injectable.dart' as _i134;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i135;

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
  final viamSdkModule = _$ViamSdkModule();
  gh.factory<_i3.AnalyticsCubit>(() => _i3.AnalyticsCubit());
  gh.singleton<_i4.BoatBox>(_i5.CurrentBoatBoxImpl());
  gh.lazySingleton<_i6.BoatUpdateBroadcaster>(
      () => _i7.BoatChangeBroadcasterImpl());
  gh.factory<_i8.FilePicker>(() => filePickerModule.filePicker);
  gh.singleton<_i9.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.lazySingleton<_i9.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.factory<_i10.GetCurrentTimeUseCase>(() => _i10.GetCurrentTimeUseCase());
  gh.factory<_i11.GetRobotAddressUseCase>(() => _i11.GetRobotAddressUseCase());
  gh.singleton<_i12.GlobalKey<_i12.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i13.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i14.LocalPhotoDataSource>(() => _i14.LocalPhotoDataSource(
        get<_i13.ImagePicker>(),
        get<_i8.FilePicker>(),
      ));
  gh.factory<_i15.LocalPhotoService>(() => _i16.LocalPhotoServiceImpl(
        get<_i14.LocalPhotoDataSource>(),
        get<_i4.BoatBox>(),
      ));
  gh.factory<_i17.NotifyBoatNameUpdateUseCase>(
      () => _i17.NotifyBoatNameUpdateUseCase(get<_i6.BoatUpdateBroadcaster>()));
  gh.singleton<_i18.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i19.ScanQrCubit>(() => _i19.ScanQrCubit());
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i21.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i21.SubscribeToBoatUpdateStreamUseCase(
          get<_i6.BoatUpdateBroadcaster>()));
  gh.singleton<_i22.TokenBox>(_i22.TokenBoxImpl());
  gh.singleton<_i23.TokenExpiredBroadcaster>(
      _i24.TokenExpiredBroadcasterImpl());
  gh.factory<_i25.TokenStore>(() => _i26.TokenStoreImpl(get<_i22.TokenBox>()));
  gh.singleton<_i27.Uuid>(uuidModule.uuid);
  gh.singleton<_i28.Viam>(viamSdkModule.viam);
  gh.factory<_i29.ViamAppMovementSdkDataSource>(
      () => _i29.ViamAppMovementSdkDataSource(get<_i28.Viam>()));
  gh.factory<_i30.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i30.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i31.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i31.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i32.ViamDataSource>(() => _i32.ViamDataSource(get<_i28.Viam>()));
  gh.factory<_i33.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i33.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i34.ViamPositionToViamAppPositionMapper>(
      () => _i34.ViamPositionToViamAppPositionMapper());
  gh.factory<_i35.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i35.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i36.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i36.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i37.ViamService>(() => _i38.ViamServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i32.ViamDataSource>(),
        get<_i25.TokenStore>(),
      ));
  gh.factory<_i39.WaterDepthCubit>(() => _i39.WaterDepthCubit());
  gh.factory<_i40.WaterTemperatureCubit>(() => _i40.WaterTemperatureCubit());
  gh.factory<_i41.AnalyticsDataSink>(
      () => _i41.AnalyticsDataSinkImpl(get<_i9.FirebaseAnalytics>()));
  gh.factory<_i42.AnalyticsService>(
      () => _i43.AnalyticsServiceImpl(get<_i41.AnalyticsDataSink>()));
  gh.factory<_i44.AppViamDataSource>(
      () => _i44.AppViamDataSource(get<_i28.Viam>()));
  gh.lazySingleton<_i45.AppViamService>(() => _i46.AppViamServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i44.AppViamDataSource>(),
      ));
  gh.factory<_i47.AppViamStore>(
      () => _i48.SharedPreferencesAppViamStore(get<_i20.SharedPreferences>()));
  gh.factory<_i49.AuthenticateUseCase>(
      () => _i49.AuthenticateUseCase(get<_i37.ViamService>()));
  gh.factory<_i50.CameraDataSource>(
      () => _i50.CameraDataSource(get<_i28.Viam>()));
  gh.factory<_i51.CameraPermissionDataSource>(
      () => _i51.CameraPermissionDataSource(get<_i18.Permission>()));
  gh.factory<_i52.CapturePhotoForBoatUseCase>(
      () => _i52.CapturePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i53.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i53.CheckIfHasTokenAndRefreshTokenUseCase(get<_i25.TokenStore>()));
  gh.factory<_i54.ChoosePhotoForBoatUseCase>(
      () => _i54.ChoosePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i55.ClearCacheService>(() => _i56.ClearCacheServiceImpl(
        get<_i25.TokenStore>(),
        get<_i47.AppViamStore>(),
      ));
  gh.factory<_i57.ClearCacheUseCase>(
      () => _i57.ClearCacheUseCase(get<_i55.ClearCacheService>()));
  gh.factory<_i58.ConnectToRobotUseCase>(
      () => _i58.ConnectToRobotUseCase(get<_i37.ViamService>()));
  gh.factory<_i59.CurrentBoatStore>(() =>
      _i60.SharedPreferencesCurrentBoatStore(get<_i20.SharedPreferences>()));
  gh.factory<_i61.DataViamDataSource>(
      () => _i61.DataViamDataSource(get<_i28.Viam>()));
  gh.factory<_i62.GetLocationIdUseCase>(
      () => _i62.GetLocationIdUseCase(get<_i47.AppViamStore>()));
  gh.factory<_i63.GetLocationUseCase>(
      () => _i63.GetLocationUseCase(get<_i45.AppViamService>()));
  gh.factory<_i64.GetLocationsUseCase>(
      () => _i64.GetLocationsUseCase(get<_i45.AppViamService>()));
  gh.factory<_i65.GetOrganizationIdUseCase>(
      () => _i65.GetOrganizationIdUseCase(get<_i47.AppViamStore>()));
  gh.factory<_i66.GetOrganizationUseCase>(
      () => _i66.GetOrganizationUseCase(get<_i45.AppViamService>()));
  gh.factory<_i67.GetOrganizationsListUseCase>(
      () => _i67.GetOrganizationsListUseCase(get<_i45.AppViamService>()));
  gh.factory<_i68.GetRobotIdUseCase>(
      () => _i68.GetRobotIdUseCase(get<_i47.AppViamStore>()));
  gh.factory<_i69.GetRobotUseCase>(
      () => _i69.GetRobotUseCase(get<_i45.AppViamService>()));
  gh.factory<_i70.GetRobotsUseCase>(
      () => _i70.GetRobotsUseCase(get<_i45.AppViamService>()));
  gh.factory<_i71.GetTokenOrNullUseCase>(
      () => _i71.GetTokenOrNullUseCase(get<_i25.TokenStore>()));
  gh.factory<_i72.LogAddBoatEventUseCase>(
      () => _i72.LogAddBoatEventUseCase(get<_i42.AnalyticsService>()));
  gh.factory<_i73.LogDeleteBoatEventUseCase>(
      () => _i73.LogDeleteBoatEventUseCase(get<_i42.AnalyticsService>()));
  gh.factory<_i74.LogOpenAppEventUseCase>(
      () => _i74.LogOpenAppEventUseCase(get<_i42.AnalyticsService>()));
  gh.factory<_i75.LogoutUseCase>(
      () => _i75.LogoutUseCase(get<_i37.ViamService>()));
  gh.lazySingleton<_i76.PermissionsService>(() =>
      _i77.PermissionsServiceImpl(get<_i51.CameraPermissionDataSource>()));
  gh.factory<_i78.RequestCameraPermissionUseCase>(() =>
      _i78.RequestCameraPermissionUseCase(get<_i76.PermissionsService>()));
  gh.factory<_i79.ResourceDataSource>(
      () => _i79.ResourceDataSource(get<_i28.Viam>()));
  gh.factory<_i80.SensorDataSource>(
      () => _i80.SensorDataSource(get<_i28.Viam>()));
  gh.factory<_i81.SetLocationIdUseCase>(
      () => _i81.SetLocationIdUseCase(get<_i47.AppViamStore>()));
  gh.factory<_i82.SetOrganizationIdUseCase>(
      () => _i82.SetOrganizationIdUseCase(get<_i47.AppViamStore>()));
  gh.factory<_i83.SetRobotIdUseCase>(
      () => _i83.SetRobotIdUseCase(get<_i47.AppViamStore>()));
  gh.factory<_i84.SplashCubit>(() =>
      _i84.SplashCubit(get<_i53.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i85.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i85.SubscribeToTokenExpiredStreamUseCase(
          get<_i23.TokenExpiredBroadcaster>()));
  gh.factory<_i86.ViamAppCameraService>(() => _i87.ViamAppCameraServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i50.CameraDataSource>(),
        get<_i31.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i88.ViamAppMovementService>(() => _i89.ViamAppMovementServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i29.ViamAppMovementSdkDataSource>(),
        get<_i30.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamPositionToViamAppPositionMapper>(),
        get<_i33.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i90.ViamAppResourceService>(() => _i91.ViamAppResourceServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i79.ResourceDataSource>(),
        get<_i35.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i92.ViamAppSensorService>(() => _i93.ViamAppSensorServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i80.SensorDataSource>(),
        get<_i30.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i36.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i94.ViamDataService>(() => _i95.ViamDataServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i61.DataViamDataSource>(),
      ));
  gh.factory<_i96.BoatService>(() => _i97.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i59.CurrentBoatStore>(),
      ));
  gh.factory<_i98.ChangeBoatNameUseCase>(
      () => _i98.ChangeBoatNameUseCase(get<_i96.BoatService>()));
  gh.factory<_i99.CheckConnectionUseCase>(
      () => _i99.CheckConnectionUseCase(get<_i96.BoatService>()));
  gh.factory<_i100.DeleteBoatUseCase>(
      () => _i100.DeleteBoatUseCase(get<_i96.BoatService>()));
  gh.factory<_i101.GetBinaryDataByFilterUseCase>(
      () => _i101.GetBinaryDataByFilterUseCase(get<_i94.ViamDataService>()));
  gh.factory<_i102.GetBoatsUseCase>(
      () => _i102.GetBoatsUseCase(get<_i96.BoatService>()));
  gh.factory<_i103.GetCameraDataUseCase>(
      () => _i103.GetCameraDataUseCase(get<_i86.ViamAppCameraService>()));
  gh.factory<_i104.GetCameraPermissionStatusUseCase>(() =>
      _i104.GetCameraPermissionStatusUseCase(get<_i76.PermissionsService>()));
  gh.factory<_i105.GetCameraVideoUseCase>(
      () => _i105.GetCameraVideoUseCase(get<_i86.ViamAppCameraService>()));
  gh.factory<_i106.GetCurrentBoatIdUseCase>(
      () => _i106.GetCurrentBoatIdUseCase(get<_i96.BoatService>()));
  gh.factory<_i107.GetLinearVelocityUseCase>(
      () => _i107.GetLinearVelocityUseCase(get<_i88.ViamAppMovementService>()));
  gh.factory<_i108.GetPostionUseCase>(
      () => _i108.GetPostionUseCase(get<_i88.ViamAppMovementService>()));
  gh.factory<_i109.GetResourceNamesUseCase>(
      () => _i109.GetResourceNamesUseCase(get<_i90.ViamAppResourceService>()));
  gh.factory<_i110.GetSensorDataUseCase>(
      () => _i110.GetSensorDataUseCase(get<_i92.ViamAppSensorService>()));
  gh.factory<_i111.MainCubit>(() => _i111.MainCubit(
        get<_i109.GetResourceNamesUseCase>(),
        get<_i71.GetTokenOrNullUseCase>(),
        get<_i85.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i57.ClearCacheUseCase>(),
      ));
  gh.factory<_i112.MapCubit>(() => _i112.MapCubit(
        get<_i108.GetPostionUseCase>(),
        get<_i110.GetSensorDataUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i113.OrganizationsCubit>(() => _i113.OrganizationsCubit(
        get<_i67.GetOrganizationsListUseCase>(),
        get<_i58.ConnectToRobotUseCase>(),
        get<_i71.GetTokenOrNullUseCase>(),
        get<_i65.GetOrganizationIdUseCase>(),
        get<_i82.SetOrganizationIdUseCase>(),
        get<_i57.ClearCacheUseCase>(),
        get<_i75.LogoutUseCase>(),
        get<_i85.SubscribeToTokenExpiredStreamUseCase>(),
      ));
  gh.factory<_i114.RemoveCurrentBoatIdUseCase>(
      () => _i114.RemoveCurrentBoatIdUseCase(get<_i96.BoatService>()));
  gh.factory<_i115.SensorTileCubit>(() => _i115.SensorTileCubit(
        get<_i110.GetSensorDataUseCase>(),
        get<_i107.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i116.SetCurrentBoatIdUseCase>(
      () => _i116.SetCurrentBoatIdUseCase(get<_i96.BoatService>()));
  gh.factory<_i117.SettingsCubit>(() => _i117.SettingsCubit(
        get<_i102.GetBoatsUseCase>(),
        get<_i100.DeleteBoatUseCase>(),
        get<_i73.LogDeleteBoatEventUseCase>(),
        get<_i114.RemoveCurrentBoatIdUseCase>(),
        get<_i116.SetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i54.ChoosePhotoForBoatUseCase>(),
        get<_i52.CapturePhotoForBoatUseCase>(),
        get<_i75.LogoutUseCase>(),
        get<_i57.ClearCacheUseCase>(),
      ));
  gh.factory<_i118.SubscribeToCameraStreamUseCase>(() =>
      _i118.SubscribeToCameraStreamUseCase(get<_i86.ViamAppCameraService>()));
  gh.factory<_i119.WebrtcCameraCubit>(() => _i119.WebrtcCameraCubit(
        get<_i105.GetCameraVideoUseCase>(),
        get<_i118.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i120.AddNewBoatUseCase>(
      () => _i120.AddNewBoatUseCase(get<_i96.BoatService>()));
  gh.factory<_i121.BoatListCubit>(() => _i121.BoatListCubit(
        get<_i102.GetBoatsUseCase>(),
        get<_i106.GetCurrentBoatIdUseCase>(),
        get<_i116.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i122.CameraTileCubit>(
      () => _i122.CameraTileCubit(get<_i103.GetCameraDataUseCase>()));
  gh.factory<_i123.ChangeBoatNameCubit>(() => _i123.ChangeBoatNameCubit(
        get<_i98.ChangeBoatNameUseCase>(),
        get<_i17.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i124.ConnectionErrorCubit>(() => _i124.ConnectionErrorCubit(
        get<_i58.ConnectToRobotUseCase>(),
        get<_i71.GetTokenOrNullUseCase>(),
        get<_i120.AddNewBoatUseCase>(),
        get<_i102.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i125.DashboardCubit>(() => _i125.DashboardCubit(
        get<_i102.GetBoatsUseCase>(),
        get<_i106.GetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i126.LocationsPageCubit>(() => _i126.LocationsPageCubit(
        get<_i64.GetLocationsUseCase>(),
        get<_i120.AddNewBoatUseCase>(),
        get<_i58.ConnectToRobotUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
        get<_i102.GetBoatsUseCase>(),
        get<_i70.GetRobotsUseCase>(),
        get<_i71.GetTokenOrNullUseCase>(),
        get<_i81.SetLocationIdUseCase>(),
        get<_i68.GetRobotIdUseCase>(),
        get<_i62.GetLocationIdUseCase>(),
        get<_i83.SetRobotIdUseCase>(),
      ));
  gh.factory<_i127.AddBoatCubit>(() => _i127.AddBoatCubit(
        get<_i120.AddNewBoatUseCase>(),
        get<_i99.CheckConnectionUseCase>(),
        get<_i116.SetCurrentBoatIdUseCase>(),
        get<_i104.GetCameraPermissionStatusUseCase>(),
        get<_i78.RequestCameraPermissionUseCase>(),
        get<_i72.LogAddBoatEventUseCase>(),
        get<_i27.Uuid>(),
        get<_i102.GetBoatsUseCase>(),
        get<_i49.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i128.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i129.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i130.NavigatorKeyModule {}

class _$ImagePickerModule extends _i131.ImagePickerModule {}

class _$CameraPermissionModule extends _i132.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i133.SharedPreferencesModule {}

class _$UuidModule extends _i134.UuidModule {}

class _$ViamSdkModule extends _i135.ViamSdkModule {}
