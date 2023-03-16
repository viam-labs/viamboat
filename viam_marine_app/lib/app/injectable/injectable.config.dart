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
import 'package:uuid/uuid.dart' as _i23;

import '../../sdk/viam_sdk.dart' as _i24;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i39;
import '../data/analytics/service/analytics_service_impl.dart' as _i41;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i42;
import '../data/app_viam/mapper/viam_location_auth_to_viam_app_location_auth_mapper.dart'
    as _i71;
import '../data/app_viam/mapper/viam_location_organization_to_viam_app_location_organization_mapper.dart'
    as _i30;
import '../data/app_viam/mapper/viam_location_to_app_viam_location_mapper.dart'
    as _i72;
import '../data/app_viam/mapper/viam_robot_to_viam_app_robot.dart' as _i33;
import '../data/app_viam/mapper/viam_shared_secret_state_to_viam_app_shared_secret_state_mapper.dart'
    as _i37;
import '../data/app_viam/mapper/viam_shared_secret_to_viam_app_shared_secret_mapper.dart'
    as _i38;
import '../data/app_viam/service/app_viam_service.dart' as _i74;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i76;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i51;
import '../data/camera/data_source/camera_api_data_source.dart' as _i44;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i27;
import '../data/camera/service/camera_service_impl.dart' as _i64;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i25;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i29;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i31;
import '../data/movement/service/movement_service_impl.dart' as _i66;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i45;
import '../data/permissions/service/permissions_service_impl.dart' as _i58;
import '../data/resource/data_source/resource_api_data_source.dart' as _i60;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i26;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i32;
import '../data/resource/service/resource_service_impl.dart' as _i68;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i61;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i34;
import '../data/sensor/service/sensor_service_impl.dart' as _i70;
import '../data/viam/data_source/viam_data_source.dart' as _i28;
import '../data/viam/service/viam_service_impl.dart' as _i36;
import '../data/viam/store/token_box.dart' as _i20;
import '../data/viam/store/token_store_impl.dart' as _i22;
import '../domain/analytics/service/analytics_service.dart' as _i40;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i53;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i54;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i55;
import '../domain/app_viam/service/app_viam_service.dart' as _i73;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i86;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i87;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i91;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i92;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i88;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i75;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i50;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i104;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i77;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i78;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i79;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i80;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i84;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i98;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i100;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i19;
import '../domain/camera/service/camera_service.dart' as _i63;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i81;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i83;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i102;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i46;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i48;
import '../domain/movement/service/movement_service.dart' as _i65;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i85;
import '../domain/movement/usecase/get_position_use_case.dart' as _i89;
import '../domain/permissions/service/permissions_service.dart' as _i57;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i82;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i59;
import '../domain/resource/service/resource_service.dart' as _i67;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i90;
import '../domain/sensor/service/sensor_service_impl.dart' as _i69;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i93;
import '../domain/viam/service/viam_service.dart' as _i35;
import '../domain/viam/store/token_store.dart' as _i21;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i43;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i47;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i49;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i52;
import '../domain/viam/usecase/logout_use_case.dart' as _i56;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i110;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i105;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i103;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i107;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i108;
import '../presentation/page/main/cubit/main_cubit.dart' as _i95;
import '../presentation/page/map/cubit/map_cubit.dart' as _i96;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i97;
import '../presentation/page/organizations/widgets/location/cubit/location_cubit.dart'
    as _i94;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i109;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i17;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i101;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i62;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i106;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i99;
import 'camera_permission_injectable.dart' as _i115;
import 'file_picker_injectable.dart' as _i111;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i112;
import 'image_picker_injectable.dart' as _i114;
import 'navigator_key_injectable.dart' as _i113;
import 'shared_preferences_injectable.dart' as _i116;
import 'uuid_injectable.dart' as _i117;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i118;

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
  gh.factory<_i17.ScanQrCubit>(() => _i17.ScanQrCubit());
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i19.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i20.TokenBox>(_i20.TokenBoxImpl());
  gh.factory<_i21.TokenStore>(() => _i22.TokenStoreImpl(get<_i20.TokenBox>()));
  gh.singleton<_i23.Uuid>(uuidModule.uuid);
  gh.singleton<_i24.Viam>(viamSdkModule.viam);
  gh.factory<_i25.ViamAppMovementSdkDataSource>(
      () => _i25.ViamAppMovementSdkDataSource(get<_i24.Viam>()));
  gh.factory<_i26.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i26.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i27.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i27.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i28.ViamDataSource>(() => _i28.ViamDataSource(get<_i24.Viam>()));
  gh.factory<_i29.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i29.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i30.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(
      () => _i30.ViamLocationOrganizationToViamAppLocationOrganizationMapper());
  gh.factory<_i31.ViamPositionToViamAppPositionMapper>(
      () => _i31.ViamPositionToViamAppPositionMapper());
  gh.factory<_i32.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i32.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i33.ViamRobotToViamAppRobot>(
      () => _i33.ViamRobotToViamAppRobot());
  gh.factory<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i34.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i35.ViamService>(() => _i36.ViamServiceImpl(
        get<_i28.ViamDataSource>(),
        get<_i21.TokenStore>(),
      ));
  gh.factory<_i37.ViamSharedSecretStateToViamAppSharedSecretState>(
      () => _i37.ViamSharedSecretStateToViamAppSharedSecretState());
  gh.factory<_i38.ViamSharedSecretToViamAppSharedSecretMapper>(() =>
      _i38.ViamSharedSecretToViamAppSharedSecretMapper(
          get<_i37.ViamSharedSecretStateToViamAppSharedSecretState>()));
  gh.factory<_i39.AnalyticsDataSink>(
      () => _i39.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i40.AnalyticsService>(
      () => _i41.AnalyticsServiceImpl(get<_i39.AnalyticsDataSink>()));
  gh.factory<_i42.AppViamDataSource>(
      () => _i42.AppViamDataSource(get<_i24.Viam>()));
  gh.factory<_i43.AuthenticateUseCase>(
      () => _i43.AuthenticateUseCase(get<_i35.ViamService>()));
  gh.factory<_i44.CameraDataSource>(
      () => _i44.CameraDataSource(get<_i24.Viam>()));
  gh.factory<_i45.CameraPermissionDataSource>(
      () => _i45.CameraPermissionDataSource(get<_i16.Permission>()));
  gh.factory<_i46.CapturePhotoForBoatUseCase>(
      () => _i46.CapturePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i47.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i47.CheckIfHasTokenAndRefreshTokenUseCase(get<_i21.TokenStore>()));
  gh.factory<_i48.ChoosePhotoForBoatUseCase>(
      () => _i48.ChoosePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i49.ConnectToRobotUseCase>(
      () => _i49.ConnectToRobotUseCase(get<_i35.ViamService>()));
  gh.factory<_i50.CurrentBoatStore>(() =>
      _i51.SharedPreferencesCurrentBoatStore(get<_i18.SharedPreferences>()));
  gh.factory<_i52.GetTokenOrNullUseCase>(
      () => _i52.GetTokenOrNullUseCase(get<_i21.TokenStore>()));
  gh.factory<_i53.LogAddBoatEventUseCase>(
      () => _i53.LogAddBoatEventUseCase(get<_i40.AnalyticsService>()));
  gh.factory<_i54.LogDeleteBoatEventUseCase>(
      () => _i54.LogDeleteBoatEventUseCase(get<_i40.AnalyticsService>()));
  gh.factory<_i55.LogOpenAppEventUseCase>(
      () => _i55.LogOpenAppEventUseCase(get<_i40.AnalyticsService>()));
  gh.factory<_i56.LogoutUseCase>(
      () => _i56.LogoutUseCase(get<_i35.ViamService>()));
  gh.lazySingleton<_i57.PermissionsService>(() =>
      _i58.PermissionsServiceImpl(get<_i45.CameraPermissionDataSource>()));
  gh.factory<_i59.RequestCameraPermissionUseCase>(() =>
      _i59.RequestCameraPermissionUseCase(get<_i57.PermissionsService>()));
  gh.factory<_i60.ResourceDataSource>(
      () => _i60.ResourceDataSource(get<_i24.Viam>()));
  gh.factory<_i61.SensorDataSource>(
      () => _i61.SensorDataSource(get<_i24.Viam>()));
  gh.factory<_i62.SplashCubit>(() =>
      _i62.SplashCubit(get<_i47.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i63.ViamAppCameraService>(() => _i64.ViamAppCameraServiceImpl(
        get<_i44.CameraDataSource>(),
        get<_i27.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i65.ViamAppMovementService>(() => _i66.ViamAppMovementServiceImpl(
        get<_i25.ViamAppMovementSdkDataSource>(),
        get<_i26.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i31.ViamPositionToViamAppPositionMapper>(),
        get<_i29.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i67.ViamAppResourceService>(() => _i68.ViamAppResourceServiceImpl(
        get<_i60.ResourceDataSource>(),
        get<_i32.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i69.ViamAppSensorService>(() => _i70.ViamAppSensorServiceImpl(
        get<_i61.SensorDataSource>(),
        get<_i26.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i71.ViamLocationAuthToViamAppLocationAuthMapper>(() =>
      _i71.ViamLocationAuthToViamAppLocationAuthMapper(
          get<_i38.ViamSharedSecretToViamAppSharedSecretMapper>()));
  gh.factory<_i72.ViamLocationToAppViamLocationMapper>(
      () => _i72.ViamLocationToAppViamLocationMapper(
            get<_i71.ViamLocationAuthToViamAppLocationAuthMapper>(),
            get<_i30.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(),
          ));
  gh.lazySingleton<_i73.AppViamService>(() => _i74.AppViamServiceImpl(
        get<_i42.AppViamDataSource>(),
        get<_i72.ViamLocationToAppViamLocationMapper>(),
        get<_i33.ViamRobotToViamAppRobot>(),
      ));
  gh.factory<_i75.BoatService>(() => _i76.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i50.CurrentBoatStore>(),
      ));
  gh.factory<_i77.ChangeBoatNameUseCase>(
      () => _i77.ChangeBoatNameUseCase(get<_i75.BoatService>()));
  gh.factory<_i78.CheckConnectionUseCase>(
      () => _i78.CheckConnectionUseCase(get<_i75.BoatService>()));
  gh.factory<_i79.DeleteBoatUseCase>(
      () => _i79.DeleteBoatUseCase(get<_i75.BoatService>()));
  gh.factory<_i80.GetBoatsUseCase>(
      () => _i80.GetBoatsUseCase(get<_i75.BoatService>()));
  gh.factory<_i81.GetCameraDataUseCase>(
      () => _i81.GetCameraDataUseCase(get<_i63.ViamAppCameraService>()));
  gh.factory<_i82.GetCameraPermissionStatusUseCase>(() =>
      _i82.GetCameraPermissionStatusUseCase(get<_i57.PermissionsService>()));
  gh.factory<_i83.GetCameraVideoUseCase>(
      () => _i83.GetCameraVideoUseCase(get<_i63.ViamAppCameraService>()));
  gh.factory<_i84.GetCurrentBoatIdUseCase>(
      () => _i84.GetCurrentBoatIdUseCase(get<_i75.BoatService>()));
  gh.factory<_i85.GetLinearVelocityUseCase>(
      () => _i85.GetLinearVelocityUseCase(get<_i65.ViamAppMovementService>()));
  gh.factory<_i86.GetLocationsUseCase>(
      () => _i86.GetLocationsUseCase(get<_i73.AppViamService>()));
  gh.factory<_i87.GetOrganizationUseCase>(
      () => _i87.GetOrganizationUseCase(get<_i73.AppViamService>()));
  gh.factory<_i88.GetOrganizationsListUseCase>(
      () => _i88.GetOrganizationsListUseCase(get<_i73.AppViamService>()));
  gh.factory<_i89.GetPostionUseCase>(
      () => _i89.GetPostionUseCase(get<_i65.ViamAppMovementService>()));
  gh.factory<_i90.GetResourceNamesUseCase>(
      () => _i90.GetResourceNamesUseCase(get<_i67.ViamAppResourceService>()));
  gh.factory<_i91.GetRobotUseCase>(
      () => _i91.GetRobotUseCase(get<_i73.AppViamService>()));
  gh.factory<_i92.GetRobotsUseCase>(
      () => _i92.GetRobotsUseCase(get<_i73.AppViamService>()));
  gh.factory<_i93.GetSensorDataUseCase>(
      () => _i93.GetSensorDataUseCase(get<_i69.ViamAppSensorService>()));
  gh.factory<_i94.LocationCubit>(
      () => _i94.LocationCubit(get<_i86.GetLocationsUseCase>()));
  gh.factory<_i95.MainCubit>(
      () => _i95.MainCubit(get<_i90.GetResourceNamesUseCase>()));
  gh.factory<_i96.MapCubit>(() => _i96.MapCubit(
        get<_i89.GetPostionUseCase>(),
        get<_i93.GetSensorDataUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i97.OrganizationsCubit>(() => _i97.OrganizationsCubit(
        get<_i88.GetOrganizationsListUseCase>(),
        get<_i49.ConnectToRobotUseCase>(),
        get<_i52.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i98.RemoveCurrentBoatIdUseCase>(
      () => _i98.RemoveCurrentBoatIdUseCase(get<_i75.BoatService>()));
  gh.factory<_i99.SensorTileCubit>(() => _i99.SensorTileCubit(
        get<_i93.GetSensorDataUseCase>(),
        get<_i85.GetLinearVelocityUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i100.SetCurrentBoatIdUseCase>(
      () => _i100.SetCurrentBoatIdUseCase(get<_i75.BoatService>()));
  gh.factory<_i101.SettingsCubit>(() => _i101.SettingsCubit(
        get<_i80.GetBoatsUseCase>(),
        get<_i79.DeleteBoatUseCase>(),
        get<_i54.LogDeleteBoatEventUseCase>(),
        get<_i98.RemoveCurrentBoatIdUseCase>(),
        get<_i100.SetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i48.ChoosePhotoForBoatUseCase>(),
        get<_i46.CapturePhotoForBoatUseCase>(),
        get<_i56.LogoutUseCase>(),
      ));
  gh.factory<_i102.SubscribeToCameraStreamUseCase>(() =>
      _i102.SubscribeToCameraStreamUseCase(get<_i63.ViamAppCameraService>()));
  gh.factory<_i103.WebrtcCameraCubit>(() => _i103.WebrtcCameraCubit(
        get<_i83.GetCameraVideoUseCase>(),
        get<_i102.SubscribeToCameraStreamUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i104.AddNewBoatUseCase>(
      () => _i104.AddNewBoatUseCase(get<_i75.BoatService>()));
  gh.factory<_i105.BoatListCubit>(() => _i105.BoatListCubit(
        get<_i80.GetBoatsUseCase>(),
        get<_i84.GetCurrentBoatIdUseCase>(),
        get<_i100.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i106.CameraTileCubit>(
      () => _i106.CameraTileCubit(get<_i81.GetCameraDataUseCase>()));
  gh.factory<_i107.ChangeBoatNameCubit>(() => _i107.ChangeBoatNameCubit(
        get<_i77.ChangeBoatNameUseCase>(),
        get<_i15.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i108.DashboardCubit>(() => _i108.DashboardCubit(
        get<_i80.GetBoatsUseCase>(),
        get<_i84.GetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i109.RobotsCubit>(() => _i109.RobotsCubit(
        get<_i92.GetRobotsUseCase>(),
        get<_i49.ConnectToRobotUseCase>(),
        get<_i52.GetTokenOrNullUseCase>(),
        get<_i104.AddNewBoatUseCase>(),
        get<_i80.GetBoatsUseCase>(),
      ));
  gh.factory<_i110.AddBoatCubit>(() => _i110.AddBoatCubit(
        get<_i104.AddNewBoatUseCase>(),
        get<_i78.CheckConnectionUseCase>(),
        get<_i100.SetCurrentBoatIdUseCase>(),
        get<_i82.GetCameraPermissionStatusUseCase>(),
        get<_i59.RequestCameraPermissionUseCase>(),
        get<_i53.LogAddBoatEventUseCase>(),
        get<_i23.Uuid>(),
        get<_i80.GetBoatsUseCase>(),
        get<_i43.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i111.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i112.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i113.NavigatorKeyModule {}

class _$ImagePickerModule extends _i114.ImagePickerModule {}

class _$CameraPermissionModule extends _i115.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i116.SharedPreferencesModule {}

class _$UuidModule extends _i117.UuidModule {}

class _$ViamSdkModule extends _i118.ViamSdkModule {}
