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
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i40;
import '../data/analytics/service/analytics_service_impl.dart' as _i42;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i43;
import '../data/app_viam/mapper/viam_location_auth_to_viam_app_location_auth_mapper.dart'
    as _i72;
import '../data/app_viam/mapper/viam_location_organization_to_viam_app_location_organization_mapper.dart'
    as _i30;
import '../data/app_viam/mapper/viam_location_to_app_viam_location_mapper.dart'
    as _i73;
import '../data/app_viam/mapper/viam_organization_to_viam_app_organization.dart'
    as _i31;
import '../data/app_viam/mapper/viam_robot_to_viam_app_robot.dart' as _i34;
import '../data/app_viam/mapper/viam_shared_secret_state_to_viam_app_shared_secret_state_mapper.dart'
    as _i38;
import '../data/app_viam/mapper/viam_shared_secret_to_viam_app_shared_secret_mapper.dart'
    as _i39;
import '../data/app_viam/service/app_viam_service.dart' as _i75;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i77;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i52;
import '../data/camera/data_source/camera_api_data_source.dart' as _i45;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i27;
import '../data/camera/service/camera_service_impl.dart' as _i65;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i25;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i29;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import '../data/movement/service/movement_service_impl.dart' as _i67;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i46;
import '../data/permissions/service/permissions_service_impl.dart' as _i59;
import '../data/resource/data_source/resource_api_data_source.dart' as _i61;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i26;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i33;
import '../data/resource/service/resource_service_impl.dart' as _i69;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i62;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i35;
import '../data/sensor/service/sensor_service_impl.dart' as _i71;
import '../data/viam/data_source/viam_data_source.dart' as _i28;
import '../data/viam/service/viam_service_impl.dart' as _i37;
import '../data/viam/store/token_box.dart' as _i20;
import '../data/viam/store/token_store_impl.dart' as _i22;
import '../domain/analytics/service/analytics_service.dart' as _i41;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i54;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i55;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i56;
import '../domain/app_viam/service/app_viam_service.dart' as _i74;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i87;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i91;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i88;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i76;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i51;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i103;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i78;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i79;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i80;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i81;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i85;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i97;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i99;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i19;
import '../domain/camera/service/camera_service.dart' as _i64;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i82;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i84;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i101;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i47;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i49;
import '../domain/movement/service/movement_service.dart' as _i66;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i86;
import '../domain/movement/usecase/get_position_use_case.dart' as _i89;
import '../domain/permissions/service/permissions_service.dart' as _i58;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i83;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i60;
import '../domain/resource/service/resource_service.dart' as _i68;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i90;
import '../domain/sensor/service/sensor_service_impl.dart' as _i70;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i92;
import '../domain/viam/service/viam_service.dart' as _i36;
import '../domain/viam/store/token_store.dart' as _i21;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i44;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i48;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i50;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i53;
import '../domain/viam/usecase/logout_use_case.dart' as _i57;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i109;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i104;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i102;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i106;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i107;
import '../presentation/page/main/cubit/main_cubit.dart' as _i94;
import '../presentation/page/map/cubit/map_cubit.dart' as _i95;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i96;
import '../presentation/page/organizations/widgets/location/cubit/location_cubit.dart'
    as _i93;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i108;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i17;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i100;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i63;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i105;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i98;
import 'camera_permission_injectable.dart' as _i114;
import 'file_picker_injectable.dart' as _i110;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i111;
import 'image_picker_injectable.dart' as _i113;
import 'navigator_key_injectable.dart' as _i112;
import 'shared_preferences_injectable.dart' as _i115;
import 'uuid_injectable.dart' as _i116;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i117;

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
  final viamModule = _$ViamModule();
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
  gh.factory<_i31.ViamOrganizationToViamAppOrganization>(
      () => _i31.ViamOrganizationToViamAppOrganization());
  gh.factory<_i32.ViamPositionToViamAppPositionMapper>(
      () => _i32.ViamPositionToViamAppPositionMapper());
  gh.factory<_i33.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i33.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i34.ViamRobotToViamAppRobot>(
      () => _i34.ViamRobotToViamAppRobot());
  gh.factory<_i35.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i35.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i36.ViamService>(() => _i37.ViamServiceImpl(
        get<_i28.ViamDataSource>(),
        get<_i21.TokenStore>(),
      ));
  gh.factory<_i38.ViamSharedSecretStateToViamAppSharedSecretState>(
      () => _i38.ViamSharedSecretStateToViamAppSharedSecretState());
  gh.factory<_i39.ViamSharedSecretToViamAppSharedSecretMapper>(() =>
      _i39.ViamSharedSecretToViamAppSharedSecretMapper(
          get<_i38.ViamSharedSecretStateToViamAppSharedSecretState>()));
  gh.factory<_i40.AnalyticsDataSink>(
      () => _i40.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i41.AnalyticsService>(
      () => _i42.AnalyticsServiceImpl(get<_i40.AnalyticsDataSink>()));
  gh.factory<_i43.AppViamDataSource>(
      () => _i43.AppViamDataSource(get<_i24.Viam>()));
  gh.factory<_i44.AuthenticateUseCase>(
      () => _i44.AuthenticateUseCase(get<_i36.ViamService>()));
  gh.factory<_i45.CameraDataSource>(
      () => _i45.CameraDataSource(get<_i24.Viam>()));
  gh.factory<_i46.CameraPermissionDataSource>(
      () => _i46.CameraPermissionDataSource(get<_i16.Permission>()));
  gh.factory<_i47.CapturePhotoForBoatUseCase>(
      () => _i47.CapturePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i48.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i48.CheckIfHasTokenAndRefreshTokenUseCase(get<_i21.TokenStore>()));
  gh.factory<_i49.ChoosePhotoForBoatUseCase>(
      () => _i49.ChoosePhotoForBoatUseCase(get<_i13.LocalPhotoService>()));
  gh.factory<_i50.ConnectToRobotUseCase>(
      () => _i50.ConnectToRobotUseCase(get<_i36.ViamService>()));
  gh.factory<_i51.CurrentBoatStore>(() =>
      _i52.SharedPreferencesCurrentBoatStore(get<_i18.SharedPreferences>()));
  gh.factory<_i53.GetTokenOrNullUseCase>(
      () => _i53.GetTokenOrNullUseCase(get<_i21.TokenStore>()));
  gh.factory<_i54.LogAddBoatEventUseCase>(
      () => _i54.LogAddBoatEventUseCase(get<_i41.AnalyticsService>()));
  gh.factory<_i55.LogDeleteBoatEventUseCase>(
      () => _i55.LogDeleteBoatEventUseCase(get<_i41.AnalyticsService>()));
  gh.factory<_i56.LogOpenAppEventUseCase>(
      () => _i56.LogOpenAppEventUseCase(get<_i41.AnalyticsService>()));
  gh.factory<_i57.LogoutUseCase>(
      () => _i57.LogoutUseCase(get<_i36.ViamService>()));
  gh.lazySingleton<_i58.PermissionsService>(() =>
      _i59.PermissionsServiceImpl(get<_i46.CameraPermissionDataSource>()));
  gh.factory<_i60.RequestCameraPermissionUseCase>(() =>
      _i60.RequestCameraPermissionUseCase(get<_i58.PermissionsService>()));
  gh.factory<_i61.ResourceDataSource>(
      () => _i61.ResourceDataSource(get<_i24.Viam>()));
  gh.factory<_i62.SensorDataSource>(
      () => _i62.SensorDataSource(get<_i24.Viam>()));
  gh.factory<_i63.SplashCubit>(() =>
      _i63.SplashCubit(get<_i48.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i64.ViamAppCameraService>(() => _i65.ViamAppCameraServiceImpl(
        get<_i45.CameraDataSource>(),
        get<_i27.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i66.ViamAppMovementService>(() => _i67.ViamAppMovementServiceImpl(
        get<_i25.ViamAppMovementSdkDataSource>(),
        get<_i26.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i32.ViamPositionToViamAppPositionMapper>(),
        get<_i29.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i68.ViamAppResourceService>(() => _i69.ViamAppResourceServiceImpl(
        get<_i61.ResourceDataSource>(),
        get<_i33.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i70.ViamAppSensorService>(() => _i71.ViamAppSensorServiceImpl(
        get<_i62.SensorDataSource>(),
        get<_i26.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i35.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i72.ViamLocationAuthToViamAppLocationAuthMapper>(() =>
      _i72.ViamLocationAuthToViamAppLocationAuthMapper(
          get<_i39.ViamSharedSecretToViamAppSharedSecretMapper>()));
  gh.factory<_i73.ViamLocationToAppViamLocationMapper>(
      () => _i73.ViamLocationToAppViamLocationMapper(
            get<_i72.ViamLocationAuthToViamAppLocationAuthMapper>(),
            get<_i30.ViamLocationOrganizationToViamAppLocationOrganizationMapper>(),
          ));
  gh.lazySingleton<_i74.AppViamService>(() => _i75.AppViamServiceImpl(
        get<_i43.AppViamDataSource>(),
        get<_i31.ViamOrganizationToViamAppOrganization>(),
        get<_i73.ViamLocationToAppViamLocationMapper>(),
        get<_i34.ViamRobotToViamAppRobot>(),
      ));
  gh.factory<_i76.BoatService>(() => _i77.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i51.CurrentBoatStore>(),
      ));
  gh.factory<_i78.ChangeBoatNameUseCase>(
      () => _i78.ChangeBoatNameUseCase(get<_i76.BoatService>()));
  gh.factory<_i79.CheckConnectionUseCase>(
      () => _i79.CheckConnectionUseCase(get<_i76.BoatService>()));
  gh.factory<_i80.DeleteBoatUseCase>(
      () => _i80.DeleteBoatUseCase(get<_i76.BoatService>()));
  gh.factory<_i81.GetBoatsUseCase>(
      () => _i81.GetBoatsUseCase(get<_i76.BoatService>()));
  gh.factory<_i82.GetCameraDataUseCase>(
      () => _i82.GetCameraDataUseCase(get<_i64.ViamAppCameraService>()));
  gh.factory<_i83.GetCameraPermissionStatusUseCase>(() =>
      _i83.GetCameraPermissionStatusUseCase(get<_i58.PermissionsService>()));
  gh.factory<_i84.GetCameraVideoUseCase>(
      () => _i84.GetCameraVideoUseCase(get<_i64.ViamAppCameraService>()));
  gh.factory<_i85.GetCurrentBoatIdUseCase>(
      () => _i85.GetCurrentBoatIdUseCase(get<_i76.BoatService>()));
  gh.factory<_i86.GetLinearVelocityUseCase>(
      () => _i86.GetLinearVelocityUseCase(get<_i66.ViamAppMovementService>()));
  gh.factory<_i87.GetLocationsUseCase>(
      () => _i87.GetLocationsUseCase(get<_i74.AppViamService>()));
  gh.factory<_i88.GetOrganizationsListUseCase>(
      () => _i88.GetOrganizationsListUseCase(get<_i74.AppViamService>()));
  gh.factory<_i89.GetPostionUseCase>(
      () => _i89.GetPostionUseCase(get<_i66.ViamAppMovementService>()));
  gh.factory<_i90.GetResourceNamesUseCase>(
      () => _i90.GetResourceNamesUseCase(get<_i68.ViamAppResourceService>()));
  gh.factory<_i91.GetRobotsUseCase>(
      () => _i91.GetRobotsUseCase(get<_i74.AppViamService>()));
  gh.factory<_i92.GetSensorDataUseCase>(
      () => _i92.GetSensorDataUseCase(get<_i70.ViamAppSensorService>()));
  gh.factory<_i93.LocationCubit>(
      () => _i93.LocationCubit(get<_i87.GetLocationsUseCase>()));
  gh.factory<_i94.MainCubit>(
      () => _i94.MainCubit(get<_i90.GetResourceNamesUseCase>()));
  gh.factory<_i95.MapCubit>(() => _i95.MapCubit(
        get<_i89.GetPostionUseCase>(),
        get<_i92.GetSensorDataUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i96.OrganizationsCubit>(() => _i96.OrganizationsCubit(
        get<_i88.GetOrganizationsListUseCase>(),
        get<_i50.ConnectToRobotUseCase>(),
        get<_i53.GetTokenOrNullUseCase>(),
      ));
  gh.factory<_i97.RemoveCurrentBoatIdUseCase>(
      () => _i97.RemoveCurrentBoatIdUseCase(get<_i76.BoatService>()));
  gh.factory<_i98.SensorTileCubit>(() => _i98.SensorTileCubit(
        get<_i92.GetSensorDataUseCase>(),
        get<_i86.GetLinearVelocityUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i99.SetCurrentBoatIdUseCase>(
      () => _i99.SetCurrentBoatIdUseCase(get<_i76.BoatService>()));
  gh.factory<_i100.SettingsCubit>(() => _i100.SettingsCubit(
        get<_i81.GetBoatsUseCase>(),
        get<_i80.DeleteBoatUseCase>(),
        get<_i55.LogDeleteBoatEventUseCase>(),
        get<_i97.RemoveCurrentBoatIdUseCase>(),
        get<_i99.SetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i49.ChoosePhotoForBoatUseCase>(),
        get<_i47.CapturePhotoForBoatUseCase>(),
        get<_i57.LogoutUseCase>(),
      ));
  gh.factory<_i101.SubscribeToCameraStreamUseCase>(() =>
      _i101.SubscribeToCameraStreamUseCase(get<_i64.ViamAppCameraService>()));
  await gh.singletonAsync<_i24.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i81.GetBoatsUseCase>(),
      get<_i85.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
  gh.factory<_i102.WebrtcCameraCubit>(() => _i102.WebrtcCameraCubit(
        get<_i84.GetCameraVideoUseCase>(),
        get<_i101.SubscribeToCameraStreamUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i103.AddNewBoatUseCase>(
      () => _i103.AddNewBoatUseCase(get<_i76.BoatService>()));
  gh.factory<_i104.BoatListCubit>(() => _i104.BoatListCubit(
        get<_i81.GetBoatsUseCase>(),
        get<_i85.GetCurrentBoatIdUseCase>(),
        get<_i99.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i105.CameraTileCubit>(
      () => _i105.CameraTileCubit(get<_i82.GetCameraDataUseCase>()));
  gh.factory<_i106.ChangeBoatNameCubit>(() => _i106.ChangeBoatNameCubit(
        get<_i78.ChangeBoatNameUseCase>(),
        get<_i15.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i107.DashboardCubit>(() => _i107.DashboardCubit(
        get<_i81.GetBoatsUseCase>(),
        get<_i85.GetCurrentBoatIdUseCase>(),
        get<_i19.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i108.RobotsCubit>(() => _i108.RobotsCubit(
        get<_i91.GetRobotsUseCase>(),
        get<_i50.ConnectToRobotUseCase>(),
        get<_i53.GetTokenOrNullUseCase>(),
        get<_i103.AddNewBoatUseCase>(),
        get<_i81.GetBoatsUseCase>(),
      ));
  gh.factory<_i109.AddBoatCubit>(() => _i109.AddBoatCubit(
        get<_i103.AddNewBoatUseCase>(),
        get<_i79.CheckConnectionUseCase>(),
        get<_i99.SetCurrentBoatIdUseCase>(),
        get<_i83.GetCameraPermissionStatusUseCase>(),
        get<_i60.RequestCameraPermissionUseCase>(),
        get<_i54.LogAddBoatEventUseCase>(),
        get<_i23.Uuid>(),
        get<_i81.GetBoatsUseCase>(),
        get<_i44.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i110.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i111.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i112.NavigatorKeyModule {}

class _$ImagePickerModule extends _i113.ImagePickerModule {}

class _$CameraPermissionModule extends _i114.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i115.SharedPreferencesModule {}

class _$UuidModule extends _i116.UuidModule {}

class _$ViamSdkModule extends _i117.ViamSdkModule {}

class _$ViamModule extends _i117.ViamModule {}
