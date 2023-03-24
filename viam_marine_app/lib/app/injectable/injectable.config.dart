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
import 'package:uuid/uuid.dart' as _i25;

import '../../sdk/viam_sdk.dart' as _i26;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i37;
import '../data/analytics/service/analytics_service_impl.dart' as _i39;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i40;
import '../data/app_viam/service/app_viam_service.dart' as _i42;
import '../data/app_viam/store/app_viam_store_impl.dart' as _i44;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i89;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i56;
import '../data/camera/data_source/camera_api_data_source.dart' as _i46;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i29;
import '../data/camera/service/camera_service_impl.dart' as _i81;
import '../data/clear_cache/service/clear_cache_service_impl.dart' as _i52;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i14;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i16;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i27;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i31;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import '../data/movement/service/movement_service_impl.dart' as _i83;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i47;
import '../data/permissions/service/permissions_service_impl.dart' as _i72;
import '../data/resource/data_source/resource_api_data_source.dart' as _i74;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i33;
import '../data/resource/service/resource_service_impl.dart' as _i85;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i75;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i34;
import '../data/sensor/service/sensor_service_impl.dart' as _i87;
import '../data/viam/data_source/viam_data_source.dart' as _i30;
import '../data/viam/service/viam_service_impl.dart' as _i36;
import '../data/viam/store/token_box.dart' as _i22;
import '../data/viam/store/token_store_impl.dart' as _i24;
import '../domain/analytics/service/analytics_service.dart' as _i38;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i67;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i68;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i69;
import '../domain/app_viam/service/app_viam_service.dart' as _i41;
import '../domain/app_viam/store/app_viam_store.dart' as _i43;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i57;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i58;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i59;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i60;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i61;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i63;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i64;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i65;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i62;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i76;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i77;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i78;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i88;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i55;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i111;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i90;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i91;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i92;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i93;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i97;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i17;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i105;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i107;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i21;
import '../domain/camera/service/camera_service.dart' as _i80;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i94;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i96;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i109;
import '../domain/clear_cache/service/clear_cache_service.dart' as _i51;
import '../domain/clear_cache/use_case/clear_cache_use_case.dart' as _i53;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/local_photo/service/local_photo_service.dart' as _i15;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i48;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i50;
import '../domain/movement/service/movement_service.dart' as _i82;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i98;
import '../domain/movement/usecase/get_position_use_case.dart' as _i99;
import '../domain/permissions/service/permissions_service.dart' as _i71;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i95;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i73;
import '../domain/resource/service/resource_service.dart' as _i84;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i100;
import '../domain/sensor/service/sensor_service_impl.dart' as _i86;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i101;
import '../domain/viam/service/viam_service.dart' as _i35;
import '../domain/viam/store/token_store.dart' as _i23;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i45;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i49;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i54;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i11;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i66;
import '../domain/viam/usecase/logout_use_case.dart' as _i70;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i118;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i112;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i110;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i114;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i115;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i116;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i117;
import '../presentation/page/main/cubit/main_cubit.dart' as _i102;
import '../presentation/page/map/cubit/map_cubit.dart' as _i103;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i104;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i19;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i108;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i79;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i113;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i106;
import 'camera_permission_injectable.dart' as _i123;
import 'file_picker_injectable.dart' as _i119;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i120;
import 'image_picker_injectable.dart' as _i122;
import 'navigator_key_injectable.dart' as _i121;
import 'shared_preferences_injectable.dart' as _i124;
import 'uuid_injectable.dart' as _i125;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i126;

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
  gh.factory<_i23.TokenStore>(() => _i24.TokenStoreImpl(get<_i22.TokenBox>()));
  gh.singleton<_i25.Uuid>(uuidModule.uuid);
  gh.singleton<_i26.Viam>(viamSdkModule.viam);
  gh.factory<_i27.ViamAppMovementSdkDataSource>(
      () => _i27.ViamAppMovementSdkDataSource(get<_i26.Viam>()));
  gh.factory<_i28.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i28.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i29.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i29.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i30.ViamDataSource>(() => _i30.ViamDataSource(get<_i26.Viam>()));
  gh.factory<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i31.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i32.ViamPositionToViamAppPositionMapper>(
      () => _i32.ViamPositionToViamAppPositionMapper());
  gh.factory<_i33.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i33.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i34.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i35.ViamService>(() => _i36.ViamServiceImpl(
        get<_i30.ViamDataSource>(),
        get<_i23.TokenStore>(),
      ));
  gh.factory<_i37.AnalyticsDataSink>(
      () => _i37.AnalyticsDataSinkImpl(get<_i9.FirebaseAnalytics>()));
  gh.factory<_i38.AnalyticsService>(
      () => _i39.AnalyticsServiceImpl(get<_i37.AnalyticsDataSink>()));
  gh.factory<_i40.AppViamDataSource>(
      () => _i40.AppViamDataSource(get<_i26.Viam>()));
  gh.lazySingleton<_i41.AppViamService>(
      () => _i42.AppViamServiceImpl(get<_i40.AppViamDataSource>()));
  gh.factory<_i43.AppViamStore>(
      () => _i44.SharedPreferencesAppViamStore(get<_i20.SharedPreferences>()));
  gh.factory<_i45.AuthenticateUseCase>(
      () => _i45.AuthenticateUseCase(get<_i35.ViamService>()));
  gh.factory<_i46.CameraDataSource>(
      () => _i46.CameraDataSource(get<_i26.Viam>()));
  gh.factory<_i47.CameraPermissionDataSource>(
      () => _i47.CameraPermissionDataSource(get<_i18.Permission>()));
  gh.factory<_i48.CapturePhotoForBoatUseCase>(
      () => _i48.CapturePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i49.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i49.CheckIfHasTokenAndRefreshTokenUseCase(get<_i23.TokenStore>()));
  gh.factory<_i50.ChoosePhotoForBoatUseCase>(
      () => _i50.ChoosePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i51.ClearCacheService>(() => _i52.ClearCacheServiceImpl(
        get<_i23.TokenStore>(),
        get<_i43.AppViamStore>(),
      ));
  gh.factory<_i53.ClearCacheUseCase>(
      () => _i53.ClearCacheUseCase(get<_i51.ClearCacheService>()));
  gh.factory<_i54.ConnectToRobotUseCase>(
      () => _i54.ConnectToRobotUseCase(get<_i35.ViamService>()));
  gh.factory<_i55.CurrentBoatStore>(() =>
      _i56.SharedPreferencesCurrentBoatStore(get<_i20.SharedPreferences>()));
  gh.factory<_i57.GetLocationIdUseCase>(
      () => _i57.GetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i58.GetLocationUseCase>(
      () => _i58.GetLocationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i59.GetLocationsUseCase>(
      () => _i59.GetLocationsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i60.GetOrganizationIdUseCase>(
      () => _i60.GetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i61.GetOrganizationUseCase>(
      () => _i61.GetOrganizationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i62.GetOrganizationsListUseCase>(
      () => _i62.GetOrganizationsListUseCase(get<_i41.AppViamService>()));
  gh.factory<_i63.GetRobotIdUseCase>(
      () => _i63.GetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i64.GetRobotUseCase>(
      () => _i64.GetRobotUseCase(get<_i41.AppViamService>()));
  gh.factory<_i65.GetRobotsUseCase>(
      () => _i65.GetRobotsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i66.GetTokenOrNullUseCase>(
      () => _i66.GetTokenOrNullUseCase(get<_i23.TokenStore>()));
  gh.factory<_i67.LogAddBoatEventUseCase>(
      () => _i67.LogAddBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i68.LogDeleteBoatEventUseCase>(
      () => _i68.LogDeleteBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i69.LogOpenAppEventUseCase>(
      () => _i69.LogOpenAppEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i70.LogoutUseCase>(
      () => _i70.LogoutUseCase(get<_i35.ViamService>()));
  gh.lazySingleton<_i71.PermissionsService>(() =>
      _i72.PermissionsServiceImpl(get<_i47.CameraPermissionDataSource>()));
  gh.factory<_i73.RequestCameraPermissionUseCase>(() =>
      _i73.RequestCameraPermissionUseCase(get<_i71.PermissionsService>()));
  gh.factory<_i74.ResourceDataSource>(
      () => _i74.ResourceDataSource(get<_i26.Viam>()));
  gh.factory<_i75.SensorDataSource>(
      () => _i75.SensorDataSource(get<_i26.Viam>()));
  gh.factory<_i76.SetLocationIdUseCase>(
      () => _i76.SetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i77.SetOrganizationIdUseCase>(
      () => _i77.SetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i78.SetRobotIdUseCase>(
      () => _i78.SetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i79.SplashCubit>(() =>
      _i79.SplashCubit(get<_i49.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i80.ViamAppCameraService>(() => _i81.ViamAppCameraServiceImpl(
        get<_i46.CameraDataSource>(),
        get<_i29.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i82.ViamAppMovementService>(() => _i83.ViamAppMovementServiceImpl(
        get<_i27.ViamAppMovementSdkDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i32.ViamPositionToViamAppPositionMapper>(),
        get<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i84.ViamAppResourceService>(() => _i85.ViamAppResourceServiceImpl(
        get<_i74.ResourceDataSource>(),
        get<_i33.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i86.ViamAppSensorService>(() => _i87.ViamAppSensorServiceImpl(
        get<_i75.SensorDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i88.BoatService>(() => _i89.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i55.CurrentBoatStore>(),
      ));
  gh.factory<_i90.ChangeBoatNameUseCase>(
      () => _i90.ChangeBoatNameUseCase(get<_i88.BoatService>()));
  gh.factory<_i91.CheckConnectionUseCase>(
      () => _i91.CheckConnectionUseCase(get<_i88.BoatService>()));
  gh.factory<_i92.DeleteBoatUseCase>(
      () => _i92.DeleteBoatUseCase(get<_i88.BoatService>()));
  gh.factory<_i93.GetBoatsUseCase>(
      () => _i93.GetBoatsUseCase(get<_i88.BoatService>()));
  gh.factory<_i94.GetCameraDataUseCase>(
      () => _i94.GetCameraDataUseCase(get<_i80.ViamAppCameraService>()));
  gh.factory<_i95.GetCameraPermissionStatusUseCase>(() =>
      _i95.GetCameraPermissionStatusUseCase(get<_i71.PermissionsService>()));
  gh.factory<_i96.GetCameraVideoUseCase>(
      () => _i96.GetCameraVideoUseCase(get<_i80.ViamAppCameraService>()));
  gh.factory<_i97.GetCurrentBoatIdUseCase>(
      () => _i97.GetCurrentBoatIdUseCase(get<_i88.BoatService>()));
  gh.factory<_i98.GetLinearVelocityUseCase>(
      () => _i98.GetLinearVelocityUseCase(get<_i82.ViamAppMovementService>()));
  gh.factory<_i99.GetPostionUseCase>(
      () => _i99.GetPostionUseCase(get<_i82.ViamAppMovementService>()));
  gh.factory<_i100.GetResourceNamesUseCase>(
      () => _i100.GetResourceNamesUseCase(get<_i84.ViamAppResourceService>()));
  gh.factory<_i101.GetSensorDataUseCase>(
      () => _i101.GetSensorDataUseCase(get<_i86.ViamAppSensorService>()));
  gh.factory<_i102.MainCubit>(
      () => _i102.MainCubit(get<_i100.GetResourceNamesUseCase>()));
  gh.factory<_i103.MapCubit>(() => _i103.MapCubit(
        get<_i99.GetPostionUseCase>(),
        get<_i101.GetSensorDataUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i104.OrganizationsCubit>(() => _i104.OrganizationsCubit(
        get<_i62.GetOrganizationsListUseCase>(),
        get<_i54.ConnectToRobotUseCase>(),
        get<_i66.GetTokenOrNullUseCase>(),
        get<_i60.GetOrganizationIdUseCase>(),
        get<_i77.SetOrganizationIdUseCase>(),
        get<_i53.ClearCacheUseCase>(),
        get<_i70.LogoutUseCase>(),
      ));
  gh.factory<_i105.RemoveCurrentBoatIdUseCase>(
      () => _i105.RemoveCurrentBoatIdUseCase(get<_i88.BoatService>()));
  gh.factory<_i106.SensorTileCubit>(() => _i106.SensorTileCubit(
        get<_i101.GetSensorDataUseCase>(),
        get<_i98.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i107.SetCurrentBoatIdUseCase>(
      () => _i107.SetCurrentBoatIdUseCase(get<_i88.BoatService>()));
  gh.factory<_i108.SettingsCubit>(() => _i108.SettingsCubit(
        get<_i93.GetBoatsUseCase>(),
        get<_i92.DeleteBoatUseCase>(),
        get<_i68.LogDeleteBoatEventUseCase>(),
        get<_i105.RemoveCurrentBoatIdUseCase>(),
        get<_i107.SetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i50.ChoosePhotoForBoatUseCase>(),
        get<_i48.CapturePhotoForBoatUseCase>(),
        get<_i70.LogoutUseCase>(),
        get<_i53.ClearCacheUseCase>(),
      ));
  gh.factory<_i109.SubscribeToCameraStreamUseCase>(() =>
      _i109.SubscribeToCameraStreamUseCase(get<_i80.ViamAppCameraService>()));
  gh.factory<_i110.WebrtcCameraCubit>(() => _i110.WebrtcCameraCubit(
        get<_i96.GetCameraVideoUseCase>(),
        get<_i109.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i111.AddNewBoatUseCase>(
      () => _i111.AddNewBoatUseCase(get<_i88.BoatService>()));
  gh.factory<_i112.BoatListCubit>(() => _i112.BoatListCubit(
        get<_i93.GetBoatsUseCase>(),
        get<_i97.GetCurrentBoatIdUseCase>(),
        get<_i107.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i113.CameraTileCubit>(
      () => _i113.CameraTileCubit(get<_i94.GetCameraDataUseCase>()));
  gh.factory<_i114.ChangeBoatNameCubit>(() => _i114.ChangeBoatNameCubit(
        get<_i90.ChangeBoatNameUseCase>(),
        get<_i17.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i115.ConnectionErrorCubit>(() => _i115.ConnectionErrorCubit(
        get<_i54.ConnectToRobotUseCase>(),
        get<_i66.GetTokenOrNullUseCase>(),
        get<_i111.AddNewBoatUseCase>(),
        get<_i93.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i116.DashboardCubit>(() => _i116.DashboardCubit(
        get<_i93.GetBoatsUseCase>(),
        get<_i97.GetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i117.LocationsPageCubit>(() => _i117.LocationsPageCubit(
        get<_i59.GetLocationsUseCase>(),
        get<_i111.AddNewBoatUseCase>(),
        get<_i54.ConnectToRobotUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
        get<_i93.GetBoatsUseCase>(),
        get<_i65.GetRobotsUseCase>(),
        get<_i66.GetTokenOrNullUseCase>(),
        get<_i76.SetLocationIdUseCase>(),
        get<_i63.GetRobotIdUseCase>(),
        get<_i57.GetLocationIdUseCase>(),
        get<_i78.SetRobotIdUseCase>(),
      ));
  gh.factory<_i118.AddBoatCubit>(() => _i118.AddBoatCubit(
        get<_i111.AddNewBoatUseCase>(),
        get<_i91.CheckConnectionUseCase>(),
        get<_i107.SetCurrentBoatIdUseCase>(),
        get<_i95.GetCameraPermissionStatusUseCase>(),
        get<_i73.RequestCameraPermissionUseCase>(),
        get<_i67.LogAddBoatEventUseCase>(),
        get<_i25.Uuid>(),
        get<_i93.GetBoatsUseCase>(),
        get<_i45.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i119.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i120.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i121.NavigatorKeyModule {}

class _$ImagePickerModule extends _i122.ImagePickerModule {}

class _$CameraPermissionModule extends _i123.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i124.SharedPreferencesModule {}

class _$UuidModule extends _i125.UuidModule {}

class _$ViamSdkModule extends _i126.ViamSdkModule {}
