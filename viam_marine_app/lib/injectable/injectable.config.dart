// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i17;
import 'package:shared_preferences/shared_preferences.dart' as _i19;
import 'package:uuid/uuid.dart' as _i26;
import 'package:viam_sdk/viam_sdk.dart' as _i27;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i33;
import '../data/analytics/service/analytics_service_impl.dart' as _i35;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i69;
import '../data/app_viam/service/app_viam_service.dart' as _i71;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i37;
import '../data/auth/data_source/auth_data_source.dart' as _i72;
import '../data/auth/service/auth_service_impl.dart' as _i74;
import '../data/auth/store/token_box.dart' as _i21;
import '../data/auth/store/token_store_impl.dart' as _i25;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i77;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i46;
import '../data/camera/data_source/camera_api_data_source.dart' as _i78;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i29;
import '../data/camera/service/camera_service_impl.dart' as _i109;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i43;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i84;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i113;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i13;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i15;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i64;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i30;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i31;
import '../data/movement/service/movement_service_impl.dart' as _i66;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i38;
import '../data/permissions/service/permissions_service_impl.dart' as _i55;
import '../data/resource/data_source/resource_api_data_source.dart' as _i104;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/service/resource_service_impl.dart' as _i111;
import '../data/robot_manager/robot_manager.dart' as _i57;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i58;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i32;
import '../data/sensor/service/sensor_service_impl.dart' as _i68;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i23;
import '../domain/analytics/service/analytics_service.dart' as _i34;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i51;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i52;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i53;
import '../domain/app_viam/service/app_viam_service.dart' as _i70;
import '../domain/app_viam/store/app_viam_store.dart' as _i36;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i47;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i91;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i92;
import '../domain/app_viam/usecase/get_main_part_address_use_case.dart' as _i93;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i48;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i94;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i49;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i97;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i98;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i95;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i59;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i60;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i61;
import '../domain/auth/service/auth_service.dart' as _i73;
import '../domain/auth/store/token_store.dart' as _i24;
import '../domain/auth/usecase/authenticate_use_case.dart' as _i75;
import '../domain/auth/usecase/check_connection_use_case.dart' as _i80;
import '../domain/auth/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i40;
import '../domain/auth/usecase/connect_to_app_viam_use_case.dart' as _i81;
import '../domain/auth/usecase/connect_to_camera_client_use_case.dart' as _i82;
import '../domain/auth/usecase/connect_to_robot_use_case.dart' as _i83;
import '../domain/auth/usecase/get_token_or_null_use_case.dart' as _i50;
import '../domain/auth/usecase/logout_use_case.dart' as _i101;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i76;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i45;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i114;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i79;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i85;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i86;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i89;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i16;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i103;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i106;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i20;
import '../domain/camera/service/camera_service.dart' as _i108;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i121;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i122;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i136;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i42;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i44;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/data_viam/service/viam_data_service.dart' as _i112;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i120;
import '../domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i123;
import '../domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i124;
import '../domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart'
    as _i125;
import '../domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i126;
import '../domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart'
    as _i128;
import '../domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i129;
import '../domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i130;
import '../domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i133;
import '../domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i134;
import '../domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i135;
import '../domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i137;
import '../domain/local_photo/service/local_photo_service.dart' as _i14;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i39;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i41;
import '../domain/movement/service/movement_service.dart' as _i65;
import '../domain/movement/usecase/get_compass_heading_use_case.dart' as _i88;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i90;
import '../domain/movement/usecase/get_position_use_case.dart' as _i96;
import '../domain/permissions/service/permissions_service.dart' as _i54;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i87;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i56;
import '../domain/resource/service/resource_service.dart' as _i110;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i127;
import '../domain/sensor/service/sensor_service_impl.dart' as _i67;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i99;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i22;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i63;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i144;
import '../presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i147;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i149;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i138;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i140;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i115;
import '../presentation/page/camera/cubit/camera_page_cubit.dart' as _i116;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i142;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i117;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i118;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i119;
import '../presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i145;
import '../presentation/page/filters/cubit/filters_cubit.dart' as _i146;
import '../presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i148;
import '../presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i150;
import '../presentation/page/login/cubit/login_page_cubit.dart' as _i100;
import '../presentation/page/main/cubit/main_cubit.dart' as _i131;
import '../presentation/page/map/cubit/map_cubit.dart' as _i102;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i18;
import '../presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i132;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i107;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i62;
import '../presentation/page/water_depth/cubit/water_depth_cubit.dart' as _i139;
import '../presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i141;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i143;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i105;
import 'camera_permission_injectable.dart' as _i155;
import 'file_picker_injectable.dart' as _i151;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i152;
import 'image_picker_injectable.dart' as _i154;
import 'navigator_key_injectable.dart' as _i153;
import 'shared_preferences_injectable.dart' as _i156;
import 'uuid_injectable.dart' as _i157;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i158;

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
  final viamSdkDirectDataClientModule = _$ViamSdkDirectDataClientModule();
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
  gh.singleton<_i11.GlobalKey<_i11.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i12.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i13.LocalPhotoDataSource>(() => _i13.LocalPhotoDataSource(
        get<_i12.ImagePicker>(),
        get<_i8.FilePicker>(),
      ));
  gh.factory<_i14.LocalPhotoService>(() => _i15.LocalPhotoServiceImpl(
        get<_i13.LocalPhotoDataSource>(),
        get<_i4.BoatBox>(),
      ));
  gh.factory<_i16.NotifyBoatNameUpdateUseCase>(
      () => _i16.NotifyBoatNameUpdateUseCase(get<_i6.BoatUpdateBroadcaster>()));
  gh.singleton<_i17.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i18.ScanQrCubit>(() => _i18.ScanQrCubit());
  await gh.factoryAsync<_i19.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i20.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i20.SubscribeToBoatUpdateStreamUseCase(
          get<_i6.BoatUpdateBroadcaster>()));
  gh.singleton<_i21.TokenBox>(_i21.TokenBoxImpl());
  gh.singleton<_i22.TokenExpiredBroadcaster>(
      _i23.TokenExpiredBroadcasterImpl());
  gh.factory<_i24.TokenStore>(() => _i25.TokenStoreImpl(get<_i21.TokenBox>()));
  gh.singleton<_i26.Uuid>(uuidModule.uuid);
  gh.singleton<_i27.Viam>(
    viamSdkModule.viam,
    instanceName: 'viamSdk',
  );
  gh.singleton<_i27.Viam>(
    viamSdkDirectDataClientModule.viam,
    instanceName: 'directDataClient',
  );
  gh.factory<_i28.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i28.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i29.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i29.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i30.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i30.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i31.ViamPositionToViamAppPositionMapper>(
      () => _i31.ViamPositionToViamAppPositionMapper());
  gh.factory<_i32.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i32.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i33.AnalyticsDataSink>(
      () => _i33.AnalyticsDataSinkImpl(get<_i9.FirebaseAnalytics>()));
  gh.factory<_i34.AnalyticsService>(
      () => _i35.AnalyticsServiceImpl(get<_i33.AnalyticsDataSink>()));
  gh.factory<_i36.AppViamStore>(
      () => _i37.SharedPreferencesAppViamStore(get<_i19.SharedPreferences>()));
  gh.factory<_i38.CameraPermissionDataSource>(
      () => _i38.CameraPermissionDataSource(get<_i17.Permission>()));
  gh.factory<_i39.CapturePhotoForBoatUseCase>(
      () => _i39.CapturePhotoForBoatUseCase(get<_i14.LocalPhotoService>()));
  gh.factory<_i40.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i40.CheckIfHasTokenAndRefreshTokenUseCase(get<_i24.TokenStore>()));
  gh.factory<_i41.ChoosePhotoForBoatUseCase>(
      () => _i41.ChoosePhotoForBoatUseCase(get<_i14.LocalPhotoService>()));
  gh.factory<_i42.ClearCacheService>(() => _i43.ClearCacheServiceImpl(
        get<_i24.TokenStore>(),
        get<_i36.AppViamStore>(),
      ));
  gh.factory<_i44.ClearCacheUseCase>(
      () => _i44.ClearCacheUseCase(get<_i42.ClearCacheService>()));
  gh.factory<_i45.CurrentBoatStore>(() =>
      _i46.SharedPreferencesCurrentBoatStore(get<_i19.SharedPreferences>()));
  gh.factory<_i47.GetLocationIdUseCase>(
      () => _i47.GetLocationIdUseCase(get<_i36.AppViamStore>()));
  gh.factory<_i48.GetOrganizationIdUseCase>(
      () => _i48.GetOrganizationIdUseCase(get<_i36.AppViamStore>()));
  gh.factory<_i49.GetRobotIdUseCase>(
      () => _i49.GetRobotIdUseCase(get<_i36.AppViamStore>()));
  gh.factory<_i50.GetTokenOrNullUseCase>(
      () => _i50.GetTokenOrNullUseCase(get<_i24.TokenStore>()));
  gh.factory<_i51.LogAddBoatEventUseCase>(
      () => _i51.LogAddBoatEventUseCase(get<_i34.AnalyticsService>()));
  gh.factory<_i52.LogDeleteBoatEventUseCase>(
      () => _i52.LogDeleteBoatEventUseCase(get<_i34.AnalyticsService>()));
  gh.factory<_i53.LogOpenAppEventUseCase>(
      () => _i53.LogOpenAppEventUseCase(get<_i34.AnalyticsService>()));
  gh.lazySingleton<_i54.PermissionsService>(() =>
      _i55.PermissionsServiceImpl(get<_i38.CameraPermissionDataSource>()));
  gh.factory<_i56.RequestCameraPermissionUseCase>(() =>
      _i56.RequestCameraPermissionUseCase(get<_i54.PermissionsService>()));
  gh.singleton<_i57.RobotManager>(_i57.RobotManager(
    get<_i27.Viam>(instanceName: 'viamSdk'),
    get<_i27.Viam>(instanceName: 'directDataClient'),
  ));
  gh.factory<_i58.SensorDataSource>(
      () => _i58.SensorDataSource(get<_i57.RobotManager>()));
  gh.factory<_i59.SetLocationIdUseCase>(
      () => _i59.SetLocationIdUseCase(get<_i36.AppViamStore>()));
  gh.factory<_i60.SetOrganizationIdUseCase>(
      () => _i60.SetOrganizationIdUseCase(get<_i36.AppViamStore>()));
  gh.factory<_i61.SetRobotIdUseCase>(
      () => _i61.SetRobotIdUseCase(get<_i36.AppViamStore>()));
  gh.factory<_i62.SplashCubit>(() =>
      _i62.SplashCubit(get<_i40.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i63.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i63.SubscribeToTokenExpiredStreamUseCase(
          get<_i22.TokenExpiredBroadcaster>()));
  gh.factory<_i64.ViamAppMovementSdkDataSource>(
      () => _i64.ViamAppMovementSdkDataSource(get<_i57.RobotManager>()));
  gh.factory<_i65.ViamAppMovementService>(() => _i66.ViamAppMovementServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i64.ViamAppMovementSdkDataSource>(),
      ));
  gh.factory<_i67.ViamAppSensorService>(() => _i68.ViamAppSensorServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i58.SensorDataSource>(),
      ));
  gh.factory<_i69.AppViamDataSource>(
      () => _i69.AppViamDataSource(get<_i57.RobotManager>()));
  gh.lazySingleton<_i70.AppViamService>(() => _i71.AppViamServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i69.AppViamDataSource>(),
      ));
  gh.factory<_i72.AuthDataSource>(() => _i72.AuthDataSource(
        get<_i27.Viam>(instanceName: 'viamSdk'),
        get<_i57.RobotManager>(),
      ));
  gh.lazySingleton<_i73.AuthService>(() => _i74.AuthServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i72.AuthDataSource>(),
        get<_i24.TokenStore>(),
      ));
  gh.factory<_i75.AuthenticateUseCase>(
      () => _i75.AuthenticateUseCase(get<_i73.AuthService>()));
  gh.factory<_i76.BoatService>(() => _i77.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i45.CurrentBoatStore>(),
      ));
  gh.factory<_i78.CameraDataSource>(
      () => _i78.CameraDataSource(get<_i57.RobotManager>()));
  gh.factory<_i79.ChangeBoatNameUseCase>(
      () => _i79.ChangeBoatNameUseCase(get<_i76.BoatService>()));
  gh.factory<_i80.CheckConnectionUseCase>(
      () => _i80.CheckConnectionUseCase(get<_i73.AuthService>()));
  gh.factory<_i81.ConnectToAppViamUseCase>(
      () => _i81.ConnectToAppViamUseCase(get<_i73.AuthService>()));
  gh.factory<_i82.ConnectToCameraClientUseCase>(
      () => _i82.ConnectToCameraClientUseCase(get<_i73.AuthService>()));
  gh.factory<_i83.ConnectToRobotUseCase>(
      () => _i83.ConnectToRobotUseCase(get<_i73.AuthService>()));
  gh.factory<_i84.DataViamDataSource>(
      () => _i84.DataViamDataSource(get<_i57.RobotManager>()));
  gh.factory<_i85.DeleteBoatUseCase>(
      () => _i85.DeleteBoatUseCase(get<_i76.BoatService>()));
  gh.factory<_i86.GetBoatsUseCase>(
      () => _i86.GetBoatsUseCase(get<_i76.BoatService>()));
  gh.factory<_i87.GetCameraPermissionStatusUseCase>(() =>
      _i87.GetCameraPermissionStatusUseCase(get<_i54.PermissionsService>()));
  gh.factory<_i88.GetCompassHeadingUseCase>(
      () => _i88.GetCompassHeadingUseCase(get<_i65.ViamAppMovementService>()));
  gh.factory<_i89.GetCurrentBoatIdUseCase>(
      () => _i89.GetCurrentBoatIdUseCase(get<_i76.BoatService>()));
  gh.factory<_i90.GetLinearVelocityUseCase>(
      () => _i90.GetLinearVelocityUseCase(get<_i65.ViamAppMovementService>()));
  gh.factory<_i91.GetLocationUseCase>(
      () => _i91.GetLocationUseCase(get<_i70.AppViamService>()));
  gh.factory<_i92.GetLocationsUseCase>(
      () => _i92.GetLocationsUseCase(get<_i70.AppViamService>()));
  gh.factory<_i93.GetMainPartAddressUseCase>(
      () => _i93.GetMainPartAddressUseCase(get<_i70.AppViamService>()));
  gh.factory<_i94.GetOrganizationUseCase>(
      () => _i94.GetOrganizationUseCase(get<_i70.AppViamService>()));
  gh.factory<_i95.GetOrganizationsListUseCase>(
      () => _i95.GetOrganizationsListUseCase(get<_i70.AppViamService>()));
  gh.factory<_i96.GetPostionUseCase>(
      () => _i96.GetPostionUseCase(get<_i65.ViamAppMovementService>()));
  gh.factory<_i97.GetRobotUseCase>(
      () => _i97.GetRobotUseCase(get<_i70.AppViamService>()));
  gh.factory<_i98.GetRobotsUseCase>(
      () => _i98.GetRobotsUseCase(get<_i70.AppViamService>()));
  gh.factory<_i99.GetSensorDataUseCase>(
      () => _i99.GetSensorDataUseCase(get<_i67.ViamAppSensorService>()));
  gh.factory<_i100.LoginPageCubit>(
      () => _i100.LoginPageCubit(get<_i75.AuthenticateUseCase>()));
  gh.factory<_i101.LogoutUseCase>(
      () => _i101.LogoutUseCase(get<_i73.AuthService>()));
  gh.factory<_i102.MapCubit>(() => _i102.MapCubit(
        get<_i96.GetPostionUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
        get<_i88.GetCompassHeadingUseCase>(),
      ));
  gh.factory<_i103.RemoveCurrentBoatIdUseCase>(
      () => _i103.RemoveCurrentBoatIdUseCase(get<_i76.BoatService>()));
  gh.factory<_i104.ResourceDataSource>(
      () => _i104.ResourceDataSource(get<_i57.RobotManager>()));
  gh.factory<_i105.SensorTileCubit>(() => _i105.SensorTileCubit(
        get<_i99.GetSensorDataUseCase>(),
        get<_i90.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
        get<_i88.GetCompassHeadingUseCase>(),
      ));
  gh.factory<_i106.SetCurrentBoatIdUseCase>(
      () => _i106.SetCurrentBoatIdUseCase(get<_i76.BoatService>()));
  gh.factory<_i107.SettingsCubit>(() => _i107.SettingsCubit(
        get<_i86.GetBoatsUseCase>(),
        get<_i20.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i41.ChoosePhotoForBoatUseCase>(),
        get<_i39.CapturePhotoForBoatUseCase>(),
        get<_i101.LogoutUseCase>(),
        get<_i44.ClearCacheUseCase>(),
      ));
  gh.factory<_i108.ViamAppCameraService>(() => _i109.ViamAppCameraServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i78.CameraDataSource>(),
        get<_i29.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i110.ViamAppResourceService>(
      () => _i111.ViamAppResourceServiceImpl(
            get<_i22.TokenExpiredBroadcaster>(),
            get<_i104.ResourceDataSource>(),
          ));
  gh.lazySingleton<_i112.ViamDataService>(() => _i113.ViamDataServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i84.DataViamDataSource>(),
      ));
  gh.factory<_i114.AddNewBoatUseCase>(
      () => _i114.AddNewBoatUseCase(get<_i76.BoatService>()));
  gh.factory<_i115.BoatListCubit>(() => _i115.BoatListCubit(
        get<_i86.GetBoatsUseCase>(),
        get<_i89.GetCurrentBoatIdUseCase>(),
        get<_i106.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i116.CameraPageCubit>(() => _i116.CameraPageCubit(
        get<_i82.ConnectToCameraClientUseCase>(),
        get<_i50.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i117.ChangeBoatNameCubit>(() => _i117.ChangeBoatNameCubit(
        get<_i79.ChangeBoatNameUseCase>(),
        get<_i16.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i118.ConnectionErrorCubit>(() => _i118.ConnectionErrorCubit(
        get<_i83.ConnectToRobotUseCase>(),
        get<_i114.AddNewBoatUseCase>(),
        get<_i86.GetBoatsUseCase>(),
        get<_i93.GetMainPartAddressUseCase>(),
      ));
  gh.factory<_i119.DashboardCubit>(() => _i119.DashboardCubit(
        get<_i86.GetBoatsUseCase>(),
        get<_i89.GetCurrentBoatIdUseCase>(),
        get<_i20.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i120.GetBinaryDataByFilterUseCase>(
      () => _i120.GetBinaryDataByFilterUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i121.GetCameraDataUseCase>(
      () => _i121.GetCameraDataUseCase(get<_i108.ViamAppCameraService>()));
  gh.factory<_i122.GetCameraVideoUseCase>(
      () => _i122.GetCameraVideoUseCase(get<_i108.ViamAppCameraService>()));
  gh.factory<_i123.GetCurrentWaterFiltersUseCase>(
      () => _i123.GetCurrentWaterFiltersUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i124.GetDepthOverTimeDataUseCase>(
      () => _i124.GetDepthOverTimeDataUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i125.GetFuelConsumptionOverTimeDataUseCase>(() =>
      _i125.GetFuelConsumptionOverTimeDataUseCase(
          get<_i112.ViamDataService>()));
  gh.factory<_i126.GetFuelConsumptionPerMileDataUseCase>(() =>
      _i126.GetFuelConsumptionPerMileDataUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i127.GetResourceNamesUseCase>(
      () => _i127.GetResourceNamesUseCase(get<_i110.ViamAppResourceService>()));
  gh.factory<_i128.GetTabularDataByFilterUseCase>(
      () => _i128.GetTabularDataByFilterUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i129.GetWaterDepthDataUseCase>(
      () => _i129.GetWaterDepthDataUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i130.GetWaterTemperatureDataUseCase>(
      () => _i130.GetWaterTemperatureDataUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i131.MainCubit>(() => _i131.MainCubit(
        get<_i127.GetResourceNamesUseCase>(),
        get<_i50.GetTokenOrNullUseCase>(),
        get<_i63.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i44.ClearCacheUseCase>(),
        get<_i83.ConnectToRobotUseCase>(),
        get<_i80.CheckConnectionUseCase>(),
      ));
  gh.factory<_i132.SelectRobotCubit>(() => _i132.SelectRobotCubit(
        get<_i114.AddNewBoatUseCase>(),
        get<_i83.ConnectToRobotUseCase>(),
        get<_i86.GetBoatsUseCase>(),
        get<_i47.GetLocationIdUseCase>(),
        get<_i92.GetLocationsUseCase>(),
        get<_i48.GetOrganizationIdUseCase>(),
        get<_i95.GetOrganizationsListUseCase>(),
        get<_i93.GetMainPartAddressUseCase>(),
        get<_i49.GetRobotIdUseCase>(),
        get<_i98.GetRobotsUseCase>(),
        get<_i50.GetTokenOrNullUseCase>(),
        get<_i59.SetLocationIdUseCase>(),
        get<_i60.SetOrganizationIdUseCase>(),
        get<_i61.SetRobotIdUseCase>(),
        get<_i63.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i44.ClearCacheUseCase>(),
        get<_i101.LogoutUseCase>(),
        get<_i81.ConnectToAppViamUseCase>(),
      ));
  gh.factory<_i133.SetDepthOverTimeFiltersUseCase>(
      () => _i133.SetDepthOverTimeFiltersUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i134.SetWaterDepthFiltersUseCase>(
      () => _i134.SetWaterDepthFiltersUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i135.SetWaterTemperatureFiltersUseCase>(() =>
      _i135.SetWaterTemperatureFiltersUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i136.SubscribeToCameraStreamUseCase>(() =>
      _i136.SubscribeToCameraStreamUseCase(get<_i108.ViamAppCameraService>()));
  gh.factory<_i137.SubscribeToRefreshFiltersUseCase>(() =>
      _i137.SubscribeToRefreshFiltersUseCase(get<_i112.ViamDataService>()));
  gh.factory<_i138.WaterDepthCubit>(() => _i138.WaterDepthCubit(
        get<_i129.GetWaterDepthDataUseCase>(),
        get<_i137.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i139.WaterDepthCubit>(() => _i139.WaterDepthCubit(
        get<_i129.GetWaterDepthDataUseCase>(),
        get<_i137.SubscribeToRefreshFiltersUseCase>(),
        get<_i134.SetWaterDepthFiltersUseCase>(),
      ));
  gh.factory<_i140.WaterTemperatureCubit>(() => _i140.WaterTemperatureCubit(
        get<_i130.GetWaterTemperatureDataUseCase>(),
        get<_i137.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i141.WaterTemperatureCubit>(() => _i141.WaterTemperatureCubit(
        get<_i130.GetWaterTemperatureDataUseCase>(),
        get<_i137.SubscribeToRefreshFiltersUseCase>(),
        get<_i135.SetWaterTemperatureFiltersUseCase>(),
      ));
  gh.factory<_i142.WebrtcCameraCubit>(() => _i142.WebrtcCameraCubit(
        get<_i122.GetCameraVideoUseCase>(),
        get<_i136.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i143.CameraTileCubit>(
      () => _i143.CameraTileCubit(get<_i121.GetCameraDataUseCase>()));
  gh.factory<_i144.DepthOverTimeCubit>(() => _i144.DepthOverTimeCubit(
        get<_i124.GetDepthOverTimeDataUseCase>(),
        get<_i137.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i145.DepthOverTimePageCubit>(() => _i145.DepthOverTimePageCubit(
        get<_i124.GetDepthOverTimeDataUseCase>(),
        get<_i137.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i146.FiltersCubit>(() => _i146.FiltersCubit(
        get<_i123.GetCurrentWaterFiltersUseCase>(),
        get<_i134.SetWaterDepthFiltersUseCase>(),
        get<_i135.SetWaterTemperatureFiltersUseCase>(),
        get<_i133.SetDepthOverTimeFiltersUseCase>(),
      ));
  gh.factory<_i147.FuelConsumptionOverTimeCubit>(() =>
      _i147.FuelConsumptionOverTimeCubit(
          get<_i125.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i148.FuelConsumptionOverTimePageCubit>(() =>
      _i148.FuelConsumptionOverTimePageCubit(
          get<_i125.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i149.FuelConsumptionPerMileCubit>(() =>
      _i149.FuelConsumptionPerMileCubit(
          get<_i126.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i150.FuelConsumptionPerMilePageCubit>(() =>
      _i150.FuelConsumptionPerMilePageCubit(
          get<_i126.GetFuelConsumptionPerMileDataUseCase>()));
  return get;
}

class _$FilePickerModule extends _i151.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i152.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i153.NavigatorKeyModule {}

class _$ImagePickerModule extends _i154.ImagePickerModule {}

class _$CameraPermissionModule extends _i155.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i156.SharedPreferencesModule {}

class _$UuidModule extends _i157.UuidModule {}

class _$ViamSdkModule extends _i158.ViamSdkModule {}

class _$ViamSdkDirectDataClientModule
    extends _i158.ViamSdkDirectDataClientModule {}
