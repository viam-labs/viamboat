// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:file_picker/file_picker.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:flutter/material.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i17;
import 'package:shared_preferences/shared_preferences.dart' as _i19;
import 'package:uuid/uuid.dart' as _i24;

import '../../sdk/viam_sdk.dart' as _i25;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i36;
import '../data/analytics/service/analytics_service_impl.dart' as _i38;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i39;
import '../data/app_viam/service/app_viam_service.dart' as _i41;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i79;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i50;
import '../data/camera/data_source/camera_api_data_source.dart' as _i43;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i28;
import '../data/camera/service/camera_service_impl.dart' as _i71;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i13;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i15;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i26;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i30;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i31;
import '../data/movement/service/movement_service_impl.dart' as _i73;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i44;
import '../data/permissions/service/permissions_service_impl.dart' as _i65;
import '../data/resource/data_source/resource_api_data_source.dart' as _i67;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i27;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i32;
import '../data/resource/service/resource_service_impl.dart' as _i75;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i68;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i33;
import '../data/sensor/service/sensor_service_impl.dart' as _i77;
import '../data/viam/data_source/viam_data_source.dart' as _i29;
import '../data/viam/service/viam_service_impl.dart' as _i35;
import '../data/viam/store/token_box.dart' as _i21;
import '../data/viam/store/token_store_impl.dart' as _i23;
import '../domain/analytics/service/analytics_service.dart' as _i37;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i59;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i60;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i61;
import '../domain/app_viam/service/app_viam_service.dart' as _i40;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i51;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i52;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i53;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i55;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i56;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i54;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i78;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i49;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i100;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i80;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i81;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i82;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i83;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i87;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i16;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i94;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i96;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i20;
import '../domain/camera/service/camera_service.dart' as _i70;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i84;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i86;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i98;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/local_photo/service/local_photo_service.dart' as _i14;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i45;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i47;
import '../domain/movement/service/movement_service.dart' as _i72;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i88;
import '../domain/movement/usecase/get_position_use_case.dart' as _i89;
import '../domain/permissions/service/permissions_service.dart' as _i64;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i85;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i66;
import '../domain/resource/service/resource_service.dart' as _i74;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i90;
import '../domain/sensor/service/sensor_service_impl.dart' as _i76;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i91;
import '../domain/viam/service/viam_service.dart' as _i34;
import '../domain/viam/store/token_store.dart' as _i22;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i42;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i46;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i48;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i10;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i57;
import '../domain/viam/usecase/logout_use_case.dart' as _i62;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i107;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i101;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i99;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i103;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i104;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i105;
import '../presentation/page/main/cubit/main_cubit.dart' as _i92;
import '../presentation/page/map/cubit/map_cubit.dart' as _i93;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i63;
import '../presentation/page/organizations/widgets/location/cubit/location_cubit.dart'
    as _i58;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i106;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i18;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i97;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i69;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i102;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i95;
import 'camera_permission_injectable.dart' as _i112;
import 'file_picker_injectable.dart' as _i108;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i109;
import 'image_picker_injectable.dart' as _i111;
import 'navigator_key_injectable.dart' as _i110;
import 'shared_preferences_injectable.dart' as _i113;
import 'uuid_injectable.dart' as _i114;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i115;

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
  gh.factory<_i10.GetRobotAddressUseCase>(() => _i10.GetRobotAddressUseCase());
  gh.singleton<_i11.GlobalKey<_i11.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i12.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i13.LocalPhotoDataSource>(() => _i13.LocalPhotoDataSource(
        get<_i12.ImagePicker>(),
        get<_i7.FilePicker>(),
      ));
  gh.factory<_i14.LocalPhotoService>(() => _i15.LocalPhotoServiceImpl(
        get<_i13.LocalPhotoDataSource>(),
        get<_i3.BoatBox>(),
      ));
  gh.factory<_i16.NotifyBoatNameUpdateUseCase>(
      () => _i16.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i17.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i18.ScanQrCubit>(() => _i18.ScanQrCubit());
  await gh.factoryAsync<_i19.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i20.SubscribeToBoatUpdateStreamUseCase>(() =>
      _i20.SubscribeToBoatUpdateStreamUseCase(
          get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i21.TokenBox>(_i21.TokenBoxImpl());
  gh.factory<_i22.TokenStore>(() => _i23.TokenStoreImpl(get<_i21.TokenBox>()));
  gh.singleton<_i24.Uuid>(uuidModule.uuid);
  gh.singleton<_i25.Viam>(viamSdkModule.viam);
  gh.factory<_i26.ViamAppMovementSdkDataSource>(
      () => _i26.ViamAppMovementSdkDataSource(get<_i25.Viam>()));
  gh.factory<_i27.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i27.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i28.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i28.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i29.ViamDataSource>(() => _i29.ViamDataSource(get<_i25.Viam>()));
  gh.factory<_i30.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i30.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i31.ViamPositionToViamAppPositionMapper>(
      () => _i31.ViamPositionToViamAppPositionMapper());
  gh.factory<_i32.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i32.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i33.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i33.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i34.ViamService>(() => _i35.ViamServiceImpl(
        get<_i29.ViamDataSource>(),
        get<_i22.TokenStore>(),
      ));
  gh.factory<_i36.AnalyticsDataSink>(
      () => _i36.AnalyticsDataSinkImpl(get<_i8.FirebaseAnalytics>()));
  gh.factory<_i37.AnalyticsService>(
      () => _i38.AnalyticsServiceImpl(get<_i36.AnalyticsDataSink>()));
  gh.factory<_i39.AppViamDataSource>(
      () => _i39.AppViamDataSource(get<_i25.Viam>()));
  gh.lazySingleton<_i40.AppViamService>(
      () => _i41.AppViamServiceImpl(get<_i39.AppViamDataSource>()));
  gh.factory<_i42.AuthenticateUseCase>(
      () => _i42.AuthenticateUseCase(get<_i34.ViamService>()));
  gh.factory<_i43.CameraDataSource>(
      () => _i43.CameraDataSource(get<_i25.Viam>()));
  gh.factory<_i44.CameraPermissionDataSource>(
      () => _i44.CameraPermissionDataSource(get<_i17.Permission>()));
  gh.factory<_i45.CapturePhotoForBoatUseCase>(
      () => _i45.CapturePhotoForBoatUseCase(get<_i14.LocalPhotoService>()));
  gh.factory<_i46.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i46.CheckIfHasTokenAndRefreshTokenUseCase(get<_i22.TokenStore>()));
  gh.factory<_i47.ChoosePhotoForBoatUseCase>(
      () => _i47.ChoosePhotoForBoatUseCase(get<_i14.LocalPhotoService>()));
  gh.factory<_i48.ConnectToRobotUseCase>(
      () => _i48.ConnectToRobotUseCase(get<_i34.ViamService>()));
  gh.factory<_i49.CurrentBoatStore>(() =>
      _i50.SharedPreferencesCurrentBoatStore(get<_i19.SharedPreferences>()));
  gh.factory<_i51.GetLocationUseCase>(
      () => _i51.GetLocationUseCase(get<_i40.AppViamService>()));
  gh.factory<_i52.GetLocationsUseCase>(
      () => _i52.GetLocationsUseCase(get<_i40.AppViamService>()));
  gh.factory<_i53.GetOrganizationUseCase>(
      () => _i53.GetOrganizationUseCase(get<_i40.AppViamService>()));
  gh.factory<_i54.GetOrganizationsListUseCase>(
      () => _i54.GetOrganizationsListUseCase(get<_i40.AppViamService>()));
  gh.factory<_i55.GetRobotUseCase>(
      () => _i55.GetRobotUseCase(get<_i40.AppViamService>()));
  gh.factory<_i56.GetRobotsUseCase>(
      () => _i56.GetRobotsUseCase(get<_i40.AppViamService>()));
  gh.factory<_i57.GetTokenOrNullUseCase>(
      () => _i57.GetTokenOrNullUseCase(get<_i22.TokenStore>()));
  gh.factory<_i58.LocationCubit>(
      () => _i58.LocationCubit(get<_i52.GetLocationsUseCase>()));
  gh.factory<_i59.LogAddBoatEventUseCase>(
      () => _i59.LogAddBoatEventUseCase(get<_i37.AnalyticsService>()));
  gh.factory<_i60.LogDeleteBoatEventUseCase>(
      () => _i60.LogDeleteBoatEventUseCase(get<_i37.AnalyticsService>()));
  gh.factory<_i61.LogOpenAppEventUseCase>(
      () => _i61.LogOpenAppEventUseCase(get<_i37.AnalyticsService>()));
  gh.factory<_i62.LogoutUseCase>(
      () => _i62.LogoutUseCase(get<_i34.ViamService>()));
  gh.factory<_i63.OrganizationsCubit>(() => _i63.OrganizationsCubit(
        get<_i54.GetOrganizationsListUseCase>(),
        get<_i48.ConnectToRobotUseCase>(),
        get<_i57.GetTokenOrNullUseCase>(),
      ));
  gh.lazySingleton<_i64.PermissionsService>(() =>
      _i65.PermissionsServiceImpl(get<_i44.CameraPermissionDataSource>()));
  gh.factory<_i66.RequestCameraPermissionUseCase>(() =>
      _i66.RequestCameraPermissionUseCase(get<_i64.PermissionsService>()));
  gh.factory<_i67.ResourceDataSource>(
      () => _i67.ResourceDataSource(get<_i25.Viam>()));
  gh.factory<_i68.SensorDataSource>(
      () => _i68.SensorDataSource(get<_i25.Viam>()));
  gh.factory<_i69.SplashCubit>(() =>
      _i69.SplashCubit(get<_i46.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i70.ViamAppCameraService>(() => _i71.ViamAppCameraServiceImpl(
        get<_i43.CameraDataSource>(),
        get<_i28.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i72.ViamAppMovementService>(() => _i73.ViamAppMovementServiceImpl(
        get<_i26.ViamAppMovementSdkDataSource>(),
        get<_i27.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i31.ViamPositionToViamAppPositionMapper>(),
        get<_i30.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i74.ViamAppResourceService>(() => _i75.ViamAppResourceServiceImpl(
        get<_i67.ResourceDataSource>(),
        get<_i32.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i76.ViamAppSensorService>(() => _i77.ViamAppSensorServiceImpl(
        get<_i68.SensorDataSource>(),
        get<_i27.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i33.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i78.BoatService>(() => _i79.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i49.CurrentBoatStore>(),
      ));
  gh.factory<_i80.ChangeBoatNameUseCase>(
      () => _i80.ChangeBoatNameUseCase(get<_i78.BoatService>()));
  gh.factory<_i81.CheckConnectionUseCase>(
      () => _i81.CheckConnectionUseCase(get<_i78.BoatService>()));
  gh.factory<_i82.DeleteBoatUseCase>(
      () => _i82.DeleteBoatUseCase(get<_i78.BoatService>()));
  gh.factory<_i83.GetBoatsUseCase>(
      () => _i83.GetBoatsUseCase(get<_i78.BoatService>()));
  gh.factory<_i84.GetCameraDataUseCase>(
      () => _i84.GetCameraDataUseCase(get<_i70.ViamAppCameraService>()));
  gh.factory<_i85.GetCameraPermissionStatusUseCase>(() =>
      _i85.GetCameraPermissionStatusUseCase(get<_i64.PermissionsService>()));
  gh.factory<_i86.GetCameraVideoUseCase>(
      () => _i86.GetCameraVideoUseCase(get<_i70.ViamAppCameraService>()));
  gh.factory<_i87.GetCurrentBoatIdUseCase>(
      () => _i87.GetCurrentBoatIdUseCase(get<_i78.BoatService>()));
  gh.factory<_i88.GetLinearVelocityUseCase>(
      () => _i88.GetLinearVelocityUseCase(get<_i72.ViamAppMovementService>()));
  gh.factory<_i89.GetPostionUseCase>(
      () => _i89.GetPostionUseCase(get<_i72.ViamAppMovementService>()));
  gh.factory<_i90.GetResourceNamesUseCase>(
      () => _i90.GetResourceNamesUseCase(get<_i74.ViamAppResourceService>()));
  gh.factory<_i91.GetSensorDataUseCase>(
      () => _i91.GetSensorDataUseCase(get<_i76.ViamAppSensorService>()));
  gh.factory<_i92.MainCubit>(
      () => _i92.MainCubit(get<_i90.GetResourceNamesUseCase>()));
  gh.factory<_i93.MapCubit>(() => _i93.MapCubit(
        get<_i89.GetPostionUseCase>(),
        get<_i91.GetSensorDataUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i94.RemoveCurrentBoatIdUseCase>(
      () => _i94.RemoveCurrentBoatIdUseCase(get<_i78.BoatService>()));
  gh.factory<_i95.SensorTileCubit>(() => _i95.SensorTileCubit(
        get<_i91.GetSensorDataUseCase>(),
        get<_i88.GetLinearVelocityUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i96.SetCurrentBoatIdUseCase>(
      () => _i96.SetCurrentBoatIdUseCase(get<_i78.BoatService>()));
  gh.factory<_i97.SettingsCubit>(() => _i97.SettingsCubit(
        get<_i83.GetBoatsUseCase>(),
        get<_i82.DeleteBoatUseCase>(),
        get<_i60.LogDeleteBoatEventUseCase>(),
        get<_i94.RemoveCurrentBoatIdUseCase>(),
        get<_i96.SetCurrentBoatIdUseCase>(),
        get<_i20.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i47.ChoosePhotoForBoatUseCase>(),
        get<_i45.CapturePhotoForBoatUseCase>(),
        get<_i62.LogoutUseCase>(),
      ));
  gh.factory<_i98.SubscribeToCameraStreamUseCase>(() =>
      _i98.SubscribeToCameraStreamUseCase(get<_i70.ViamAppCameraService>()));
  gh.factory<_i99.WebrtcCameraCubit>(() => _i99.WebrtcCameraCubit(
        get<_i86.GetCameraVideoUseCase>(),
        get<_i98.SubscribeToCameraStreamUseCase>(),
        get<_i9.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i100.AddNewBoatUseCase>(
      () => _i100.AddNewBoatUseCase(get<_i78.BoatService>()));
  gh.factory<_i101.BoatListCubit>(() => _i101.BoatListCubit(
        get<_i83.GetBoatsUseCase>(),
        get<_i87.GetCurrentBoatIdUseCase>(),
        get<_i96.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i102.CameraTileCubit>(
      () => _i102.CameraTileCubit(get<_i84.GetCameraDataUseCase>()));
  gh.factory<_i103.ChangeBoatNameCubit>(() => _i103.ChangeBoatNameCubit(
        get<_i80.ChangeBoatNameUseCase>(),
        get<_i16.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i104.ConnectionErrorCubit>(() => _i104.ConnectionErrorCubit(
        get<_i48.ConnectToRobotUseCase>(),
        get<_i57.GetTokenOrNullUseCase>(),
        get<_i100.AddNewBoatUseCase>(),
        get<_i83.GetBoatsUseCase>(),
        get<_i10.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i105.DashboardCubit>(() => _i105.DashboardCubit(
        get<_i83.GetBoatsUseCase>(),
        get<_i87.GetCurrentBoatIdUseCase>(),
        get<_i20.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i106.RobotsCubit>(() => _i106.RobotsCubit(
        get<_i56.GetRobotsUseCase>(),
        get<_i48.ConnectToRobotUseCase>(),
        get<_i57.GetTokenOrNullUseCase>(),
        get<_i100.AddNewBoatUseCase>(),
        get<_i83.GetBoatsUseCase>(),
        get<_i10.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i107.AddBoatCubit>(() => _i107.AddBoatCubit(
        get<_i100.AddNewBoatUseCase>(),
        get<_i81.CheckConnectionUseCase>(),
        get<_i96.SetCurrentBoatIdUseCase>(),
        get<_i85.GetCameraPermissionStatusUseCase>(),
        get<_i66.RequestCameraPermissionUseCase>(),
        get<_i59.LogAddBoatEventUseCase>(),
        get<_i24.Uuid>(),
        get<_i83.GetBoatsUseCase>(),
        get<_i42.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i108.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i109.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i110.NavigatorKeyModule {}

class _$ImagePickerModule extends _i111.ImagePickerModule {}

class _$CameraPermissionModule extends _i112.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i113.SharedPreferencesModule {}

class _$UuidModule extends _i114.UuidModule {}

class _$ViamSdkModule extends _i115.ViamSdkModule {}
