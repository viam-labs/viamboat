// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i16;
import 'package:shared_preferences/shared_preferences.dart' as _i18;
import 'package:uuid/uuid.dart' as _i25;
import 'package:viam_sdk/viam_sdk.dart' as _i26;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i37;
import '../data/analytics/service/analytics_service_impl.dart' as _i39;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i40;
import '../data/app_viam/service/app_viam_service.dart' as _i42;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i44;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i95;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i56;
import '../data/camera/data_source/camera_api_data_source.dart' as _i46;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i29;
import '../data/camera/service/camera_service_impl.dart' as _i85;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i52;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i57;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i93;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i27;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i31;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import '../data/movement/service/movement_service_impl.dart' as _i87;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i47;
import '../data/permissions/service/permissions_service_impl.dart' as _i75;
import '../data/resource/data_source/resource_api_data_source.dart' as _i77;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i33;
import '../data/resource/service/resource_service_impl.dart' as _i89;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i78;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i34;
import '../data/sensor/service/sensor_service_impl.dart' as _i91;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i22;
import '../data/viam/data_source/viam_data_source.dart' as _i30;
import '../data/viam/service/viam_service_impl.dart' as _i36;
import '../data/viam/store/token_box.dart' as _i20;
import '../data/viam/store/token_store_impl.dart' as _i24;
import '../domain/analytics/service/analytics_service.dart' as _i38;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i69;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i70;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i71;
import '../domain/app_viam/service/app_viam_service.dart' as _i41;
import '../domain/app_viam/store/app_viam_store.dart' as _i43;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i58;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i59;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i60;
import '../domain/app_viam/usecase/get_main_part_address_use_case.dart' as _i61;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i62;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i63;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i65;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i67;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i64;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i79;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i80;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i81;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i94;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i55;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i132;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i96;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i97;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i99;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i101;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i105;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i119;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i121;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i19;
import '../domain/camera/service/camera_service.dart' as _i84;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i102;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i104;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i125;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i51;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i53;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/data_viam/service/viam_data_service.dart' as _i92;
import '../domain/data_viam/use_case/connect_to_viam_app_use_case.dart' as _i98;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i100;
import '../domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i106;
import '../domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i107;
import '../domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart'
    as _i108;
import '../domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i109;
import '../domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart'
    as _i114;
import '../domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i115;
import '../domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i116;
import '../domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i122;
import '../domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i123;
import '../domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i126;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i48;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i50;
import '../domain/movement/service/movement_service.dart' as _i86;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i110;
import '../domain/movement/usecase/get_position_use_case.dart' as _i111;
import '../domain/permissions/service/permissions_service.dart' as _i74;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i103;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i76;
import '../domain/resource/service/resource_service.dart' as _i88;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i112;
import '../domain/sensor/service/sensor_service_impl.dart' as _i90;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i113;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i21;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i83;
import '../domain/viam/service/viam_service.dart' as _i35;
import '../domain/viam/store/token_store.dart' as _i23;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i45;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i49;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i54;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i68;
import '../domain/viam/usecase/logout_use_case.dart' as _i73;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i133;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i139;
import '../presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i142;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i144;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i128;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i130;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i134;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i131;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i136;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i137;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i138;
import '../presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i140;
import '../presentation/page/filters/cubit/filters_cubit.dart' as _i141;
import '../presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i143;
import '../presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i145;
import '../presentation/page/login/cubit/login_page_cubit.dart' as _i72;
import '../presentation/page/main/cubit/main_cubit.dart' as _i117;
import '../presentation/page/map/cubit/map_cubit.dart' as _i118;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i17;
import '../presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i146;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i124;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i82;
import '../presentation/page/water_depth/cubit/water_depth_cubit.dart' as _i127;
import '../presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i129;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i135;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i120;
import 'camera_permission_injectable.dart' as _i151;
import 'file_picker_injectable.dart' as _i147;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i148;
import 'image_picker_injectable.dart' as _i150;
import 'navigator_key_injectable.dart' as _i149;
import 'shared_preferences_injectable.dart' as _i152;
import 'uuid_injectable.dart' as _i153;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i154;

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
  gh.factory<_i9.GetCurrentTimeUseCase>(() => _i9.GetCurrentTimeUseCase());
  gh.singleton<_i10.GlobalKey<_i10.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i11.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i12.LocalPhotoDataSource>(() => _i12.LocalPhotoDataSource(
        get<_i11.ImagePicker>(),
        get<_i7.FilePicker>(),
      ));
  gh.factory<_i13.LocalPhotoService>(() => _i14.LocalPhotoServiceImpl(
        get<_i12.LocalPhotoDataSource>(),
        get<_i3.BoatBox>(),
      ));
  gh.factory<_i15.NotifyBoatNameUpdateUseCase>(
      () => _i15.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i16.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i17.ScanQrCubit>(() => _i17.ScanQrCubit());
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i19.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i20.TokenBox>(_i20.TokenBoxImpl());
  gh.singleton<_i21.TokenExpiredBroadcaster>(
      _i22.TokenExpiredBroadcasterImpl());
  gh.factory<_i23.TokenStore>(() => _i24.TokenStoreImpl(get<_i20.TokenBox>()));
  gh.singleton<_i25.Uuid>(uuidModule.uuid);
  gh.singleton<_i26.Viam>(
    viamSdkDirectDataClientModule.viam,
    instanceName: 'directDataClient',
  );
  gh.singleton<_i26.Viam>(
    viamSdkModule.viam,
    instanceName: 'viamSdk',
  );
  gh.factory<_i27.ViamAppMovementSdkDataSource>(() =>
      _i27.ViamAppMovementSdkDataSource(
          get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i28.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i28.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i29.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i29.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i30.ViamDataSource>(
      () => _i30.ViamDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i31.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i32.ViamPositionToViamAppPositionMapper>(
      () => _i32.ViamPositionToViamAppPositionMapper());
  gh.factory<_i33.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i33.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i34.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i35.ViamService>(() => _i36.ViamServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i30.ViamDataSource>(),
        get<_i23.TokenStore>(),
      ));
  gh.factory<_i37.AnalyticsDataSink>(
      () => _i37.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i38.AnalyticsService>(
      () => _i39.AnalyticsServiceImpl(get<_i37.AnalyticsDataSink>()));
  gh.factory<_i40.AppViamDataSource>(
      () => _i40.AppViamDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.lazySingleton<_i41.AppViamService>(() => _i42.AppViamServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i40.AppViamDataSource>(),
      ));
  gh.factory<_i43.AppViamStore>(
      () => _i44.SharedPreferencesAppViamStore(get<_i18.SharedPreferences>()));
  gh.factory<_i45.AuthenticateUseCase>(
      () => _i45.AuthenticateUseCase(get<_i35.ViamService>()));
  gh.factory<_i46.CameraDataSource>(
      () => _i46.CameraDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i47.CameraPermissionDataSource>(
      () => _i47.CameraPermissionDataSource(get<_i16.Permission>()));
  gh.factory<_i48.CapturePhotoForBoatUseCase>(
      () => _i48.CapturePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i49.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i49.CheckIfHasTokenAndRefreshTokenUseCase(get<_i23.TokenStore>()));
  gh.factory<_i50.ChoosePhotoForBoatUseCase>(
      () => _i50.ChoosePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i51.ClearCacheService>(() => _i52.ClearCacheServiceImpl(
        get<_i23.TokenStore>(),
        get<_i43.AppViamStore>(),
      ));
  gh.factory<_i53.ClearCacheUseCase>(
      () => _i53.ClearCacheUseCase(get<_i51.ClearCacheService>()));
  gh.factory<_i54.ConnectToRobotUseCase>(
      () => _i54.ConnectToRobotUseCase(get<_i35.ViamService>()));
  gh.factory<_i55.CurrentBoatStore>(() =>
      _i56.SharedPreferencesCurrentBoatStore(get<_i18.SharedPreferences>()));
  gh.factory<_i57.DataViamDataSource>(() => _i57.DataViamDataSource(
      get<_i26.Viam>(instanceName: 'directDataClient')));
  gh.factory<_i58.GetLocationIdUseCase>(
      () => _i58.GetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i59.GetLocationUseCase>(
      () => _i59.GetLocationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i60.GetLocationsUseCase>(
      () => _i60.GetLocationsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i61.GetMainPartAddressUseCase>(
      () => _i61.GetMainPartAddressUseCase(get<_i41.AppViamService>()));
  gh.factory<_i62.GetOrganizationIdUseCase>(
      () => _i62.GetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i63.GetOrganizationUseCase>(
      () => _i63.GetOrganizationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i64.GetOrganizationsListUseCase>(
      () => _i64.GetOrganizationsListUseCase(get<_i41.AppViamService>()));
  gh.factory<_i65.GetRobotIdUseCase>(
      () => _i65.GetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i66.GetRobotUseCase>(
      () => _i66.GetRobotUseCase(get<_i41.AppViamService>()));
  gh.factory<_i67.GetRobotsUseCase>(
      () => _i67.GetRobotsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i68.GetTokenOrNullUseCase>(
      () => _i68.GetTokenOrNullUseCase(get<_i23.TokenStore>()));
  gh.factory<_i69.LogAddBoatEventUseCase>(
      () => _i69.LogAddBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i70.LogDeleteBoatEventUseCase>(
      () => _i70.LogDeleteBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i71.LogOpenAppEventUseCase>(
      () => _i71.LogOpenAppEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i72.LoginPageCubit>(
      () => _i72.LoginPageCubit(get<_i45.AuthenticateUseCase>()));
  gh.factory<_i73.LogoutUseCase>(
      () => _i73.LogoutUseCase(get<_i35.ViamService>()));
  gh.lazySingleton<_i74.PermissionsService>(() =>
      _i75.PermissionsServiceImpl(get<_i47.CameraPermissionDataSource>()));
  gh.factory<_i76.RequestCameraPermissionUseCase>(() =>
      _i76.RequestCameraPermissionUseCase(get<_i74.PermissionsService>()));
  gh.factory<_i77.ResourceDataSource>(
      () => _i77.ResourceDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i78.SensorDataSource>(
      () => _i78.SensorDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i79.SetLocationIdUseCase>(
      () => _i79.SetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i80.SetOrganizationIdUseCase>(
      () => _i80.SetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i81.SetRobotIdUseCase>(
      () => _i81.SetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i82.SplashCubit>(() =>
      _i82.SplashCubit(get<_i49.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i83.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i83.SubscribeToTokenExpiredStreamUseCase(
          get<_i21.TokenExpiredBroadcaster>()));
  gh.factory<_i84.ViamAppCameraService>(() => _i85.ViamAppCameraServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i46.CameraDataSource>(),
        get<_i29.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i86.ViamAppMovementService>(() => _i87.ViamAppMovementServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i27.ViamAppMovementSdkDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i32.ViamPositionToViamAppPositionMapper>(),
        get<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i88.ViamAppResourceService>(() => _i89.ViamAppResourceServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i77.ResourceDataSource>(),
        get<_i33.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i90.ViamAppSensorService>(() => _i91.ViamAppSensorServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i78.SensorDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i92.ViamDataService>(() => _i93.ViamDataServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i57.DataViamDataSource>(),
      ));
  gh.factory<_i94.BoatService>(() => _i95.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i55.CurrentBoatStore>(),
      ));
  gh.factory<_i96.ChangeBoatNameUseCase>(
      () => _i96.ChangeBoatNameUseCase(get<_i94.BoatService>()));
  gh.factory<_i97.CheckConnectionUseCase>(
      () => _i97.CheckConnectionUseCase(get<_i94.BoatService>()));
  gh.factory<_i98.ConnectToViamAppUseCase>(
      () => _i98.ConnectToViamAppUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i99.DeleteBoatUseCase>(
      () => _i99.DeleteBoatUseCase(get<_i94.BoatService>()));
  gh.factory<_i100.GetBinaryDataByFilterUseCase>(
      () => _i100.GetBinaryDataByFilterUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i101.GetBoatsUseCase>(
      () => _i101.GetBoatsUseCase(get<_i94.BoatService>()));
  gh.factory<_i102.GetCameraDataUseCase>(
      () => _i102.GetCameraDataUseCase(get<_i84.ViamAppCameraService>()));
  gh.factory<_i103.GetCameraPermissionStatusUseCase>(() =>
      _i103.GetCameraPermissionStatusUseCase(get<_i74.PermissionsService>()));
  gh.factory<_i104.GetCameraVideoUseCase>(
      () => _i104.GetCameraVideoUseCase(get<_i84.ViamAppCameraService>()));
  gh.factory<_i105.GetCurrentBoatIdUseCase>(
      () => _i105.GetCurrentBoatIdUseCase(get<_i94.BoatService>()));
  gh.factory<_i106.GetCurrentWaterFiltersUseCase>(
      () => _i106.GetCurrentWaterFiltersUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i107.GetDepthOverTimeDataUseCase>(
      () => _i107.GetDepthOverTimeDataUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i108.GetFuelConsumptionOverTimeDataUseCase>(() =>
      _i108.GetFuelConsumptionOverTimeDataUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i109.GetFuelConsumptionPerMileDataUseCase>(() =>
      _i109.GetFuelConsumptionPerMileDataUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i110.GetLinearVelocityUseCase>(
      () => _i110.GetLinearVelocityUseCase(get<_i86.ViamAppMovementService>()));
  gh.factory<_i111.GetPostionUseCase>(
      () => _i111.GetPostionUseCase(get<_i86.ViamAppMovementService>()));
  gh.factory<_i112.GetResourceNamesUseCase>(
      () => _i112.GetResourceNamesUseCase(get<_i88.ViamAppResourceService>()));
  gh.factory<_i113.GetSensorDataUseCase>(
      () => _i113.GetSensorDataUseCase(get<_i90.ViamAppSensorService>()));
  gh.factory<_i114.GetTabularDataByFilterUseCase>(
      () => _i114.GetTabularDataByFilterUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i115.GetWaterDepthDataUseCase>(
      () => _i115.GetWaterDepthDataUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i116.GetWaterTemperatureDataUseCase>(
      () => _i116.GetWaterTemperatureDataUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i117.MainCubit>(() => _i117.MainCubit(
        get<_i112.GetResourceNamesUseCase>(),
        get<_i68.GetTokenOrNullUseCase>(),
        get<_i83.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i53.ClearCacheUseCase>(),
        get<_i54.ConnectToRobotUseCase>(),
      ));
  gh.factory<_i118.MapCubit>(() => _i118.MapCubit(
        get<_i111.GetPostionUseCase>(),
        get<_i113.GetSensorDataUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i119.RemoveCurrentBoatIdUseCase>(
      () => _i119.RemoveCurrentBoatIdUseCase(get<_i94.BoatService>()));
  gh.factory<_i120.SensorTileCubit>(() => _i120.SensorTileCubit(
        get<_i113.GetSensorDataUseCase>(),
        get<_i110.GetLinearVelocityUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i121.SetCurrentBoatIdUseCase>(
      () => _i121.SetCurrentBoatIdUseCase(get<_i94.BoatService>()));
  gh.factory<_i122.SetWaterDepthFiltersUseCase>(
      () => _i122.SetWaterDepthFiltersUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i123.SetWaterTemperatureFiltersUseCase>(() =>
      _i123.SetWaterTemperatureFiltersUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i124.SettingsCubit>(() => _i124.SettingsCubit(
        get<_i101.GetBoatsUseCase>(),
        get<_i99.DeleteBoatUseCase>(),
        get<_i70.LogDeleteBoatEventUseCase>(),
        get<_i119.RemoveCurrentBoatIdUseCase>(),
        get<_i121.SetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i50.ChoosePhotoForBoatUseCase>(),
        get<_i48.CapturePhotoForBoatUseCase>(),
        get<_i73.LogoutUseCase>(),
        get<_i53.ClearCacheUseCase>(),
      ));
  gh.factory<_i125.SubscribeToCameraStreamUseCase>(() =>
      _i125.SubscribeToCameraStreamUseCase(get<_i84.ViamAppCameraService>()));
  gh.factory<_i126.SubscribeToRefreshFiltersUseCase>(() =>
      _i126.SubscribeToRefreshFiltersUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i127.WaterDepthCubit>(() => _i127.WaterDepthCubit(
        get<_i115.GetWaterDepthDataUseCase>(),
        get<_i126.SubscribeToRefreshFiltersUseCase>(),
        get<_i122.SetWaterDepthFiltersUseCase>(),
      ));
  gh.factory<_i128.WaterDepthCubit>(() => _i128.WaterDepthCubit(
        get<_i115.GetWaterDepthDataUseCase>(),
        get<_i126.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i129.WaterTemperatureCubit>(() => _i129.WaterTemperatureCubit(
        get<_i116.GetWaterTemperatureDataUseCase>(),
        get<_i126.SubscribeToRefreshFiltersUseCase>(),
        get<_i123.SetWaterTemperatureFiltersUseCase>(),
      ));
  gh.factory<_i130.WaterTemperatureCubit>(() => _i130.WaterTemperatureCubit(
        get<_i116.GetWaterTemperatureDataUseCase>(),
        get<_i126.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i131.WebrtcCameraCubit>(() => _i131.WebrtcCameraCubit(
        get<_i104.GetCameraVideoUseCase>(),
        get<_i125.SubscribeToCameraStreamUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i132.AddNewBoatUseCase>(
      () => _i132.AddNewBoatUseCase(get<_i94.BoatService>()));
  gh.factory<_i133.AnalyticsCubit>(() => _i133.AnalyticsCubit(
        get<_i98.ConnectToViamAppUseCase>(),
        get<_i68.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i134.BoatListCubit>(() => _i134.BoatListCubit(
        get<_i101.GetBoatsUseCase>(),
        get<_i105.GetCurrentBoatIdUseCase>(),
        get<_i121.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i135.CameraTileCubit>(
      () => _i135.CameraTileCubit(get<_i102.GetCameraDataUseCase>()));
  gh.factory<_i136.ChangeBoatNameCubit>(() => _i136.ChangeBoatNameCubit(
        get<_i96.ChangeBoatNameUseCase>(),
        get<_i15.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i137.ConnectionErrorCubit>(() => _i137.ConnectionErrorCubit(
        get<_i54.ConnectToRobotUseCase>(),
        get<_i68.GetTokenOrNullUseCase>(),
        get<_i132.AddNewBoatUseCase>(),
        get<_i101.GetBoatsUseCase>(),
        get<_i61.GetMainPartAddressUseCase>(),
      ));
  gh.factory<_i138.DashboardCubit>(() => _i138.DashboardCubit(
        get<_i101.GetBoatsUseCase>(),
        get<_i105.GetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i139.DepthOverTimeCubit>(
      () => _i139.DepthOverTimeCubit(get<_i107.GetDepthOverTimeDataUseCase>()));
  gh.factory<_i140.DepthOverTimePageCubit>(() =>
      _i140.DepthOverTimePageCubit(get<_i107.GetDepthOverTimeDataUseCase>()));
  gh.factory<_i141.FiltersCubit>(() => _i141.FiltersCubit(
        get<_i106.GetCurrentWaterFiltersUseCase>(),
        get<_i122.SetWaterDepthFiltersUseCase>(),
        get<_i123.SetWaterTemperatureFiltersUseCase>(),
      ));
  gh.factory<_i142.FuelConsumptionOverTimeCubit>(() =>
      _i142.FuelConsumptionOverTimeCubit(
          get<_i108.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i143.FuelConsumptionOverTimePageCubit>(() =>
      _i143.FuelConsumptionOverTimePageCubit(
          get<_i108.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i144.FuelConsumptionPerMileCubit>(() =>
      _i144.FuelConsumptionPerMileCubit(
          get<_i109.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i145.FuelConsumptionPerMilePageCubit>(() =>
      _i145.FuelConsumptionPerMilePageCubit(
          get<_i109.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i146.SelectRobotCubit>(() => _i146.SelectRobotCubit(
        get<_i132.AddNewBoatUseCase>(),
        get<_i54.ConnectToRobotUseCase>(),
        get<_i101.GetBoatsUseCase>(),
        get<_i58.GetLocationIdUseCase>(),
        get<_i60.GetLocationsUseCase>(),
        get<_i62.GetOrganizationIdUseCase>(),
        get<_i64.GetOrganizationsListUseCase>(),
        get<_i61.GetMainPartAddressUseCase>(),
        get<_i65.GetRobotIdUseCase>(),
        get<_i67.GetRobotsUseCase>(),
        get<_i68.GetTokenOrNullUseCase>(),
        get<_i79.SetLocationIdUseCase>(),
        get<_i80.SetOrganizationIdUseCase>(),
        get<_i81.SetRobotIdUseCase>(),
        get<_i83.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i53.ClearCacheUseCase>(),
        get<_i73.LogoutUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i147.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i148.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i149.NavigatorKeyModule {}

class _$ImagePickerModule extends _i150.ImagePickerModule {}

class _$CameraPermissionModule extends _i151.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i152.SharedPreferencesModule {}

class _$UuidModule extends _i153.UuidModule {}

class _$ViamSdkDirectDataClientModule
    extends _i154.ViamSdkDirectDataClientModule {}

class _$ViamSdkModule extends _i154.ViamSdkModule {}
