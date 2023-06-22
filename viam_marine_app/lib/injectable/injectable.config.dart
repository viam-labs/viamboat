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
import 'package:shared_preferences/shared_preferences.dart' as _i20;
import 'package:uuid/uuid.dart' as _i27;
import 'package:viam_sdk/viam_sdk.dart' as _i28;

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i42;
import '../data/analytics/service/analytics_service_impl.dart' as _i44;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i45;
import '../data/app_viam/service/app_viam_service.dart' as _i47;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i49;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i102;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i62;
import '../data/camera/data_source/camera_api_data_source.dart' as _i51;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i35;
import '../data/camera/service/camera_service_impl.dart' as _i96;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i57;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i63;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i100;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i29;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i37;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i38;
import '../data/movement/service/movement_service_impl.dart' as _i31;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i52;
import '../data/permissions/service/permissions_service_impl.dart' as _i86;
import '../data/resource/data_source/resource_api_data_source.dart' as _i88;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i32;
import '../data/resource/service/resource_service_impl.dart' as _i98;
import '../data/robot_manager/robot_manager.dart' as _i17;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i19;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i39;
import '../data/sensor/service/sensor_service_impl.dart' as _i34;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i24;
import '../data/viam/data_source/viam_data_source.dart' as _i36;
import '../data/viam/service/viam_service_impl.dart' as _i41;
import '../data/viam/store/token_box.dart' as _i22;
import '../data/viam/store/token_store_impl.dart' as _i26;
import '../domain/analytics/service/analytics_service.dart' as _i43;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i79;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i80;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i81;
import '../domain/app_viam/service/app_viam_service.dart' as _i46;
import '../domain/app_viam/store/app_viam_store.dart' as _i48;
import '../domain/app_viam/usecase/connect_app_service_client_use_case.dart'
    as _i59;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i67;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i68;
import '../domain/app_viam/usecase/get_main_part_address_use_case.dart' as _i69;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i70;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i71;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i74;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i75;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i76;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i72;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i90;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i91;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i92;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i101;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i61;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i135;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i103;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i104;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i106;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i108;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i112;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i122;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i123;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i21;
import '../domain/camera/service/camera_service.dart' as _i95;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i109;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i111;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i128;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i56;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i58;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/data_viam/service/viam_data_service.dart' as _i99;
import '../domain/data_viam/use_case/connect_to_viam_app_use_case.dart'
    as _i105;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i107;
import '../domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i113;
import '../domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i114;
import '../domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart'
    as _i115;
import '../domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i116;
import '../domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart'
    as _i118;
import '../domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i119;
import '../domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i120;
import '../domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i124;
import '../domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i125;
import '../domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i126;
import '../domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i129;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i53;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i55;
import '../domain/movement/service/movement_service.dart' as _i30;
import '../domain/movement/usecase/get_compass_heading_use_case.dart' as _i64;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i65;
import '../domain/movement/usecase/get_position_use_case.dart' as _i73;
import '../domain/permissions/service/permissions_service.dart' as _i85;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i110;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i87;
import '../domain/resource/service/resource_service.dart' as _i97;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i117;
import '../domain/sensor/service/sensor_service_impl.dart' as _i33;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i77;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i23;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i94;
import '../domain/viam/service/viam_service.dart' as _i40;
import '../domain/viam/store/token_store.dart' as _i25;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i50;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i54;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i60;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i78;
import '../domain/viam/usecase/logout_use_case.dart' as _i83;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i136;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i142;
import '../presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i145;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i147;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i131;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i133;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i137;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i134;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i139;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i140;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i141;
import '../presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i143;
import '../presentation/page/filters/cubit/filters_cubit.dart' as _i144;
import '../presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i146;
import '../presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i148;
import '../presentation/page/login/cubit/login_page_cubit.dart' as _i82;
import '../presentation/page/main/cubit/main_cubit.dart' as _i121;
import '../presentation/page/map/cubit/map_cubit.dart' as _i84;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i18;
import '../presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i149;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i127;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i93;
import '../presentation/page/water_depth/cubit/water_depth_cubit.dart' as _i130;
import '../presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i132;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i138;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i89;
import 'camera_permission_injectable.dart' as _i154;
import 'file_picker_injectable.dart' as _i150;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i151;
import 'image_picker_injectable.dart' as _i153;
import 'navigator_key_injectable.dart' as _i152;
import 'shared_preferences_injectable.dart' as _i155;
import 'uuid_injectable.dart' as _i156;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i157;

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
  gh.singleton<_i17.RobotManager>(_i17.RobotManager());
  gh.factory<_i18.ScanQrCubit>(() => _i18.ScanQrCubit());
  gh.factory<_i19.SensorDataSource>(
      () => _i19.SensorDataSource(get<_i17.RobotManager>()));
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i21.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i21.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i22.TokenBox>(_i22.TokenBoxImpl());
  gh.singleton<_i23.TokenExpiredBroadcaster>(
      _i24.TokenExpiredBroadcasterImpl());
  gh.factory<_i25.TokenStore>(() => _i26.TokenStoreImpl(get<_i22.TokenBox>()));
  gh.singleton<_i27.Uuid>(uuidModule.uuid);
  gh.singleton<_i28.Viam>(
    viamSdkDirectDataClientModule.viam,
    instanceName: 'directDataClient',
  );
  gh.singleton<_i28.Viam>(
    viamSdkModule.viam,
    instanceName: 'viamSdk',
  );
  gh.factory<_i29.ViamAppMovementSdkDataSource>(
      () => _i29.ViamAppMovementSdkDataSource(get<_i17.RobotManager>()));
  gh.factory<_i30.ViamAppMovementService>(() => _i31.ViamAppMovementServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i29.ViamAppMovementSdkDataSource>(),
      ));
  gh.factory<_i32.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i32.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i33.ViamAppSensorService>(() => _i34.ViamAppSensorServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i19.SensorDataSource>(),
      ));
  gh.factory<_i35.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i35.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i36.ViamDataSource>(() => _i36.ViamDataSource(
        get<_i28.Viam>(instanceName: 'viamSdk'),
        get<_i17.RobotManager>(),
      ));
  gh.factory<_i37.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i37.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i38.ViamPositionToViamAppPositionMapper>(
      () => _i38.ViamPositionToViamAppPositionMapper());
  gh.factory<_i39.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i39.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i40.ViamService>(() => _i41.ViamServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i36.ViamDataSource>(),
        get<_i25.TokenStore>(),
      ));
  gh.factory<_i42.AnalyticsDataSink>(
      () => _i42.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i43.AnalyticsService>(
      () => _i44.AnalyticsServiceImpl(get<_i42.AnalyticsDataSink>()));
  gh.factory<_i45.AppViamDataSource>(() =>
      _i45.AppViamDataSource(get<_i28.Viam>(instanceName: 'directDataClient')));
  gh.lazySingleton<_i46.AppViamService>(() => _i47.AppViamServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i45.AppViamDataSource>(),
      ));
  gh.factory<_i48.AppViamStore>(
      () => _i49.SharedPreferencesAppViamStore(get<_i20.SharedPreferences>()));
  gh.factory<_i50.AuthenticateUseCase>(
      () => _i50.AuthenticateUseCase(get<_i40.ViamService>()));
  gh.factory<_i51.CameraDataSource>(
      () => _i51.CameraDataSource(get<_i28.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i52.CameraPermissionDataSource>(
      () => _i52.CameraPermissionDataSource(get<_i16.Permission>()));
  gh.factory<_i53.CapturePhotoForBoatUseCase>(
      () => _i53.CapturePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i54.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i54.CheckIfHasTokenAndRefreshTokenUseCase(get<_i25.TokenStore>()));
  gh.factory<_i55.ChoosePhotoForBoatUseCase>(
      () => _i55.ChoosePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i56.ClearCacheService>(() => _i57.ClearCacheServiceImpl(
        get<_i25.TokenStore>(),
        get<_i48.AppViamStore>(),
      ));
  gh.factory<_i58.ClearCacheUseCase>(
      () => _i58.ClearCacheUseCase(get<_i56.ClearCacheService>()));
  gh.factory<_i59.ConnectAppServiceClinetUseCase>(
      () => _i59.ConnectAppServiceClinetUseCase(get<_i46.AppViamService>()));
  gh.factory<_i60.ConnectToRobotUseCase>(
      () => _i60.ConnectToRobotUseCase(get<_i40.ViamService>()));
  gh.factory<_i61.CurrentBoatStore>(() =>
      _i62.SharedPreferencesCurrentBoatStore(get<_i20.SharedPreferences>()));
  gh.factory<_i63.DataViamDataSource>(() => _i63.DataViamDataSource(
      get<_i28.Viam>(instanceName: 'directDataClient')));
  gh.factory<_i64.GetCompassHeadingUseCase>(
      () => _i64.GetCompassHeadingUseCase(get<_i30.ViamAppMovementService>()));
  gh.factory<_i65.GetLinearVelocityUseCase>(
      () => _i65.GetLinearVelocityUseCase(get<_i30.ViamAppMovementService>()));
  gh.factory<_i66.GetLocationIdUseCase>(
      () => _i66.GetLocationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i67.GetLocationUseCase>(
      () => _i67.GetLocationUseCase(get<_i46.AppViamService>()));
  gh.factory<_i68.GetLocationsUseCase>(
      () => _i68.GetLocationsUseCase(get<_i46.AppViamService>()));
  gh.factory<_i69.GetMainPartAddressUseCase>(
      () => _i69.GetMainPartAddressUseCase(get<_i46.AppViamService>()));
  gh.factory<_i70.GetOrganizationIdUseCase>(
      () => _i70.GetOrganizationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i71.GetOrganizationUseCase>(
      () => _i71.GetOrganizationUseCase(get<_i46.AppViamService>()));
  gh.factory<_i72.GetOrganizationsListUseCase>(
      () => _i72.GetOrganizationsListUseCase(get<_i46.AppViamService>()));
  gh.factory<_i73.GetPostionUseCase>(
      () => _i73.GetPostionUseCase(get<_i30.ViamAppMovementService>()));
  gh.factory<_i74.GetRobotIdUseCase>(
      () => _i74.GetRobotIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i75.GetRobotUseCase>(
      () => _i75.GetRobotUseCase(get<_i46.AppViamService>()));
  gh.factory<_i76.GetRobotsUseCase>(
      () => _i76.GetRobotsUseCase(get<_i46.AppViamService>()));
  gh.factory<_i77.GetSensorDataUseCase>(
      () => _i77.GetSensorDataUseCase(get<_i33.ViamAppSensorService>()));
  gh.factory<_i78.GetTokenOrNullUseCase>(
      () => _i78.GetTokenOrNullUseCase(get<_i25.TokenStore>()));
  gh.factory<_i79.LogAddBoatEventUseCase>(
      () => _i79.LogAddBoatEventUseCase(get<_i43.AnalyticsService>()));
  gh.factory<_i80.LogDeleteBoatEventUseCase>(
      () => _i80.LogDeleteBoatEventUseCase(get<_i43.AnalyticsService>()));
  gh.factory<_i81.LogOpenAppEventUseCase>(
      () => _i81.LogOpenAppEventUseCase(get<_i43.AnalyticsService>()));
  gh.factory<_i82.LoginPageCubit>(
      () => _i82.LoginPageCubit(get<_i50.AuthenticateUseCase>()));
  gh.factory<_i83.LogoutUseCase>(
      () => _i83.LogoutUseCase(get<_i40.ViamService>()));
  gh.factory<_i84.MapCubit>(() => _i84.MapCubit(
        get<_i73.GetPostionUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
        get<_i64.GetCompassHeadingUseCase>(),
      ));
  gh.lazySingleton<_i85.PermissionsService>(() =>
      _i86.PermissionsServiceImpl(get<_i52.CameraPermissionDataSource>()));
  gh.factory<_i87.RequestCameraPermissionUseCase>(() =>
      _i87.RequestCameraPermissionUseCase(get<_i85.PermissionsService>()));
  gh.factory<_i88.ResourceDataSource>(
      () => _i88.ResourceDataSource(get<_i17.RobotManager>()));
  gh.factory<_i89.SensorTileCubit>(() => _i89.SensorTileCubit(
        get<_i77.GetSensorDataUseCase>(),
        get<_i65.GetLinearVelocityUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
        get<_i64.GetCompassHeadingUseCase>(),
      ));
  gh.factory<_i90.SetLocationIdUseCase>(
      () => _i90.SetLocationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i91.SetOrganizationIdUseCase>(
      () => _i91.SetOrganizationIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i92.SetRobotIdUseCase>(
      () => _i92.SetRobotIdUseCase(get<_i48.AppViamStore>()));
  gh.factory<_i93.SplashCubit>(() =>
      _i93.SplashCubit(get<_i54.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i94.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i94.SubscribeToTokenExpiredStreamUseCase(
          get<_i23.TokenExpiredBroadcaster>()));
  gh.factory<_i95.ViamAppCameraService>(() => _i96.ViamAppCameraServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i51.CameraDataSource>(),
        get<_i35.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i97.ViamAppResourceService>(() => _i98.ViamAppResourceServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i88.ResourceDataSource>(),
      ));
  gh.lazySingleton<_i99.ViamDataService>(() => _i100.ViamDataServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i63.DataViamDataSource>(),
      ));
  gh.factory<_i101.BoatService>(() => _i102.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i61.CurrentBoatStore>(),
      ));
  gh.factory<_i103.ChangeBoatNameUseCase>(
      () => _i103.ChangeBoatNameUseCase(get<_i101.BoatService>()));
  gh.factory<_i104.CheckConnectionUseCase>(
      () => _i104.CheckConnectionUseCase(get<_i101.BoatService>()));
  gh.factory<_i105.ConnectToViamAppUseCase>(
      () => _i105.ConnectToViamAppUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i106.DeleteBoatUseCase>(
      () => _i106.DeleteBoatUseCase(get<_i101.BoatService>()));
  gh.factory<_i107.GetBinaryDataByFilterUseCase>(
      () => _i107.GetBinaryDataByFilterUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i108.GetBoatsUseCase>(
      () => _i108.GetBoatsUseCase(get<_i101.BoatService>()));
  gh.factory<_i109.GetCameraDataUseCase>(
      () => _i109.GetCameraDataUseCase(get<_i95.ViamAppCameraService>()));
  gh.factory<_i110.GetCameraPermissionStatusUseCase>(() =>
      _i110.GetCameraPermissionStatusUseCase(get<_i85.PermissionsService>()));
  gh.factory<_i111.GetCameraVideoUseCase>(
      () => _i111.GetCameraVideoUseCase(get<_i95.ViamAppCameraService>()));
  gh.factory<_i112.GetCurrentBoatIdUseCase>(
      () => _i112.GetCurrentBoatIdUseCase(get<_i101.BoatService>()));
  gh.factory<_i113.GetCurrentWaterFiltersUseCase>(
      () => _i113.GetCurrentWaterFiltersUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i114.GetDepthOverTimeDataUseCase>(
      () => _i114.GetDepthOverTimeDataUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i115.GetFuelConsumptionOverTimeDataUseCase>(() =>
      _i115.GetFuelConsumptionOverTimeDataUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i116.GetFuelConsumptionPerMileDataUseCase>(() =>
      _i116.GetFuelConsumptionPerMileDataUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i117.GetResourceNamesUseCase>(
      () => _i117.GetResourceNamesUseCase(get<_i97.ViamAppResourceService>()));
  gh.factory<_i118.GetTabularDataByFilterUseCase>(
      () => _i118.GetTabularDataByFilterUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i119.GetWaterDepthDataUseCase>(
      () => _i119.GetWaterDepthDataUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i120.GetWaterTemperatureDataUseCase>(
      () => _i120.GetWaterTemperatureDataUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i121.MainCubit>(() => _i121.MainCubit(
        get<_i117.GetResourceNamesUseCase>(),
        get<_i78.GetTokenOrNullUseCase>(),
        get<_i94.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i58.ClearCacheUseCase>(),
        get<_i60.ConnectToRobotUseCase>(),
      ));
  gh.factory<_i122.RemoveCurrentBoatIdUseCase>(
      () => _i122.RemoveCurrentBoatIdUseCase(get<_i101.BoatService>()));
  gh.factory<_i123.SetCurrentBoatIdUseCase>(
      () => _i123.SetCurrentBoatIdUseCase(get<_i101.BoatService>()));
  gh.factory<_i124.SetDepthOverTimeFiltersUseCase>(
      () => _i124.SetDepthOverTimeFiltersUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i125.SetWaterDepthFiltersUseCase>(
      () => _i125.SetWaterDepthFiltersUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i126.SetWaterTemperatureFiltersUseCase>(() =>
      _i126.SetWaterTemperatureFiltersUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i127.SettingsCubit>(() => _i127.SettingsCubit(
        get<_i108.GetBoatsUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i55.ChoosePhotoForBoatUseCase>(),
        get<_i53.CapturePhotoForBoatUseCase>(),
        get<_i83.LogoutUseCase>(),
        get<_i58.ClearCacheUseCase>(),
      ));
  gh.factory<_i128.SubscribeToCameraStreamUseCase>(() =>
      _i128.SubscribeToCameraStreamUseCase(get<_i95.ViamAppCameraService>()));
  gh.factory<_i129.SubscribeToRefreshFiltersUseCase>(() =>
      _i129.SubscribeToRefreshFiltersUseCase(get<_i99.ViamDataService>()));
  gh.factory<_i130.WaterDepthCubit>(() => _i130.WaterDepthCubit(
        get<_i119.GetWaterDepthDataUseCase>(),
        get<_i129.SubscribeToRefreshFiltersUseCase>(),
        get<_i125.SetWaterDepthFiltersUseCase>(),
      ));
  gh.factory<_i131.WaterDepthCubit>(() => _i131.WaterDepthCubit(
        get<_i119.GetWaterDepthDataUseCase>(),
        get<_i129.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i132.WaterTemperatureCubit>(() => _i132.WaterTemperatureCubit(
        get<_i120.GetWaterTemperatureDataUseCase>(),
        get<_i129.SubscribeToRefreshFiltersUseCase>(),
        get<_i126.SetWaterTemperatureFiltersUseCase>(),
      ));
  gh.factory<_i133.WaterTemperatureCubit>(() => _i133.WaterTemperatureCubit(
        get<_i120.GetWaterTemperatureDataUseCase>(),
        get<_i129.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i134.WebrtcCameraCubit>(() => _i134.WebrtcCameraCubit(
        get<_i111.GetCameraVideoUseCase>(),
        get<_i128.SubscribeToCameraStreamUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i135.AddNewBoatUseCase>(
      () => _i135.AddNewBoatUseCase(get<_i101.BoatService>()));
  gh.factory<_i136.AnalyticsCubit>(() => _i136.AnalyticsCubit(
        get<_i105.ConnectToViamAppUseCase>(),
        get<_i78.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i137.BoatListCubit>(() => _i137.BoatListCubit(
        get<_i108.GetBoatsUseCase>(),
        get<_i112.GetCurrentBoatIdUseCase>(),
        get<_i123.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i138.CameraTileCubit>(
      () => _i138.CameraTileCubit(get<_i109.GetCameraDataUseCase>()));
  gh.factory<_i139.ChangeBoatNameCubit>(() => _i139.ChangeBoatNameCubit(
        get<_i103.ChangeBoatNameUseCase>(),
        get<_i15.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i140.ConnectionErrorCubit>(() => _i140.ConnectionErrorCubit(
        get<_i60.ConnectToRobotUseCase>(),
        get<_i135.AddNewBoatUseCase>(),
        get<_i108.GetBoatsUseCase>(),
        get<_i69.GetMainPartAddressUseCase>(),
      ));
  gh.factory<_i141.DashboardCubit>(() => _i141.DashboardCubit(
        get<_i108.GetBoatsUseCase>(),
        get<_i112.GetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i142.DepthOverTimeCubit>(() => _i142.DepthOverTimeCubit(
        get<_i114.GetDepthOverTimeDataUseCase>(),
        get<_i129.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i143.DepthOverTimePageCubit>(() => _i143.DepthOverTimePageCubit(
        get<_i114.GetDepthOverTimeDataUseCase>(),
        get<_i129.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i144.FiltersCubit>(() => _i144.FiltersCubit(
        get<_i113.GetCurrentWaterFiltersUseCase>(),
        get<_i125.SetWaterDepthFiltersUseCase>(),
        get<_i126.SetWaterTemperatureFiltersUseCase>(),
        get<_i124.SetDepthOverTimeFiltersUseCase>(),
      ));
  gh.factory<_i145.FuelConsumptionOverTimeCubit>(() =>
      _i145.FuelConsumptionOverTimeCubit(
          get<_i115.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i146.FuelConsumptionOverTimePageCubit>(() =>
      _i146.FuelConsumptionOverTimePageCubit(
          get<_i115.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i147.FuelConsumptionPerMileCubit>(() =>
      _i147.FuelConsumptionPerMileCubit(
          get<_i116.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i148.FuelConsumptionPerMilePageCubit>(() =>
      _i148.FuelConsumptionPerMilePageCubit(
          get<_i116.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i149.SelectRobotCubit>(() => _i149.SelectRobotCubit(
        get<_i135.AddNewBoatUseCase>(),
        get<_i60.ConnectToRobotUseCase>(),
        get<_i108.GetBoatsUseCase>(),
        get<_i66.GetLocationIdUseCase>(),
        get<_i68.GetLocationsUseCase>(),
        get<_i70.GetOrganizationIdUseCase>(),
        get<_i72.GetOrganizationsListUseCase>(),
        get<_i69.GetMainPartAddressUseCase>(),
        get<_i74.GetRobotIdUseCase>(),
        get<_i76.GetRobotsUseCase>(),
        get<_i78.GetTokenOrNullUseCase>(),
        get<_i90.SetLocationIdUseCase>(),
        get<_i91.SetOrganizationIdUseCase>(),
        get<_i92.SetRobotIdUseCase>(),
        get<_i94.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i58.ClearCacheUseCase>(),
        get<_i83.LogoutUseCase>(),
        get<_i59.ConnectAppServiceClinetUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i150.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i151.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i152.NavigatorKeyModule {}

class _$ImagePickerModule extends _i153.ImagePickerModule {}

class _$CameraPermissionModule extends _i154.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i155.SharedPreferencesModule {}

class _$UuidModule extends _i156.UuidModule {}

class _$ViamSdkDirectDataClientModule
    extends _i157.ViamSdkDirectDataClientModule {}

class _$ViamSdkModule extends _i157.ViamSdkModule {}
