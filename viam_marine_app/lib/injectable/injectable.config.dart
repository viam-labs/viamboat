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

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i32;
import '../data/analytics/service/analytics_service_impl.dart' as _i34;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i68;
import '../data/app_viam/service/app_viam_service.dart' as _i70;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i36;
import '../data/auth/data_source/auth_data_source.dart' as _i71;
import '../data/auth/service/auth_service_impl.dart' as _i73;
import '../data/auth/store/token_box.dart' as _i21;
import '../data/auth/store/token_store_impl.dart' as _i25;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i76;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i45;
import '../data/camera/data_source/camera_api_data_source.dart' as _i77;
import '../data/camera/service/camera_service_impl.dart' as _i108;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i42;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i83;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i112;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i13;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i15;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i63;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i29;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i30;
import '../data/movement/service/movement_service_impl.dart' as _i65;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i37;
import '../data/permissions/service/permissions_service_impl.dart' as _i54;
import '../data/resource/data_source/resource_api_data_source.dart' as _i103;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/service/resource_service_impl.dart' as _i110;
import '../data/robot_manager/robot_manager.dart' as _i56;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i57;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i31;
import '../data/sensor/service/sensor_service_impl.dart' as _i67;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i23;
import '../domain/analytics/service/analytics_service.dart' as _i33;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i50;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i51;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i52;
import '../domain/app_viam/service/app_viam_service.dart' as _i69;
import '../domain/app_viam/store/app_viam_store.dart' as _i35;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i46;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i90;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i91;
import '../domain/app_viam/usecase/get_main_part_address_use_case.dart' as _i92;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i47;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i93;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i48;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i96;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i97;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i94;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i58;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i59;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i60;
import '../domain/auth/service/auth_service.dart' as _i72;
import '../domain/auth/store/token_store.dart' as _i24;
import '../domain/auth/usecase/authenticate_use_case.dart' as _i74;
import '../domain/auth/usecase/check_connection_use_case.dart' as _i79;
import '../domain/auth/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i39;
import '../domain/auth/usecase/connect_to_app_viam_use_case.dart' as _i80;
import '../domain/auth/usecase/connect_to_camera_client_use_case.dart' as _i81;
import '../domain/auth/usecase/connect_to_robot_use_case.dart' as _i82;
import '../domain/auth/usecase/get_token_or_null_use_case.dart' as _i49;
import '../domain/auth/usecase/logout_use_case.dart' as _i100;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i75;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i44;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i113;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i78;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i84;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i85;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i88;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i16;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i102;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i105;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i20;
import '../domain/camera/service/camera_service.dart' as _i107;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i130;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i41;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i43;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/data_viam/service/viam_data_service.dart' as _i111;
import '../domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i118;
import '../domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i119;
import '../domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart'
    as _i120;
import '../domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i121;
import '../domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i123;
import '../domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i124;
import '../domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i127;
import '../domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i128;
import '../domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i129;
import '../domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i131;
import '../domain/local_photo/service/local_photo_service.dart' as _i14;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i38;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i40;
import '../domain/movement/service/movement_service.dart' as _i64;
import '../domain/movement/usecase/get_compass_heading_use_case.dart' as _i87;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i89;
import '../domain/movement/usecase/get_position_use_case.dart' as _i95;
import '../domain/permissions/service/permissions_service.dart' as _i53;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i86;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i55;
import '../domain/resource/service/resource_service.dart' as _i109;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i122;
import '../domain/sensor/service/sensor_service_impl.dart' as _i66;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i98;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i22;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i62;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i137;
import '../presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i140;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i142;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i133;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i135;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i114;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i136;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i115;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i116;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i117;
import '../presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i138;
import '../presentation/page/filters/cubit/filters_cubit.dart' as _i139;
import '../presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i141;
import '../presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i143;
import '../presentation/page/login/cubit/login_page_cubit.dart' as _i99;
import '../presentation/page/main/cubit/main_cubit.dart' as _i125;
import '../presentation/page/map/cubit/map_cubit.dart' as _i101;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i18;
import '../presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i126;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i106;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i61;
import '../presentation/page/water_depth/cubit/water_depth_cubit.dart' as _i132;
import '../presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i134;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i104;
import 'camera_permission_injectable.dart' as _i148;
import 'file_picker_injectable.dart' as _i144;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i145;
import 'image_picker_injectable.dart' as _i147;
import 'navigator_key_injectable.dart' as _i146;
import 'shared_preferences_injectable.dart' as _i149;
import 'uuid_injectable.dart' as _i150;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i151;

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
  final viamSdkDirectDataClientModule = _$ViamSdkDirectDataClientModule();
  final viamSdkModule = _$ViamSdkModule();
  gh.factory<_i3.AnalyticsCubit>(() => _i3.AnalyticsCubit());
  gh.singleton<_i4.BoatBox>(_i5.CurrentBoatBoxImpl());
  gh.lazySingleton<_i6.BoatUpdateBroadcaster>(
      () => _i7.BoatChangeBroadcasterImpl());
  gh.factory<_i8.FilePicker>(() => filePickerModule.filePicker);
  gh.lazySingleton<_i9.FirebaseAnalytics>(
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i9.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
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
    viamSdkDirectDataClientModule.viam,
    instanceName: 'directDataClient',
  );
  gh.singleton<_i27.Viam>(
    viamSdkModule.viam,
    instanceName: 'viamSdk',
  );
  gh.factory<_i28.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i28.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i29.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i29.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i30.ViamPositionToViamAppPositionMapper>(
      () => _i30.ViamPositionToViamAppPositionMapper());
  gh.factory<_i31.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i31.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i32.AnalyticsDataSink>(
      () => _i32.AnalyticsDataSinkImpl(get<_i9.FirebaseAnalytics>()));
  gh.factory<_i33.AnalyticsService>(
      () => _i34.AnalyticsServiceImpl(get<_i32.AnalyticsDataSink>()));
  gh.factory<_i35.AppViamStore>(
      () => _i36.SharedPreferencesAppViamStore(get<_i19.SharedPreferences>()));
  gh.factory<_i37.CameraPermissionDataSource>(
      () => _i37.CameraPermissionDataSource(get<_i17.Permission>()));
  gh.factory<_i38.CapturePhotoForBoatUseCase>(
      () => _i38.CapturePhotoForBoatUseCase(get<_i14.LocalPhotoService>()));
  gh.factory<_i39.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i39.CheckIfHasTokenAndRefreshTokenUseCase(get<_i24.TokenStore>()));
  gh.factory<_i40.ChoosePhotoForBoatUseCase>(
      () => _i40.ChoosePhotoForBoatUseCase(get<_i14.LocalPhotoService>()));
  gh.factory<_i41.ClearCacheService>(() => _i42.ClearCacheServiceImpl(
        get<_i24.TokenStore>(),
        get<_i35.AppViamStore>(),
      ));
  gh.factory<_i43.ClearCacheUseCase>(
      () => _i43.ClearCacheUseCase(get<_i41.ClearCacheService>()));
  gh.factory<_i44.CurrentBoatStore>(() =>
      _i45.SharedPreferencesCurrentBoatStore(get<_i19.SharedPreferences>()));
  gh.factory<_i46.GetLocationIdUseCase>(
      () => _i46.GetLocationIdUseCase(get<_i35.AppViamStore>()));
  gh.factory<_i47.GetOrganizationIdUseCase>(
      () => _i47.GetOrganizationIdUseCase(get<_i35.AppViamStore>()));
  gh.factory<_i48.GetRobotIdUseCase>(
      () => _i48.GetRobotIdUseCase(get<_i35.AppViamStore>()));
  gh.factory<_i49.GetTokenOrNullUseCase>(
      () => _i49.GetTokenOrNullUseCase(get<_i24.TokenStore>()));
  gh.factory<_i50.LogAddBoatEventUseCase>(
      () => _i50.LogAddBoatEventUseCase(get<_i33.AnalyticsService>()));
  gh.factory<_i51.LogDeleteBoatEventUseCase>(
      () => _i51.LogDeleteBoatEventUseCase(get<_i33.AnalyticsService>()));
  gh.factory<_i52.LogOpenAppEventUseCase>(
      () => _i52.LogOpenAppEventUseCase(get<_i33.AnalyticsService>()));
  gh.lazySingleton<_i53.PermissionsService>(() =>
      _i54.PermissionsServiceImpl(get<_i37.CameraPermissionDataSource>()));
  gh.factory<_i55.RequestCameraPermissionUseCase>(() =>
      _i55.RequestCameraPermissionUseCase(get<_i53.PermissionsService>()));
  gh.singleton<_i56.RobotManager>(
      _i56.RobotManager(get<_i27.Viam>(instanceName: 'directDataClient')));
  gh.factory<_i57.SensorDataSource>(
      () => _i57.SensorDataSource(get<_i56.RobotManager>()));
  gh.factory<_i58.SetLocationIdUseCase>(
      () => _i58.SetLocationIdUseCase(get<_i35.AppViamStore>()));
  gh.factory<_i59.SetOrganizationIdUseCase>(
      () => _i59.SetOrganizationIdUseCase(get<_i35.AppViamStore>()));
  gh.factory<_i60.SetRobotIdUseCase>(
      () => _i60.SetRobotIdUseCase(get<_i35.AppViamStore>()));
  gh.factory<_i61.SplashCubit>(() =>
      _i61.SplashCubit(get<_i39.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i62.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i62.SubscribeToTokenExpiredStreamUseCase(
          get<_i22.TokenExpiredBroadcaster>()));
  gh.factory<_i63.ViamAppMovementSdkDataSource>(
      () => _i63.ViamAppMovementSdkDataSource(get<_i56.RobotManager>()));
  gh.factory<_i64.ViamAppMovementService>(() => _i65.ViamAppMovementServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i63.ViamAppMovementSdkDataSource>(),
      ));
  gh.factory<_i66.ViamAppSensorService>(() => _i67.ViamAppSensorServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i57.SensorDataSource>(),
      ));
  gh.factory<_i68.AppViamDataSource>(
      () => _i68.AppViamDataSource(get<_i56.RobotManager>()));
  gh.lazySingleton<_i69.AppViamService>(() => _i70.AppViamServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i68.AppViamDataSource>(),
      ));
  gh.factory<_i71.AuthDataSource>(() => _i71.AuthDataSource(
        get<_i27.Viam>(instanceName: 'viamSdk'),
        get<_i56.RobotManager>(),
      ));
  gh.lazySingleton<_i72.AuthService>(() => _i73.AuthServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i71.AuthDataSource>(),
        get<_i24.TokenStore>(),
      ));
  gh.factory<_i74.AuthenticateUseCase>(
      () => _i74.AuthenticateUseCase(get<_i72.AuthService>()));
  gh.factory<_i75.BoatService>(() => _i76.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i44.CurrentBoatStore>(),
      ));
  gh.factory<_i77.CameraDataSource>(
      () => _i77.CameraDataSource(get<_i56.RobotManager>()));
  gh.factory<_i78.ChangeBoatNameUseCase>(
      () => _i78.ChangeBoatNameUseCase(get<_i75.BoatService>()));
  gh.factory<_i79.CheckConnectionUseCase>(
      () => _i79.CheckConnectionUseCase(get<_i72.AuthService>()));
  gh.factory<_i80.ConnectToAppViamUseCase>(
      () => _i80.ConnectToAppViamUseCase(get<_i72.AuthService>()));
  gh.factory<_i81.ConnectToCameraClientUseCase>(
      () => _i81.ConnectToCameraClientUseCase(get<_i72.AuthService>()));
  gh.factory<_i82.ConnectToRobotUseCase>(
      () => _i82.ConnectToRobotUseCase(get<_i72.AuthService>()));
  gh.factory<_i83.DataViamDataSource>(
      () => _i83.DataViamDataSource(get<_i56.RobotManager>()));
  gh.factory<_i84.DeleteBoatUseCase>(
      () => _i84.DeleteBoatUseCase(get<_i75.BoatService>()));
  gh.factory<_i85.GetBoatsUseCase>(
      () => _i85.GetBoatsUseCase(get<_i75.BoatService>()));
  gh.factory<_i86.GetCameraPermissionStatusUseCase>(() =>
      _i86.GetCameraPermissionStatusUseCase(get<_i53.PermissionsService>()));
  gh.factory<_i87.GetCompassHeadingUseCase>(
      () => _i87.GetCompassHeadingUseCase(get<_i64.ViamAppMovementService>()));
  gh.factory<_i88.GetCurrentBoatIdUseCase>(
      () => _i88.GetCurrentBoatIdUseCase(get<_i75.BoatService>()));
  gh.factory<_i89.GetLinearVelocityUseCase>(
      () => _i89.GetLinearVelocityUseCase(get<_i64.ViamAppMovementService>()));
  gh.factory<_i90.GetLocationUseCase>(
      () => _i90.GetLocationUseCase(get<_i69.AppViamService>()));
  gh.factory<_i91.GetLocationsUseCase>(
      () => _i91.GetLocationsUseCase(get<_i69.AppViamService>()));
  gh.factory<_i92.GetMainPartAddressUseCase>(
      () => _i92.GetMainPartAddressUseCase(get<_i69.AppViamService>()));
  gh.factory<_i93.GetOrganizationUseCase>(
      () => _i93.GetOrganizationUseCase(get<_i69.AppViamService>()));
  gh.factory<_i94.GetOrganizationsListUseCase>(
      () => _i94.GetOrganizationsListUseCase(get<_i69.AppViamService>()));
  gh.factory<_i95.GetPostionUseCase>(
      () => _i95.GetPostionUseCase(get<_i64.ViamAppMovementService>()));
  gh.factory<_i96.GetRobotUseCase>(
      () => _i96.GetRobotUseCase(get<_i69.AppViamService>()));
  gh.factory<_i97.GetRobotsUseCase>(
      () => _i97.GetRobotsUseCase(get<_i69.AppViamService>()));
  gh.factory<_i98.GetSensorDataUseCase>(
      () => _i98.GetSensorDataUseCase(get<_i66.ViamAppSensorService>()));
  gh.factory<_i99.LoginPageCubit>(
      () => _i99.LoginPageCubit(get<_i74.AuthenticateUseCase>()));
  gh.factory<_i100.LogoutUseCase>(
      () => _i100.LogoutUseCase(get<_i72.AuthService>()));
  gh.factory<_i101.MapCubit>(() => _i101.MapCubit(
        get<_i95.GetPostionUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
        get<_i87.GetCompassHeadingUseCase>(),
      ));
  gh.factory<_i102.RemoveCurrentBoatIdUseCase>(
      () => _i102.RemoveCurrentBoatIdUseCase(get<_i75.BoatService>()));
  gh.factory<_i103.ResourceDataSource>(
      () => _i103.ResourceDataSource(get<_i56.RobotManager>()));
  gh.factory<_i104.SensorTileCubit>(() => _i104.SensorTileCubit(
        get<_i98.GetSensorDataUseCase>(),
        get<_i89.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
        get<_i87.GetCompassHeadingUseCase>(),
      ));
  gh.factory<_i105.SetCurrentBoatIdUseCase>(
      () => _i105.SetCurrentBoatIdUseCase(get<_i75.BoatService>()));
  gh.factory<_i106.SettingsCubit>(() => _i106.SettingsCubit(
        get<_i85.GetBoatsUseCase>(),
        get<_i20.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i40.ChoosePhotoForBoatUseCase>(),
        get<_i38.CapturePhotoForBoatUseCase>(),
        get<_i100.LogoutUseCase>(),
        get<_i43.ClearCacheUseCase>(),
      ));
  gh.factory<_i107.ViamAppCameraService>(() => _i108.ViamAppCameraServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i77.CameraDataSource>(),
      ));
  gh.factory<_i109.ViamAppResourceService>(
      () => _i110.ViamAppResourceServiceImpl(
            get<_i22.TokenExpiredBroadcaster>(),
            get<_i103.ResourceDataSource>(),
          ));
  gh.lazySingleton<_i111.ViamDataService>(() => _i112.ViamDataServiceImpl(
        get<_i22.TokenExpiredBroadcaster>(),
        get<_i83.DataViamDataSource>(),
      ));
  gh.factory<_i113.AddNewBoatUseCase>(
      () => _i113.AddNewBoatUseCase(get<_i75.BoatService>()));
  gh.factory<_i114.BoatListCubit>(() => _i114.BoatListCubit(
        get<_i85.GetBoatsUseCase>(),
        get<_i88.GetCurrentBoatIdUseCase>(),
        get<_i105.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i115.ChangeBoatNameCubit>(() => _i115.ChangeBoatNameCubit(
        get<_i78.ChangeBoatNameUseCase>(),
        get<_i16.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i116.ConnectionErrorCubit>(() => _i116.ConnectionErrorCubit(
        get<_i82.ConnectToRobotUseCase>(),
        get<_i113.AddNewBoatUseCase>(),
        get<_i85.GetBoatsUseCase>(),
        get<_i92.GetMainPartAddressUseCase>(),
      ));
  gh.factory<_i117.DashboardCubit>(() => _i117.DashboardCubit(
        get<_i85.GetBoatsUseCase>(),
        get<_i88.GetCurrentBoatIdUseCase>(),
        get<_i20.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i118.GetCurrentWaterFiltersUseCase>(
      () => _i118.GetCurrentWaterFiltersUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i119.GetDepthOverTimeDataUseCase>(
      () => _i119.GetDepthOverTimeDataUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i120.GetFuelConsumptionOverTimeDataUseCase>(() =>
      _i120.GetFuelConsumptionOverTimeDataUseCase(
          get<_i111.ViamDataService>()));
  gh.factory<_i121.GetFuelConsumptionPerMileDataUseCase>(() =>
      _i121.GetFuelConsumptionPerMileDataUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i122.GetResourceNamesUseCase>(
      () => _i122.GetResourceNamesUseCase(get<_i109.ViamAppResourceService>()));
  gh.factory<_i123.GetWaterDepthDataUseCase>(
      () => _i123.GetWaterDepthDataUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i124.GetWaterTemperatureDataUseCase>(
      () => _i124.GetWaterTemperatureDataUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i125.MainCubit>(() => _i125.MainCubit(
        get<_i122.GetResourceNamesUseCase>(),
        get<_i49.GetTokenOrNullUseCase>(),
        get<_i62.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i43.ClearCacheUseCase>(),
        get<_i82.ConnectToRobotUseCase>(),
        get<_i79.CheckConnectionUseCase>(),
      ));
  gh.factory<_i126.SelectRobotCubit>(() => _i126.SelectRobotCubit(
        get<_i113.AddNewBoatUseCase>(),
        get<_i82.ConnectToRobotUseCase>(),
        get<_i85.GetBoatsUseCase>(),
        get<_i46.GetLocationIdUseCase>(),
        get<_i91.GetLocationsUseCase>(),
        get<_i47.GetOrganizationIdUseCase>(),
        get<_i94.GetOrganizationsListUseCase>(),
        get<_i92.GetMainPartAddressUseCase>(),
        get<_i48.GetRobotIdUseCase>(),
        get<_i97.GetRobotsUseCase>(),
        get<_i49.GetTokenOrNullUseCase>(),
        get<_i58.SetLocationIdUseCase>(),
        get<_i59.SetOrganizationIdUseCase>(),
        get<_i60.SetRobotIdUseCase>(),
        get<_i62.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i43.ClearCacheUseCase>(),
        get<_i100.LogoutUseCase>(),
        get<_i80.ConnectToAppViamUseCase>(),
      ));
  gh.factory<_i127.SetDepthOverTimeFiltersUseCase>(
      () => _i127.SetDepthOverTimeFiltersUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i128.SetWaterDepthFiltersUseCase>(
      () => _i128.SetWaterDepthFiltersUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i129.SetWaterTemperatureFiltersUseCase>(() =>
      _i129.SetWaterTemperatureFiltersUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i130.SubscribeToCameraStreamUseCase>(() =>
      _i130.SubscribeToCameraStreamUseCase(get<_i107.ViamAppCameraService>()));
  gh.factory<_i131.SubscribeToRefreshFiltersUseCase>(() =>
      _i131.SubscribeToRefreshFiltersUseCase(get<_i111.ViamDataService>()));
  gh.factory<_i132.WaterDepthCubit>(() => _i132.WaterDepthCubit(
        get<_i123.GetWaterDepthDataUseCase>(),
        get<_i131.SubscribeToRefreshFiltersUseCase>(),
        get<_i128.SetWaterDepthFiltersUseCase>(),
      ));
  gh.factory<_i133.WaterDepthCubit>(() => _i133.WaterDepthCubit(
        get<_i123.GetWaterDepthDataUseCase>(),
        get<_i131.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i134.WaterTemperatureCubit>(() => _i134.WaterTemperatureCubit(
        get<_i124.GetWaterTemperatureDataUseCase>(),
        get<_i131.SubscribeToRefreshFiltersUseCase>(),
        get<_i129.SetWaterTemperatureFiltersUseCase>(),
      ));
  gh.factory<_i135.WaterTemperatureCubit>(() => _i135.WaterTemperatureCubit(
        get<_i124.GetWaterTemperatureDataUseCase>(),
        get<_i131.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i136.WebrtcCameraCubit>(() => _i136.WebrtcCameraCubit(
        get<_i130.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i137.DepthOverTimeCubit>(() => _i137.DepthOverTimeCubit(
        get<_i119.GetDepthOverTimeDataUseCase>(),
        get<_i131.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i138.DepthOverTimePageCubit>(() => _i138.DepthOverTimePageCubit(
        get<_i119.GetDepthOverTimeDataUseCase>(),
        get<_i131.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i139.FiltersCubit>(() => _i139.FiltersCubit(
        get<_i118.GetCurrentWaterFiltersUseCase>(),
        get<_i128.SetWaterDepthFiltersUseCase>(),
        get<_i129.SetWaterTemperatureFiltersUseCase>(),
        get<_i127.SetDepthOverTimeFiltersUseCase>(),
      ));
  gh.factory<_i140.FuelConsumptionOverTimeCubit>(() =>
      _i140.FuelConsumptionOverTimeCubit(
          get<_i120.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i141.FuelConsumptionOverTimePageCubit>(() =>
      _i141.FuelConsumptionOverTimePageCubit(
          get<_i120.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i142.FuelConsumptionPerMileCubit>(() =>
      _i142.FuelConsumptionPerMileCubit(
          get<_i121.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i143.FuelConsumptionPerMilePageCubit>(() =>
      _i143.FuelConsumptionPerMilePageCubit(
          get<_i121.GetFuelConsumptionPerMileDataUseCase>()));
  return get;
}

class _$FilePickerModule extends _i144.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i145.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i146.NavigatorKeyModule {}

class _$ImagePickerModule extends _i147.ImagePickerModule {}

class _$CameraPermissionModule extends _i148.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i149.SharedPreferencesModule {}

class _$UuidModule extends _i150.UuidModule {}

class _$ViamSdkDirectDataClientModule
    extends _i151.ViamSdkDirectDataClientModule {}

class _$ViamSdkModule extends _i151.ViamSdkModule {}
