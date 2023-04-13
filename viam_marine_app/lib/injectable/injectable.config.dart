// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i10;
import 'package:flutter/material.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i21;
import 'package:shared_preferences/shared_preferences.dart' as _i23;
import 'package:uuid/uuid.dart' as _i30;
import 'package:viam_sdk/viam_sdk.dart' as _i31;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i44;
import '../data/analytics/service/analytics_service_impl.dart' as _i46;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i47;
import '../data/app_viam/service/app_viam_service.dart' as _i49;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i51;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i100;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i63;
import '../data/camera/data_source/camera_api_data_source.dart' as _i53;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i34;
import '../data/camera/service/camera_service_impl.dart' as _i90;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i59;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i64;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i98;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i17;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i19;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i32;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i36;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i37;
import '../data/movement/service/movement_service_impl.dart' as _i92;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i54;
import '../data/permissions/service/permissions_service_impl.dart' as _i80;
import '../data/resource/data_source/resource_api_data_source.dart' as _i82;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i33;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i38;
import '../data/resource/service/resource_service_impl.dart' as _i94;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i83;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i39;
import '../data/sensor/service/sensor_service_impl.dart' as _i96;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i27;
import '../data/viam/data_source/viam_data_source.dart' as _i35;
import '../data/viam/service/viam_service_impl.dart' as _i41;
import '../data/viam/store/token_box.dart' as _i25;
import '../data/viam/store/token_store_impl.dart' as _i29;
import '../domain/analytics/service/analytics_service.dart' as _i45;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i75;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i76;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i77;
import '../domain/app_viam/service/app_viam_service.dart' as _i48;
import '../domain/app_viam/store/app_viam_store.dart' as _i50;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i65;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i67;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i68;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i69;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i71;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i72;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i73;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i70;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i84;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i85;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i86;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i99;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i62;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i123;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i101;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i102;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i103;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i105;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i109;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i20;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i117;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i119;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i24;
import '../domain/camera/service/camera_service.dart' as _i89;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i106;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i108;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i121;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i58;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i60;
import '../domain/current_time/get_current_time_use_case.dart' as _i13;
import '../domain/data_viam/service/viam_data_service.dart' as _i97;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i104;
import '../domain/local_photo/service/local_photo_service.dart' as _i18;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i55;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i57;
import '../domain/movement/service/movement_service.dart' as _i91;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i110;
import '../domain/movement/usecase/get_position_use_case.dart' as _i111;
import '../domain/permissions/service/permissions_service.dart' as _i79;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i107;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i81;
import '../domain/resource/service/resource_service.dart' as _i93;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i112;
import '../domain/sensor/service/sensor_service_impl.dart' as _i95;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i113;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i26;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i88;
import '../domain/viam/service/viam_service.dart' as _i40;
import '../domain/viam/store/token_store.dart' as _i28;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i52;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i56;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i61;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i14;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i74;
import '../domain/viam/usecase/logout_use_case.dart' as _i78;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i130;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i8;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i11;
import '../presentation/page/analytics/widgets/fuel_consumption_per_time/cubit/fuel_consumption_per_time_cubit.dart'
    as _i12;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i42;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i43;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i124;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i122;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i126;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i127;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i128;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i129;
import '../presentation/page/main/cubit/main_cubit.dart' as _i114;
import '../presentation/page/map/cubit/map_cubit.dart' as _i115;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i116;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i22;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i120;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i87;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i125;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i118;
import 'camera_permission_injectable.dart' as _i135;
import 'file_picker_injectable.dart' as _i131;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i132;
import 'image_picker_injectable.dart' as _i134;
import 'navigator_key_injectable.dart' as _i133;
import 'shared_preferences_injectable.dart' as _i136;
import 'uuid_injectable.dart' as _i137;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i138;

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
  gh.factory<_i8.DepthOverTimeCubit>(() => _i8.DepthOverTimeCubit());
  gh.factory<_i9.FilePicker>(() => filePickerModule.filePicker);
  gh.singleton<_i10.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.lazySingleton<_i10.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.factory<_i11.FuelConsumptionPerMileCubit>(
      () => _i11.FuelConsumptionPerMileCubit());
  gh.factory<_i12.FuelConsumptionPerTimeCubit>(
      () => _i12.FuelConsumptionPerTimeCubit());
  gh.factory<_i13.GetCurrentTimeUseCase>(() => _i13.GetCurrentTimeUseCase());
  gh.factory<_i14.GetRobotAddressUseCase>(() => _i14.GetRobotAddressUseCase());
  gh.singleton<_i15.GlobalKey<_i15.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i16.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i17.LocalPhotoDataSource>(() => _i17.LocalPhotoDataSource(
        get<_i16.ImagePicker>(),
        get<_i9.FilePicker>(),
      ));
  gh.factory<_i18.LocalPhotoService>(() => _i19.LocalPhotoServiceImpl(
        get<_i17.LocalPhotoDataSource>(),
        get<_i4.BoatBox>(),
      ));
  gh.factory<_i20.NotifyBoatNameUpdateUseCase>(
      () => _i20.NotifyBoatNameUpdateUseCase(get<_i6.BoatUpdateBroadcaster>()));
  gh.singleton<_i21.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i22.ScanQrCubit>(() => _i22.ScanQrCubit());
  await gh.factoryAsync<_i23.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i24.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i24.SubscribeToBoatUpdateStreamUseCase(
          get<_i6.BoatUpdateBroadcaster>()));
  gh.singleton<_i25.TokenBox>(_i25.TokenBoxImpl());
  gh.singleton<_i26.TokenExpiredBroadcaster>(
      _i27.TokenExpiredBroadcasterImpl());
  gh.factory<_i28.TokenStore>(() => _i29.TokenStoreImpl(get<_i25.TokenBox>()));
  gh.singleton<_i30.Uuid>(uuidModule.uuid);
  gh.singleton<_i31.Viam>(viamSdkModule.viam);
  gh.factory<_i32.ViamAppMovementSdkDataSource>(
      () => _i32.ViamAppMovementSdkDataSource(get<_i31.Viam>()));
  gh.factory<_i33.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i33.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i34.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i34.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i35.ViamDataSource>(() => _i35.ViamDataSource(get<_i31.Viam>()));
  gh.factory<_i36.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i36.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i37.ViamPositionToViamAppPositionMapper>(
      () => _i37.ViamPositionToViamAppPositionMapper());
  gh.factory<_i38.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i38.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i39.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i39.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i40.ViamService>(() => _i41.ViamServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i35.ViamDataSource>(),
        get<_i28.TokenStore>(),
      ));
  gh.factory<_i42.WaterDepthCubit>(() => _i42.WaterDepthCubit());
  gh.factory<_i43.WaterTemperatureCubit>(() => _i43.WaterTemperatureCubit());
  gh.factory<_i44.AnalyticsDataSink>(
      () => _i44.AnalyticsDataSinkImpl(get<_i10.FirebaseAnalytics>()));
  gh.factory<_i45.AnalyticsService>(
      () => _i46.AnalyticsServiceImpl(get<_i44.AnalyticsDataSink>()));
  gh.factory<_i47.AppViamDataSource>(
      () => _i47.AppViamDataSource(get<_i31.Viam>()));
  gh.lazySingleton<_i48.AppViamService>(() => _i49.AppViamServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i47.AppViamDataSource>(),
      ));
  gh.factory<_i50.AppViamStore>(
      () => _i51.SharedPreferencesAppViamStore(get<_i23.SharedPreferences>()));
  gh.factory<_i52.AuthenticateUseCase>(
      () => _i52.AuthenticateUseCase(get<_i40.ViamService>()));
  gh.factory<_i53.CameraDataSource>(
      () => _i53.CameraDataSource(get<_i31.Viam>()));
  gh.factory<_i54.CameraPermissionDataSource>(
      () => _i54.CameraPermissionDataSource(get<_i21.Permission>()));
  gh.factory<_i55.CapturePhotoForBoatUseCase>(
      () => _i55.CapturePhotoForBoatUseCase(get<_i18.LocalPhotoService>()));
  gh.factory<_i56.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i56.CheckIfHasTokenAndRefreshTokenUseCase(get<_i28.TokenStore>()));
  gh.factory<_i57.ChoosePhotoForBoatUseCase>(
      () => _i57.ChoosePhotoForBoatUseCase(get<_i18.LocalPhotoService>()));
  gh.factory<_i58.ClearCacheService>(() => _i59.ClearCacheServiceImpl(
        get<_i28.TokenStore>(),
        get<_i50.AppViamStore>(),
      ));
  gh.factory<_i60.ClearCacheUseCase>(
      () => _i60.ClearCacheUseCase(get<_i58.ClearCacheService>()));
  gh.factory<_i61.ConnectToRobotUseCase>(
      () => _i61.ConnectToRobotUseCase(get<_i40.ViamService>()));
  gh.factory<_i62.CurrentBoatStore>(() =>
      _i63.SharedPreferencesCurrentBoatStore(get<_i23.SharedPreferences>()));
  gh.factory<_i64.DataViamDataSource>(
      () => _i64.DataViamDataSource(get<_i31.Viam>()));
  gh.factory<_i65.GetLocationIdUseCase>(
      () => _i65.GetLocationIdUseCase(get<_i50.AppViamStore>()));
  gh.factory<_i66.GetLocationUseCase>(
      () => _i66.GetLocationUseCase(get<_i48.AppViamService>()));
  gh.factory<_i67.GetLocationsUseCase>(
      () => _i67.GetLocationsUseCase(get<_i48.AppViamService>()));
  gh.factory<_i68.GetOrganizationIdUseCase>(
      () => _i68.GetOrganizationIdUseCase(get<_i50.AppViamStore>()));
  gh.factory<_i69.GetOrganizationUseCase>(
      () => _i69.GetOrganizationUseCase(get<_i48.AppViamService>()));
  gh.factory<_i70.GetOrganizationsListUseCase>(
      () => _i70.GetOrganizationsListUseCase(get<_i48.AppViamService>()));
  gh.factory<_i71.GetRobotIdUseCase>(
      () => _i71.GetRobotIdUseCase(get<_i50.AppViamStore>()));
  gh.factory<_i72.GetRobotUseCase>(
      () => _i72.GetRobotUseCase(get<_i48.AppViamService>()));
  gh.factory<_i73.GetRobotsUseCase>(
      () => _i73.GetRobotsUseCase(get<_i48.AppViamService>()));
  gh.factory<_i74.GetTokenOrNullUseCase>(
      () => _i74.GetTokenOrNullUseCase(get<_i28.TokenStore>()));
  gh.factory<_i75.LogAddBoatEventUseCase>(
      () => _i75.LogAddBoatEventUseCase(get<_i45.AnalyticsService>()));
  gh.factory<_i76.LogDeleteBoatEventUseCase>(
      () => _i76.LogDeleteBoatEventUseCase(get<_i45.AnalyticsService>()));
  gh.factory<_i77.LogOpenAppEventUseCase>(
      () => _i77.LogOpenAppEventUseCase(get<_i45.AnalyticsService>()));
  gh.factory<_i78.LogoutUseCase>(
      () => _i78.LogoutUseCase(get<_i40.ViamService>()));
  gh.lazySingleton<_i79.PermissionsService>(() =>
      _i80.PermissionsServiceImpl(get<_i54.CameraPermissionDataSource>()));
  gh.factory<_i81.RequestCameraPermissionUseCase>(() =>
      _i81.RequestCameraPermissionUseCase(get<_i79.PermissionsService>()));
  gh.factory<_i82.ResourceDataSource>(
      () => _i82.ResourceDataSource(get<_i31.Viam>()));
  gh.factory<_i83.SensorDataSource>(
      () => _i83.SensorDataSource(get<_i31.Viam>()));
  gh.factory<_i84.SetLocationIdUseCase>(
      () => _i84.SetLocationIdUseCase(get<_i50.AppViamStore>()));
  gh.factory<_i85.SetOrganizationIdUseCase>(
      () => _i85.SetOrganizationIdUseCase(get<_i50.AppViamStore>()));
  gh.factory<_i86.SetRobotIdUseCase>(
      () => _i86.SetRobotIdUseCase(get<_i50.AppViamStore>()));
  gh.factory<_i87.SplashCubit>(() =>
      _i87.SplashCubit(get<_i56.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i88.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i88.SubscribeToTokenExpiredStreamUseCase(
          get<_i26.TokenExpiredBroadcaster>()));
  gh.factory<_i89.ViamAppCameraService>(() => _i90.ViamAppCameraServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i53.CameraDataSource>(),
        get<_i34.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i91.ViamAppMovementService>(() => _i92.ViamAppMovementServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i32.ViamAppMovementSdkDataSource>(),
        get<_i33.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i37.ViamPositionToViamAppPositionMapper>(),
        get<_i36.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i93.ViamAppResourceService>(() => _i94.ViamAppResourceServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i82.ResourceDataSource>(),
        get<_i38.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i95.ViamAppSensorService>(() => _i96.ViamAppSensorServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i83.SensorDataSource>(),
        get<_i33.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i39.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i97.ViamDataService>(() => _i98.ViamDataServiceImpl(
        get<_i26.TokenExpiredBroadcaster>(),
        get<_i64.DataViamDataSource>(),
      ));
  gh.factory<_i99.BoatService>(() => _i100.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i62.CurrentBoatStore>(),
      ));
  gh.factory<_i101.ChangeBoatNameUseCase>(
      () => _i101.ChangeBoatNameUseCase(get<_i99.BoatService>()));
  gh.factory<_i102.CheckConnectionUseCase>(
      () => _i102.CheckConnectionUseCase(get<_i99.BoatService>()));
  gh.factory<_i103.DeleteBoatUseCase>(
      () => _i103.DeleteBoatUseCase(get<_i99.BoatService>()));
  gh.factory<_i104.GetBinaryDataByFilterUseCase>(
      () => _i104.GetBinaryDataByFilterUseCase(get<_i97.ViamDataService>()));
  gh.factory<_i105.GetBoatsUseCase>(
      () => _i105.GetBoatsUseCase(get<_i99.BoatService>()));
  gh.factory<_i106.GetCameraDataUseCase>(
      () => _i106.GetCameraDataUseCase(get<_i89.ViamAppCameraService>()));
  gh.factory<_i107.GetCameraPermissionStatusUseCase>(() =>
      _i107.GetCameraPermissionStatusUseCase(get<_i79.PermissionsService>()));
  gh.factory<_i108.GetCameraVideoUseCase>(
      () => _i108.GetCameraVideoUseCase(get<_i89.ViamAppCameraService>()));
  gh.factory<_i109.GetCurrentBoatIdUseCase>(
      () => _i109.GetCurrentBoatIdUseCase(get<_i99.BoatService>()));
  gh.factory<_i110.GetLinearVelocityUseCase>(
      () => _i110.GetLinearVelocityUseCase(get<_i91.ViamAppMovementService>()));
  gh.factory<_i111.GetPostionUseCase>(
      () => _i111.GetPostionUseCase(get<_i91.ViamAppMovementService>()));
  gh.factory<_i112.GetResourceNamesUseCase>(
      () => _i112.GetResourceNamesUseCase(get<_i93.ViamAppResourceService>()));
  gh.factory<_i113.GetSensorDataUseCase>(
      () => _i113.GetSensorDataUseCase(get<_i95.ViamAppSensorService>()));
  gh.factory<_i114.MainCubit>(() => _i114.MainCubit(
        get<_i112.GetResourceNamesUseCase>(),
        get<_i74.GetTokenOrNullUseCase>(),
        get<_i88.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i60.ClearCacheUseCase>(),
      ));
  gh.factory<_i115.MapCubit>(() => _i115.MapCubit(
        get<_i111.GetPostionUseCase>(),
        get<_i113.GetSensorDataUseCase>(),
        get<_i13.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i116.OrganizationsCubit>(() => _i116.OrganizationsCubit(
        get<_i70.GetOrganizationsListUseCase>(),
        get<_i61.ConnectToRobotUseCase>(),
        get<_i74.GetTokenOrNullUseCase>(),
        get<_i68.GetOrganizationIdUseCase>(),
        get<_i85.SetOrganizationIdUseCase>(),
        get<_i60.ClearCacheUseCase>(),
        get<_i78.LogoutUseCase>(),
        get<_i88.SubscribeToTokenExpiredStreamUseCase>(),
      ));
  gh.factory<_i117.RemoveCurrentBoatIdUseCase>(
      () => _i117.RemoveCurrentBoatIdUseCase(get<_i99.BoatService>()));
  gh.factory<_i118.SensorTileCubit>(() => _i118.SensorTileCubit(
        get<_i113.GetSensorDataUseCase>(),
        get<_i110.GetLinearVelocityUseCase>(),
        get<_i13.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i119.SetCurrentBoatIdUseCase>(
      () => _i119.SetCurrentBoatIdUseCase(get<_i99.BoatService>()));
  gh.factory<_i120.SettingsCubit>(() => _i120.SettingsCubit(
        get<_i105.GetBoatsUseCase>(),
        get<_i103.DeleteBoatUseCase>(),
        get<_i76.LogDeleteBoatEventUseCase>(),
        get<_i117.RemoveCurrentBoatIdUseCase>(),
        get<_i119.SetCurrentBoatIdUseCase>(),
        get<_i24.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i57.ChoosePhotoForBoatUseCase>(),
        get<_i55.CapturePhotoForBoatUseCase>(),
        get<_i78.LogoutUseCase>(),
        get<_i60.ClearCacheUseCase>(),
      ));
  gh.factory<_i121.SubscribeToCameraStreamUseCase>(() =>
      _i121.SubscribeToCameraStreamUseCase(get<_i89.ViamAppCameraService>()));
  gh.factory<_i122.WebrtcCameraCubit>(() => _i122.WebrtcCameraCubit(
        get<_i108.GetCameraVideoUseCase>(),
        get<_i121.SubscribeToCameraStreamUseCase>(),
        get<_i13.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i123.AddNewBoatUseCase>(
      () => _i123.AddNewBoatUseCase(get<_i99.BoatService>()));
  gh.factory<_i124.BoatListCubit>(() => _i124.BoatListCubit(
        get<_i105.GetBoatsUseCase>(),
        get<_i109.GetCurrentBoatIdUseCase>(),
        get<_i119.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i125.CameraTileCubit>(
      () => _i125.CameraTileCubit(get<_i106.GetCameraDataUseCase>()));
  gh.factory<_i126.ChangeBoatNameCubit>(() => _i126.ChangeBoatNameCubit(
        get<_i101.ChangeBoatNameUseCase>(),
        get<_i20.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i127.ConnectionErrorCubit>(() => _i127.ConnectionErrorCubit(
        get<_i61.ConnectToRobotUseCase>(),
        get<_i74.GetTokenOrNullUseCase>(),
        get<_i123.AddNewBoatUseCase>(),
        get<_i105.GetBoatsUseCase>(),
        get<_i14.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i128.DashboardCubit>(() => _i128.DashboardCubit(
        get<_i105.GetBoatsUseCase>(),
        get<_i109.GetCurrentBoatIdUseCase>(),
        get<_i24.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i129.LocationsPageCubit>(() => _i129.LocationsPageCubit(
        get<_i67.GetLocationsUseCase>(),
        get<_i123.AddNewBoatUseCase>(),
        get<_i61.ConnectToRobotUseCase>(),
        get<_i14.GetRobotAddressUseCase>(),
        get<_i105.GetBoatsUseCase>(),
        get<_i73.GetRobotsUseCase>(),
        get<_i74.GetTokenOrNullUseCase>(),
        get<_i84.SetLocationIdUseCase>(),
        get<_i71.GetRobotIdUseCase>(),
        get<_i65.GetLocationIdUseCase>(),
        get<_i86.SetRobotIdUseCase>(),
      ));
  gh.factory<_i130.AddBoatCubit>(() => _i130.AddBoatCubit(
        get<_i123.AddNewBoatUseCase>(),
        get<_i102.CheckConnectionUseCase>(),
        get<_i119.SetCurrentBoatIdUseCase>(),
        get<_i107.GetCameraPermissionStatusUseCase>(),
        get<_i81.RequestCameraPermissionUseCase>(),
        get<_i75.LogAddBoatEventUseCase>(),
        get<_i30.Uuid>(),
        get<_i105.GetBoatsUseCase>(),
        get<_i52.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i131.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i132.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i133.NavigatorKeyModule {}

class _$ImagePickerModule extends _i134.ImagePickerModule {}

class _$CameraPermissionModule extends _i135.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i136.SharedPreferencesModule {}

class _$UuidModule extends _i137.UuidModule {}

class _$ViamSdkModule extends _i138.ViamSdkModule {}
