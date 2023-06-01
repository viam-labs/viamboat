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
import '../data/boat/service/boat_service_impl.dart' as _i96;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i57;
import '../data/camera/data_source/camera_api_data_source.dart' as _i46;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i29;
import '../data/camera/service/camera_service_impl.dart' as _i86;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i52;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i58;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i94;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i27;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i31;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import '../data/movement/service/movement_service_impl.dart' as _i88;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i47;
import '../data/permissions/service/permissions_service_impl.dart' as _i76;
import '../data/resource/data_source/resource_api_data_source.dart' as _i78;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i33;
import '../data/resource/service/resource_service_impl.dart' as _i90;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i79;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i34;
import '../data/sensor/service/sensor_service_impl.dart' as _i92;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i22;
import '../data/viam/data_source/viam_data_source.dart' as _i30;
import '../data/viam/service/viam_service_impl.dart' as _i36;
import '../data/viam/store/token_box.dart' as _i20;
import '../data/viam/store/token_store_impl.dart' as _i24;
import '../domain/analytics/service/analytics_service.dart' as _i38;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i70;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i71;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i72;
import '../domain/app_viam/service/app_viam_service.dart' as _i41;
import '../domain/app_viam/store/app_viam_store.dart' as _i43;
import '../domain/app_viam/usecase/connect_app_service_client_use_case.dart'
    as _i54;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i59;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i60;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i61;
import '../domain/app_viam/usecase/get_main_part_address_use_case.dart' as _i62;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i63;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i64;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i67;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i68;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i65;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i80;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i81;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i82;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i95;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i56;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i134;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i97;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i98;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i100;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i102;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i106;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i120;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i122;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i19;
import '../domain/camera/service/camera_service.dart' as _i85;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i103;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i105;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i127;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i51;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i53;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/data_viam/service/viam_data_service.dart' as _i93;
import '../domain/data_viam/use_case/connect_to_viam_app_use_case.dart' as _i99;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i101;
import '../domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i107;
import '../domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i108;
import '../domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart'
    as _i109;
import '../domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i110;
import '../domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart'
    as _i115;
import '../domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i116;
import '../domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i117;
import '../domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i123;
import '../domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i124;
import '../domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i125;
import '../domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i128;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i48;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i50;
import '../domain/movement/service/movement_service.dart' as _i87;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i111;
import '../domain/movement/usecase/get_position_use_case.dart' as _i112;
import '../domain/permissions/service/permissions_service.dart' as _i75;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i104;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i77;
import '../domain/resource/service/resource_service.dart' as _i89;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i113;
import '../domain/sensor/service/sensor_service_impl.dart' as _i91;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i114;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i21;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i84;
import '../domain/viam/service/viam_service.dart' as _i35;
import '../domain/viam/store/token_store.dart' as _i23;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i45;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i49;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i55;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i69;
import '../domain/viam/usecase/logout_use_case.dart' as _i74;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i135;
import '../presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i141;
import '../presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i144;
import '../presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i146;
import '../presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i130;
import '../presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i132;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i136;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i133;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i138;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i139;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i140;
import '../presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i142;
import '../presentation/page/filters/cubit/filters_cubit.dart' as _i143;
import '../presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i145;
import '../presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i147;
import '../presentation/page/login/cubit/login_page_cubit.dart' as _i73;
import '../presentation/page/main/cubit/main_cubit.dart' as _i118;
import '../presentation/page/map/cubit/map_cubit.dart' as _i119;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i17;
import '../presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i148;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i126;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i83;
import '../presentation/page/water_depth/cubit/water_depth_cubit.dart' as _i129;
import '../presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i131;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i137;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i121;
import 'camera_permission_injectable.dart' as _i153;
import 'file_picker_injectable.dart' as _i149;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i150;
import 'image_picker_injectable.dart' as _i152;
import 'navigator_key_injectable.dart' as _i151;
import 'shared_preferences_injectable.dart' as _i154;
import 'uuid_injectable.dart' as _i155;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i156;

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
  gh.factory<_i40.AppViamDataSource>(() =>
      _i40.AppViamDataSource(get<_i26.Viam>(instanceName: 'directDataClient')));
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
  gh.factory<_i54.ConnectAppServiceClinetUseCase>(
      () => _i54.ConnectAppServiceClinetUseCase(get<_i41.AppViamService>()));
  gh.factory<_i55.ConnectToRobotUseCase>(
      () => _i55.ConnectToRobotUseCase(get<_i35.ViamService>()));
  gh.factory<_i56.CurrentBoatStore>(() =>
      _i57.SharedPreferencesCurrentBoatStore(get<_i18.SharedPreferences>()));
  gh.factory<_i58.DataViamDataSource>(() => _i58.DataViamDataSource(
      get<_i26.Viam>(instanceName: 'directDataClient')));
  gh.factory<_i59.GetLocationIdUseCase>(
      () => _i59.GetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i60.GetLocationUseCase>(
      () => _i60.GetLocationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i61.GetLocationsUseCase>(
      () => _i61.GetLocationsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i62.GetMainPartAddressUseCase>(
      () => _i62.GetMainPartAddressUseCase(get<_i41.AppViamService>()));
  gh.factory<_i63.GetOrganizationIdUseCase>(
      () => _i63.GetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i64.GetOrganizationUseCase>(
      () => _i64.GetOrganizationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i65.GetOrganizationsListUseCase>(
      () => _i65.GetOrganizationsListUseCase(get<_i41.AppViamService>()));
  gh.factory<_i66.GetRobotIdUseCase>(
      () => _i66.GetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i67.GetRobotUseCase>(
      () => _i67.GetRobotUseCase(get<_i41.AppViamService>()));
  gh.factory<_i68.GetRobotsUseCase>(
      () => _i68.GetRobotsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i69.GetTokenOrNullUseCase>(
      () => _i69.GetTokenOrNullUseCase(get<_i23.TokenStore>()));
  gh.factory<_i70.LogAddBoatEventUseCase>(
      () => _i70.LogAddBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i71.LogDeleteBoatEventUseCase>(
      () => _i71.LogDeleteBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i72.LogOpenAppEventUseCase>(
      () => _i72.LogOpenAppEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i73.LoginPageCubit>(
      () => _i73.LoginPageCubit(get<_i45.AuthenticateUseCase>()));
  gh.factory<_i74.LogoutUseCase>(
      () => _i74.LogoutUseCase(get<_i35.ViamService>()));
  gh.lazySingleton<_i75.PermissionsService>(() =>
      _i76.PermissionsServiceImpl(get<_i47.CameraPermissionDataSource>()));
  gh.factory<_i77.RequestCameraPermissionUseCase>(() =>
      _i77.RequestCameraPermissionUseCase(get<_i75.PermissionsService>()));
  gh.factory<_i78.ResourceDataSource>(
      () => _i78.ResourceDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i79.SensorDataSource>(
      () => _i79.SensorDataSource(get<_i26.Viam>(instanceName: 'viamSdk')));
  gh.factory<_i80.SetLocationIdUseCase>(
      () => _i80.SetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i81.SetOrganizationIdUseCase>(
      () => _i81.SetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i82.SetRobotIdUseCase>(
      () => _i82.SetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i83.SplashCubit>(() =>
      _i83.SplashCubit(get<_i49.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i84.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i84.SubscribeToTokenExpiredStreamUseCase(
          get<_i21.TokenExpiredBroadcaster>()));
  gh.factory<_i85.ViamAppCameraService>(() => _i86.ViamAppCameraServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i46.CameraDataSource>(),
        get<_i29.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i87.ViamAppMovementService>(() => _i88.ViamAppMovementServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i27.ViamAppMovementSdkDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i32.ViamPositionToViamAppPositionMapper>(),
        get<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i89.ViamAppResourceService>(() => _i90.ViamAppResourceServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i78.ResourceDataSource>(),
        get<_i33.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i91.ViamAppSensorService>(() => _i92.ViamAppSensorServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i79.SensorDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i93.ViamDataService>(() => _i94.ViamDataServiceImpl(
        get<_i21.TokenExpiredBroadcaster>(),
        get<_i58.DataViamDataSource>(),
      ));
  gh.factory<_i95.BoatService>(() => _i96.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i56.CurrentBoatStore>(),
      ));
  gh.factory<_i97.ChangeBoatNameUseCase>(
      () => _i97.ChangeBoatNameUseCase(get<_i95.BoatService>()));
  gh.factory<_i98.CheckConnectionUseCase>(
      () => _i98.CheckConnectionUseCase(get<_i95.BoatService>()));
  gh.factory<_i99.ConnectToViamAppUseCase>(
      () => _i99.ConnectToViamAppUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i100.DeleteBoatUseCase>(
      () => _i100.DeleteBoatUseCase(get<_i95.BoatService>()));
  gh.factory<_i101.GetBinaryDataByFilterUseCase>(
      () => _i101.GetBinaryDataByFilterUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i102.GetBoatsUseCase>(
      () => _i102.GetBoatsUseCase(get<_i95.BoatService>()));
  gh.factory<_i103.GetCameraDataUseCase>(
      () => _i103.GetCameraDataUseCase(get<_i85.ViamAppCameraService>()));
  gh.factory<_i104.GetCameraPermissionStatusUseCase>(() =>
      _i104.GetCameraPermissionStatusUseCase(get<_i75.PermissionsService>()));
  gh.factory<_i105.GetCameraVideoUseCase>(
      () => _i105.GetCameraVideoUseCase(get<_i85.ViamAppCameraService>()));
  gh.factory<_i106.GetCurrentBoatIdUseCase>(
      () => _i106.GetCurrentBoatIdUseCase(get<_i95.BoatService>()));
  gh.factory<_i107.GetCurrentWaterFiltersUseCase>(
      () => _i107.GetCurrentWaterFiltersUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i108.GetDepthOverTimeDataUseCase>(
      () => _i108.GetDepthOverTimeDataUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i109.GetFuelConsumptionOverTimeDataUseCase>(() =>
      _i109.GetFuelConsumptionOverTimeDataUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i110.GetFuelConsumptionPerMileDataUseCase>(() =>
      _i110.GetFuelConsumptionPerMileDataUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i111.GetLinearVelocityUseCase>(
      () => _i111.GetLinearVelocityUseCase(get<_i87.ViamAppMovementService>()));
  gh.factory<_i112.GetPostionUseCase>(
      () => _i112.GetPostionUseCase(get<_i87.ViamAppMovementService>()));
  gh.factory<_i113.GetResourceNamesUseCase>(
      () => _i113.GetResourceNamesUseCase(get<_i89.ViamAppResourceService>()));
  gh.factory<_i114.GetSensorDataUseCase>(
      () => _i114.GetSensorDataUseCase(get<_i91.ViamAppSensorService>()));
  gh.factory<_i115.GetTabularDataByFilterUseCase>(
      () => _i115.GetTabularDataByFilterUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i116.GetWaterDepthDataUseCase>(
      () => _i116.GetWaterDepthDataUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i117.GetWaterTemperatureDataUseCase>(
      () => _i117.GetWaterTemperatureDataUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i118.MainCubit>(() => _i118.MainCubit(
        get<_i113.GetResourceNamesUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i84.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i53.ClearCacheUseCase>(),
        get<_i55.ConnectToRobotUseCase>(),
      ));
  gh.factory<_i119.MapCubit>(() => _i119.MapCubit(
        get<_i112.GetPostionUseCase>(),
        get<_i114.GetSensorDataUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i120.RemoveCurrentBoatIdUseCase>(
      () => _i120.RemoveCurrentBoatIdUseCase(get<_i95.BoatService>()));
  gh.factory<_i121.SensorTileCubit>(() => _i121.SensorTileCubit(
        get<_i114.GetSensorDataUseCase>(),
        get<_i111.GetLinearVelocityUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i122.SetCurrentBoatIdUseCase>(
      () => _i122.SetCurrentBoatIdUseCase(get<_i95.BoatService>()));
  gh.factory<_i123.SetDepthOverTimeFiltersUseCase>(
      () => _i123.SetDepthOverTimeFiltersUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i124.SetWaterDepthFiltersUseCase>(
      () => _i124.SetWaterDepthFiltersUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i125.SetWaterTemperatureFiltersUseCase>(() =>
      _i125.SetWaterTemperatureFiltersUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i126.SettingsCubit>(() => _i126.SettingsCubit(
        get<_i102.GetBoatsUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i50.ChoosePhotoForBoatUseCase>(),
        get<_i48.CapturePhotoForBoatUseCase>(),
        get<_i74.LogoutUseCase>(),
        get<_i53.ClearCacheUseCase>(),
      ));
  gh.factory<_i127.SubscribeToCameraStreamUseCase>(() =>
      _i127.SubscribeToCameraStreamUseCase(get<_i85.ViamAppCameraService>()));
  gh.factory<_i128.SubscribeToRefreshFiltersUseCase>(() =>
      _i128.SubscribeToRefreshFiltersUseCase(get<_i93.ViamDataService>()));
  gh.factory<_i129.WaterDepthCubit>(() => _i129.WaterDepthCubit(
        get<_i116.GetWaterDepthDataUseCase>(),
        get<_i128.SubscribeToRefreshFiltersUseCase>(),
        get<_i124.SetWaterDepthFiltersUseCase>(),
      ));
  gh.factory<_i130.WaterDepthCubit>(() => _i130.WaterDepthCubit(
        get<_i116.GetWaterDepthDataUseCase>(),
        get<_i128.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i131.WaterTemperatureCubit>(() => _i131.WaterTemperatureCubit(
        get<_i117.GetWaterTemperatureDataUseCase>(),
        get<_i128.SubscribeToRefreshFiltersUseCase>(),
        get<_i125.SetWaterTemperatureFiltersUseCase>(),
      ));
  gh.factory<_i132.WaterTemperatureCubit>(() => _i132.WaterTemperatureCubit(
        get<_i117.GetWaterTemperatureDataUseCase>(),
        get<_i128.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i133.WebrtcCameraCubit>(() => _i133.WebrtcCameraCubit(
        get<_i105.GetCameraVideoUseCase>(),
        get<_i127.SubscribeToCameraStreamUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i134.AddNewBoatUseCase>(
      () => _i134.AddNewBoatUseCase(get<_i95.BoatService>()));
  gh.factory<_i135.AnalyticsCubit>(() => _i135.AnalyticsCubit(
        get<_i99.ConnectToViamAppUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i136.BoatListCubit>(() => _i136.BoatListCubit(
        get<_i102.GetBoatsUseCase>(),
        get<_i106.GetCurrentBoatIdUseCase>(),
        get<_i122.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i137.CameraTileCubit>(
      () => _i137.CameraTileCubit(get<_i103.GetCameraDataUseCase>()));
  gh.factory<_i138.ChangeBoatNameCubit>(() => _i138.ChangeBoatNameCubit(
        get<_i97.ChangeBoatNameUseCase>(),
        get<_i15.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i139.ConnectionErrorCubit>(() => _i139.ConnectionErrorCubit(
        get<_i55.ConnectToRobotUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i134.AddNewBoatUseCase>(),
        get<_i102.GetBoatsUseCase>(),
        get<_i62.GetMainPartAddressUseCase>(),
      ));
  gh.factory<_i140.DashboardCubit>(() => _i140.DashboardCubit(
        get<_i102.GetBoatsUseCase>(),
        get<_i106.GetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i141.DepthOverTimeCubit>(
      () => _i141.DepthOverTimeCubit(get<_i108.GetDepthOverTimeDataUseCase>()));
  gh.factory<_i142.DepthOverTimePageCubit>(() => _i142.DepthOverTimePageCubit(
        get<_i108.GetDepthOverTimeDataUseCase>(),
        get<_i128.SubscribeToRefreshFiltersUseCase>(),
      ));
  gh.factory<_i143.FiltersCubit>(() => _i143.FiltersCubit(
        get<_i107.GetCurrentWaterFiltersUseCase>(),
        get<_i124.SetWaterDepthFiltersUseCase>(),
        get<_i125.SetWaterTemperatureFiltersUseCase>(),
        get<_i123.SetDepthOverTimeFiltersUseCase>(),
      ));
  gh.factory<_i144.FuelConsumptionOverTimeCubit>(() =>
      _i144.FuelConsumptionOverTimeCubit(
          get<_i109.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i145.FuelConsumptionOverTimePageCubit>(() =>
      _i145.FuelConsumptionOverTimePageCubit(
          get<_i109.GetFuelConsumptionOverTimeDataUseCase>()));
  gh.factory<_i146.FuelConsumptionPerMileCubit>(() =>
      _i146.FuelConsumptionPerMileCubit(
          get<_i110.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i147.FuelConsumptionPerMilePageCubit>(() =>
      _i147.FuelConsumptionPerMilePageCubit(
          get<_i110.GetFuelConsumptionPerMileDataUseCase>()));
  gh.factory<_i148.SelectRobotCubit>(() => _i148.SelectRobotCubit(
        get<_i134.AddNewBoatUseCase>(),
        get<_i55.ConnectToRobotUseCase>(),
        get<_i102.GetBoatsUseCase>(),
        get<_i59.GetLocationIdUseCase>(),
        get<_i61.GetLocationsUseCase>(),
        get<_i63.GetOrganizationIdUseCase>(),
        get<_i65.GetOrganizationsListUseCase>(),
        get<_i62.GetMainPartAddressUseCase>(),
        get<_i66.GetRobotIdUseCase>(),
        get<_i68.GetRobotsUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i80.SetLocationIdUseCase>(),
        get<_i81.SetOrganizationIdUseCase>(),
        get<_i82.SetRobotIdUseCase>(),
        get<_i84.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i53.ClearCacheUseCase>(),
        get<_i74.LogoutUseCase>(),
        get<_i54.ConnectAppServiceClinetUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i149.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i150.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i151.NavigatorKeyModule {}

class _$ImagePickerModule extends _i152.ImagePickerModule {}

class _$CameraPermissionModule extends _i153.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i154.SharedPreferencesModule {}

class _$UuidModule extends _i155.UuidModule {}

class _$ViamSdkDirectDataClientModule
    extends _i156.ViamSdkDirectDataClientModule {}

class _$ViamSdkModule extends _i156.ViamSdkModule {}
