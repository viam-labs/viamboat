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

import '../data/analytics/data_sink/analytics_data_sink.dart' as _i39;
import '../data/analytics/service/analytics_service_impl.dart' as _i41;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i42;
import '../data/app_viam/service/app_viam_service.dart' as _i44;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i46;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i95;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i58;
import '../data/camera/data_source/camera_api_data_source.dart' as _i48;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i31;
import '../data/camera/service/camera_service_impl.dart' as _i85;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i54;
import '../data/data_viam/data_source/data_viam_data_source.dart' as _i59;
import '../data/data_viam/service/viam_data_service_impl.dart' as _i93;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i14;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i16;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i29;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i33;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i34;
import '../data/movement/service/movement_service_impl.dart' as _i87;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i49;
import '../data/permissions/service/permissions_service_impl.dart' as _i75;
import '../data/resource/data_source/resource_api_data_source.dart' as _i77;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i30;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i35;
import '../data/resource/service/resource_service_impl.dart' as _i89;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i78;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i36;
import '../data/sensor/service/sensor_service_impl.dart' as _i91;
import '../data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i24;
import '../data/viam/data_source/viam_data_source.dart' as _i32;
import '../data/viam/service/viam_service_impl.dart' as _i38;
import '../data/viam/store/token_box.dart' as _i22;
import '../data/viam/store/token_store_impl.dart' as _i26;
import '../domain/analytics/service/analytics_service.dart' as _i40;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i70;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i71;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i72;
import '../domain/app_viam/service/app_viam_service.dart' as _i43;
import '../domain/app_viam/store/app_viam_store.dart' as _i45;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i60;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i61;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i62;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i63;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i64;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i66;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i67;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i68;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i65;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i79;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i80;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i81;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i94;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i57;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i118;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i96;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i97;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i98;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i100;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i104;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i17;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i112;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i114;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i21;
import '../domain/camera/service/camera_service.dart' as _i84;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i101;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i103;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i116;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i53;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i55;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/data_viam/service/viam_data_service.dart' as _i92;
import '../domain/data_viam/use_case/get_binary_data_by_filter_use_case.dart'
    as _i99;
import '../domain/local_photo/service/local_photo_service.dart' as _i15;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i50;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i52;
import '../domain/movement/service/movement_service.dart' as _i86;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i105;
import '../domain/movement/usecase/get_position_use_case.dart' as _i106;
import '../domain/permissions/service/permissions_service.dart' as _i74;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i102;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i76;
import '../domain/resource/service/resource_service.dart' as _i88;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i107;
import '../domain/sensor/service/sensor_service_impl.dart' as _i90;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i108;
import '../domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i23;
import '../domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i83;
import '../domain/viam/service/viam_service.dart' as _i37;
import '../domain/viam/store/token_store.dart' as _i25;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i47;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i51;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i56;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i11;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i69;
import '../domain/viam/usecase/logout_use_case.dart' as _i73;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i125;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i119;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i117;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i121;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i122;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i123;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i124;
import '../presentation/page/main/cubit/main_cubit.dart' as _i109;
import '../presentation/page/map/cubit/map_cubit.dart' as _i110;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i111;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i19;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i115;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i82;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i120;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i113;
import 'camera_permission_injectable.dart' as _i130;
import 'file_picker_injectable.dart' as _i126;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i127;
import 'image_picker_injectable.dart' as _i129;
import 'navigator_key_injectable.dart' as _i128;
import 'shared_preferences_injectable.dart' as _i131;
import 'uuid_injectable.dart' as _i132;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i133;

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
  gh.factory<_i39.AnalyticsDataSink>(
      () => _i39.AnalyticsDataSinkImpl(get<_i9.FirebaseAnalytics>()));
  gh.factory<_i40.AnalyticsService>(
      () => _i41.AnalyticsServiceImpl(get<_i39.AnalyticsDataSink>()));
  gh.factory<_i42.AppViamDataSource>(
      () => _i42.AppViamDataSource(get<_i28.Viam>()));
  gh.lazySingleton<_i43.AppViamService>(() => _i44.AppViamServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i42.AppViamDataSource>(),
      ));
  gh.factory<_i45.AppViamStore>(
      () => _i46.SharedPreferencesAppViamStore(get<_i20.SharedPreferences>()));
  gh.factory<_i47.AuthenticateUseCase>(
      () => _i47.AuthenticateUseCase(get<_i37.ViamService>()));
  gh.factory<_i48.CameraDataSource>(
      () => _i48.CameraDataSource(get<_i28.Viam>()));
  gh.factory<_i49.CameraPermissionDataSource>(
      () => _i49.CameraPermissionDataSource(get<_i18.Permission>()));
  gh.factory<_i50.CapturePhotoForBoatUseCase>(
      () => _i50.CapturePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i51.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i51.CheckIfHasTokenAndRefreshTokenUseCase(get<_i25.TokenStore>()));
  gh.factory<_i52.ChoosePhotoForBoatUseCase>(
      () => _i52.ChoosePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i53.ClearCacheService>(() => _i54.ClearCacheServiceImpl(
        get<_i25.TokenStore>(),
        get<_i45.AppViamStore>(),
      ));
  gh.factory<_i55.ClearCacheUseCase>(
      () => _i55.ClearCacheUseCase(get<_i53.ClearCacheService>()));
  gh.factory<_i56.ConnectToRobotUseCase>(
      () => _i56.ConnectToRobotUseCase(get<_i37.ViamService>()));
  gh.factory<_i57.CurrentBoatStore>(() =>
      _i58.SharedPreferencesCurrentBoatStore(get<_i20.SharedPreferences>()));
  gh.factory<_i59.DataViamDataSource>(
      () => _i59.DataViamDataSource(get<_i28.Viam>()));
  gh.factory<_i60.GetLocationIdUseCase>(
      () => _i60.GetLocationIdUseCase(get<_i45.AppViamStore>()));
  gh.factory<_i61.GetLocationUseCase>(
      () => _i61.GetLocationUseCase(get<_i43.AppViamService>()));
  gh.factory<_i62.GetLocationsUseCase>(
      () => _i62.GetLocationsUseCase(get<_i43.AppViamService>()));
  gh.factory<_i63.GetOrganizationIdUseCase>(
      () => _i63.GetOrganizationIdUseCase(get<_i45.AppViamStore>()));
  gh.factory<_i64.GetOrganizationUseCase>(
      () => _i64.GetOrganizationUseCase(get<_i43.AppViamService>()));
  gh.factory<_i65.GetOrganizationsListUseCase>(
      () => _i65.GetOrganizationsListUseCase(get<_i43.AppViamService>()));
  gh.factory<_i66.GetRobotIdUseCase>(
      () => _i66.GetRobotIdUseCase(get<_i45.AppViamStore>()));
  gh.factory<_i67.GetRobotUseCase>(
      () => _i67.GetRobotUseCase(get<_i43.AppViamService>()));
  gh.factory<_i68.GetRobotsUseCase>(
      () => _i68.GetRobotsUseCase(get<_i43.AppViamService>()));
  gh.factory<_i69.GetTokenOrNullUseCase>(
      () => _i69.GetTokenOrNullUseCase(get<_i25.TokenStore>()));
  gh.factory<_i70.LogAddBoatEventUseCase>(
      () => _i70.LogAddBoatEventUseCase(get<_i40.AnalyticsService>()));
  gh.factory<_i71.LogDeleteBoatEventUseCase>(
      () => _i71.LogDeleteBoatEventUseCase(get<_i40.AnalyticsService>()));
  gh.factory<_i72.LogOpenAppEventUseCase>(
      () => _i72.LogOpenAppEventUseCase(get<_i40.AnalyticsService>()));
  gh.factory<_i73.LogoutUseCase>(
      () => _i73.LogoutUseCase(get<_i37.ViamService>()));
  gh.lazySingleton<_i74.PermissionsService>(() =>
      _i75.PermissionsServiceImpl(get<_i49.CameraPermissionDataSource>()));
  gh.factory<_i76.RequestCameraPermissionUseCase>(() =>
      _i76.RequestCameraPermissionUseCase(get<_i74.PermissionsService>()));
  gh.factory<_i77.ResourceDataSource>(
      () => _i77.ResourceDataSource(get<_i28.Viam>()));
  gh.factory<_i78.SensorDataSource>(
      () => _i78.SensorDataSource(get<_i28.Viam>()));
  gh.factory<_i79.SetLocationIdUseCase>(
      () => _i79.SetLocationIdUseCase(get<_i45.AppViamStore>()));
  gh.factory<_i80.SetOrganizationIdUseCase>(
      () => _i80.SetOrganizationIdUseCase(get<_i45.AppViamStore>()));
  gh.factory<_i81.SetRobotIdUseCase>(
      () => _i81.SetRobotIdUseCase(get<_i45.AppViamStore>()));
  gh.factory<_i82.SplashCubit>(() =>
      _i82.SplashCubit(get<_i51.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i83.SubscribeToTokenExpiredStreamUseCase>(() =>
      _i83.SubscribeToTokenExpiredStreamUseCase(
          get<_i23.TokenExpiredBroadcaster>()));
  gh.factory<_i84.ViamAppCameraService>(() => _i85.ViamAppCameraServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i48.CameraDataSource>(),
        get<_i31.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i86.ViamAppMovementService>(() => _i87.ViamAppMovementServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i29.ViamAppMovementSdkDataSource>(),
        get<_i30.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamPositionToViamAppPositionMapper>(),
        get<_i33.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i88.ViamAppResourceService>(() => _i89.ViamAppResourceServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i77.ResourceDataSource>(),
        get<_i35.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i90.ViamAppSensorService>(() => _i91.ViamAppSensorServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i78.SensorDataSource>(),
        get<_i30.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i36.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.lazySingleton<_i92.ViamDataService>(() => _i93.ViamDataServiceImpl(
        get<_i23.TokenExpiredBroadcaster>(),
        get<_i59.DataViamDataSource>(),
      ));
  gh.factory<_i94.BoatService>(() => _i95.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i57.CurrentBoatStore>(),
      ));
  gh.factory<_i96.ChangeBoatNameUseCase>(
      () => _i96.ChangeBoatNameUseCase(get<_i94.BoatService>()));
  gh.factory<_i97.CheckConnectionUseCase>(
      () => _i97.CheckConnectionUseCase(get<_i94.BoatService>()));
  gh.factory<_i98.DeleteBoatUseCase>(
      () => _i98.DeleteBoatUseCase(get<_i94.BoatService>()));
  gh.factory<_i99.GetBinaryDataByFilterUseCase>(
      () => _i99.GetBinaryDataByFilterUseCase(get<_i92.ViamDataService>()));
  gh.factory<_i100.GetBoatsUseCase>(
      () => _i100.GetBoatsUseCase(get<_i94.BoatService>()));
  gh.factory<_i101.GetCameraDataUseCase>(
      () => _i101.GetCameraDataUseCase(get<_i84.ViamAppCameraService>()));
  gh.factory<_i102.GetCameraPermissionStatusUseCase>(() =>
      _i102.GetCameraPermissionStatusUseCase(get<_i74.PermissionsService>()));
  gh.factory<_i103.GetCameraVideoUseCase>(
      () => _i103.GetCameraVideoUseCase(get<_i84.ViamAppCameraService>()));
  gh.factory<_i104.GetCurrentBoatIdUseCase>(
      () => _i104.GetCurrentBoatIdUseCase(get<_i94.BoatService>()));
  gh.factory<_i105.GetLinearVelocityUseCase>(
      () => _i105.GetLinearVelocityUseCase(get<_i86.ViamAppMovementService>()));
  gh.factory<_i106.GetPostionUseCase>(
      () => _i106.GetPostionUseCase(get<_i86.ViamAppMovementService>()));
  gh.factory<_i107.GetResourceNamesUseCase>(
      () => _i107.GetResourceNamesUseCase(get<_i88.ViamAppResourceService>()));
  gh.factory<_i108.GetSensorDataUseCase>(
      () => _i108.GetSensorDataUseCase(get<_i90.ViamAppSensorService>()));
  gh.factory<_i109.MainCubit>(() => _i109.MainCubit(
        get<_i107.GetResourceNamesUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i83.SubscribeToTokenExpiredStreamUseCase>(),
        get<_i55.ClearCacheUseCase>(),
      ));
  gh.factory<_i110.MapCubit>(() => _i110.MapCubit(
        get<_i106.GetPostionUseCase>(),
        get<_i108.GetSensorDataUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i111.OrganizationsCubit>(() => _i111.OrganizationsCubit(
        get<_i65.GetOrganizationsListUseCase>(),
        get<_i56.ConnectToRobotUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i63.GetOrganizationIdUseCase>(),
        get<_i80.SetOrganizationIdUseCase>(),
        get<_i55.ClearCacheUseCase>(),
        get<_i73.LogoutUseCase>(),
        get<_i83.SubscribeToTokenExpiredStreamUseCase>(),
      ));
  gh.factory<_i112.RemoveCurrentBoatIdUseCase>(
      () => _i112.RemoveCurrentBoatIdUseCase(get<_i94.BoatService>()));
  gh.factory<_i113.SensorTileCubit>(() => _i113.SensorTileCubit(
        get<_i108.GetSensorDataUseCase>(),
        get<_i105.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i114.SetCurrentBoatIdUseCase>(
      () => _i114.SetCurrentBoatIdUseCase(get<_i94.BoatService>()));
  gh.factory<_i115.SettingsCubit>(() => _i115.SettingsCubit(
        get<_i100.GetBoatsUseCase>(),
        get<_i98.DeleteBoatUseCase>(),
        get<_i71.LogDeleteBoatEventUseCase>(),
        get<_i112.RemoveCurrentBoatIdUseCase>(),
        get<_i114.SetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i52.ChoosePhotoForBoatUseCase>(),
        get<_i50.CapturePhotoForBoatUseCase>(),
        get<_i73.LogoutUseCase>(),
        get<_i55.ClearCacheUseCase>(),
      ));
  gh.factory<_i116.SubscribeToCameraStreamUseCase>(() =>
      _i116.SubscribeToCameraStreamUseCase(get<_i84.ViamAppCameraService>()));
  gh.factory<_i117.WebrtcCameraCubit>(() => _i117.WebrtcCameraCubit(
        get<_i103.GetCameraVideoUseCase>(),
        get<_i116.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i118.AddNewBoatUseCase>(
      () => _i118.AddNewBoatUseCase(get<_i94.BoatService>()));
  gh.factory<_i119.BoatListCubit>(() => _i119.BoatListCubit(
        get<_i100.GetBoatsUseCase>(),
        get<_i104.GetCurrentBoatIdUseCase>(),
        get<_i114.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i120.CameraTileCubit>(
      () => _i120.CameraTileCubit(get<_i101.GetCameraDataUseCase>()));
  gh.factory<_i121.ChangeBoatNameCubit>(() => _i121.ChangeBoatNameCubit(
        get<_i96.ChangeBoatNameUseCase>(),
        get<_i17.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i122.ConnectionErrorCubit>(() => _i122.ConnectionErrorCubit(
        get<_i56.ConnectToRobotUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i118.AddNewBoatUseCase>(),
        get<_i100.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i123.DashboardCubit>(() => _i123.DashboardCubit(
        get<_i100.GetBoatsUseCase>(),
        get<_i104.GetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i124.LocationsPageCubit>(() => _i124.LocationsPageCubit(
        get<_i62.GetLocationsUseCase>(),
        get<_i118.AddNewBoatUseCase>(),
        get<_i56.ConnectToRobotUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
        get<_i100.GetBoatsUseCase>(),
        get<_i68.GetRobotsUseCase>(),
        get<_i69.GetTokenOrNullUseCase>(),
        get<_i79.SetLocationIdUseCase>(),
        get<_i66.GetRobotIdUseCase>(),
        get<_i60.GetLocationIdUseCase>(),
        get<_i81.SetRobotIdUseCase>(),
      ));
  gh.factory<_i125.AddBoatCubit>(() => _i125.AddBoatCubit(
        get<_i118.AddNewBoatUseCase>(),
        get<_i97.CheckConnectionUseCase>(),
        get<_i114.SetCurrentBoatIdUseCase>(),
        get<_i102.GetCameraPermissionStatusUseCase>(),
        get<_i76.RequestCameraPermissionUseCase>(),
        get<_i70.LogAddBoatEventUseCase>(),
        get<_i27.Uuid>(),
        get<_i100.GetBoatsUseCase>(),
        get<_i47.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i126.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i127.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i128.NavigatorKeyModule {}

class _$ImagePickerModule extends _i129.ImagePickerModule {}

class _$CameraPermissionModule extends _i130.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i131.SharedPreferencesModule {}

class _$UuidModule extends _i132.UuidModule {}

class _$ViamSdkModule extends _i133.ViamSdkModule {}
