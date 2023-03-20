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
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i7;
import '../data/boat/service/boat_service_impl.dart' as _i80;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i51;
import '../data/camera/data_source/camera_api_data_source.dart' as _i44;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i29;
import '../data/camera/service/camera_service_impl.dart' as _i72;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i14;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i16;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i27;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i31;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import '../data/movement/service/movement_service_impl.dart' as _i74;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i45;
import '../data/permissions/service/permissions_service_impl.dart' as _i66;
import '../data/resource/data_source/resource_api_data_source.dart' as _i68;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i33;
import '../data/resource/service/resource_service_impl.dart' as _i76;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i69;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i34;
import '../data/sensor/service/sensor_service_impl.dart' as _i78;
import '../data/viam/data_source/viam_data_source.dart' as _i30;
import '../data/viam/service/viam_service_impl.dart' as _i36;
import '../data/viam/store/token_box.dart' as _i22;
import '../data/viam/store/token_store_impl.dart' as _i24;
import '../domain/analytics/service/analytics_service.dart' as _i38;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i60;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i61;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i62;
import '../domain/app_viam/service/app_viam_service.dart' as _i41;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i52;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i53;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i54;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i56;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i57;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i55;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i79;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i50;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i101;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i81;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i82;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i83;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i84;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i88;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i17;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i95;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i97;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i21;
import '../domain/camera/service/camera_service.dart' as _i71;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i85;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i87;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i99;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/local_photo/service/local_photo_service.dart' as _i15;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i46;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i48;
import '../domain/movement/service/movement_service.dart' as _i73;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i89;
import '../domain/movement/usecase/get_position_use_case.dart' as _i90;
import '../domain/permissions/service/permissions_service.dart' as _i65;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i86;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i67;
import '../domain/resource/service/resource_service.dart' as _i75;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i91;
import '../domain/sensor/service/sensor_service_impl.dart' as _i77;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i92;
import '../domain/viam/service/viam_service.dart' as _i35;
import '../domain/viam/store/token_store.dart' as _i23;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i43;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i47;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i49;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i11;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i58;
import '../domain/viam/usecase/logout_use_case.dart' as _i63;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i108;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i102;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i100;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i104;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i105;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i106;
import '../presentation/page/main/cubit/main_cubit.dart' as _i93;
import '../presentation/page/map/cubit/map_cubit.dart' as _i94;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i64;
import '../presentation/page/organizations/widgets/location/cubit/location_cubit.dart'
    as _i59;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i107;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i19;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i98;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i70;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i103;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i96;
import 'camera_permission_injectable.dart' as _i113;
import 'file_picker_injectable.dart' as _i109;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i110;
import 'image_picker_injectable.dart' as _i112;
import 'navigator_key_injectable.dart' as _i111;
import 'shared_preferences_injectable.dart' as _i114;
import 'uuid_injectable.dart' as _i115;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i116;

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
  gh.factory<_i43.AuthenticateUseCase>(
      () => _i43.AuthenticateUseCase(get<_i35.ViamService>()));
  gh.factory<_i44.CameraDataSource>(
      () => _i44.CameraDataSource(get<_i26.Viam>()));
  gh.factory<_i45.CameraPermissionDataSource>(
      () => _i45.CameraPermissionDataSource(get<_i18.Permission>()));
  gh.factory<_i46.CapturePhotoForBoatUseCase>(
      () => _i46.CapturePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i47.CheckIfHasTokenAndRefreshTokenUseCase>(
      () => _i47.CheckIfHasTokenAndRefreshTokenUseCase(get<_i23.TokenStore>()));
  gh.factory<_i48.ChoosePhotoForBoatUseCase>(
      () => _i48.ChoosePhotoForBoatUseCase(get<_i15.LocalPhotoService>()));
  gh.factory<_i49.ConnectToRobotUseCase>(
      () => _i49.ConnectToRobotUseCase(get<_i35.ViamService>()));
  gh.factory<_i50.CurrentBoatStore>(() =>
      _i51.SharedPreferencesCurrentBoatStore(get<_i20.SharedPreferences>()));
  gh.factory<_i52.GetLocationUseCase>(
      () => _i52.GetLocationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i53.GetLocationsUseCase>(
      () => _i53.GetLocationsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i54.GetOrganizationUseCase>(
      () => _i54.GetOrganizationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i55.GetOrganizationsListUseCase>(
      () => _i55.GetOrganizationsListUseCase(get<_i41.AppViamService>()));
  gh.factory<_i56.GetRobotUseCase>(
      () => _i56.GetRobotUseCase(get<_i41.AppViamService>()));
  gh.factory<_i57.GetRobotsUseCase>(
      () => _i57.GetRobotsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i58.GetTokenOrNullUseCase>(
      () => _i58.GetTokenOrNullUseCase(get<_i23.TokenStore>()));
  gh.factory<_i59.LocationCubit>(
      () => _i59.LocationCubit(get<_i53.GetLocationsUseCase>()));
  gh.factory<_i60.LogAddBoatEventUseCase>(
      () => _i60.LogAddBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i61.LogDeleteBoatEventUseCase>(
      () => _i61.LogDeleteBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i62.LogOpenAppEventUseCase>(
      () => _i62.LogOpenAppEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i63.LogoutUseCase>(
      () => _i63.LogoutUseCase(get<_i35.ViamService>()));
  gh.factory<_i64.OrganizationsCubit>(() => _i64.OrganizationsCubit(
        get<_i55.GetOrganizationsListUseCase>(),
        get<_i49.ConnectToRobotUseCase>(),
        get<_i58.GetTokenOrNullUseCase>(),
      ));
  gh.lazySingleton<_i65.PermissionsService>(() =>
      _i66.PermissionsServiceImpl(get<_i45.CameraPermissionDataSource>()));
  gh.factory<_i67.RequestCameraPermissionUseCase>(() =>
      _i67.RequestCameraPermissionUseCase(get<_i65.PermissionsService>()));
  gh.factory<_i68.ResourceDataSource>(
      () => _i68.ResourceDataSource(get<_i26.Viam>()));
  gh.factory<_i69.SensorDataSource>(
      () => _i69.SensorDataSource(get<_i26.Viam>()));
  gh.factory<_i70.SplashCubit>(() =>
      _i70.SplashCubit(get<_i47.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i71.ViamAppCameraService>(() => _i72.ViamAppCameraServiceImpl(
        get<_i44.CameraDataSource>(),
        get<_i29.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i73.ViamAppMovementService>(() => _i74.ViamAppMovementServiceImpl(
        get<_i27.ViamAppMovementSdkDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i32.ViamPositionToViamAppPositionMapper>(),
        get<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i75.ViamAppResourceService>(() => _i76.ViamAppResourceServiceImpl(
        get<_i68.ResourceDataSource>(),
        get<_i33.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i77.ViamAppSensorService>(() => _i78.ViamAppSensorServiceImpl(
        get<_i69.SensorDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i79.BoatService>(() => _i80.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i50.CurrentBoatStore>(),
      ));
  gh.factory<_i81.ChangeBoatNameUseCase>(
      () => _i81.ChangeBoatNameUseCase(get<_i79.BoatService>()));
  gh.factory<_i82.CheckConnectionUseCase>(
      () => _i82.CheckConnectionUseCase(get<_i79.BoatService>()));
  gh.factory<_i83.DeleteBoatUseCase>(
      () => _i83.DeleteBoatUseCase(get<_i79.BoatService>()));
  gh.factory<_i84.GetBoatsUseCase>(
      () => _i84.GetBoatsUseCase(get<_i79.BoatService>()));
  gh.factory<_i85.GetCameraDataUseCase>(
      () => _i85.GetCameraDataUseCase(get<_i71.ViamAppCameraService>()));
  gh.factory<_i86.GetCameraPermissionStatusUseCase>(() =>
      _i86.GetCameraPermissionStatusUseCase(get<_i65.PermissionsService>()));
  gh.factory<_i87.GetCameraVideoUseCase>(
      () => _i87.GetCameraVideoUseCase(get<_i71.ViamAppCameraService>()));
  gh.factory<_i88.GetCurrentBoatIdUseCase>(
      () => _i88.GetCurrentBoatIdUseCase(get<_i79.BoatService>()));
  gh.factory<_i89.GetLinearVelocityUseCase>(
      () => _i89.GetLinearVelocityUseCase(get<_i73.ViamAppMovementService>()));
  gh.factory<_i90.GetPostionUseCase>(
      () => _i90.GetPostionUseCase(get<_i73.ViamAppMovementService>()));
  gh.factory<_i91.GetResourceNamesUseCase>(
      () => _i91.GetResourceNamesUseCase(get<_i75.ViamAppResourceService>()));
  gh.factory<_i92.GetSensorDataUseCase>(
      () => _i92.GetSensorDataUseCase(get<_i77.ViamAppSensorService>()));
  gh.factory<_i93.MainCubit>(
      () => _i93.MainCubit(get<_i91.GetResourceNamesUseCase>()));
  gh.factory<_i94.MapCubit>(() => _i94.MapCubit(
        get<_i90.GetPostionUseCase>(),
        get<_i92.GetSensorDataUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i95.RemoveCurrentBoatIdUseCase>(
      () => _i95.RemoveCurrentBoatIdUseCase(get<_i79.BoatService>()));
  gh.factory<_i96.SensorTileCubit>(() => _i96.SensorTileCubit(
        get<_i92.GetSensorDataUseCase>(),
        get<_i89.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i97.SetCurrentBoatIdUseCase>(
      () => _i97.SetCurrentBoatIdUseCase(get<_i79.BoatService>()));
  gh.factory<_i98.SettingsCubit>(() => _i98.SettingsCubit(
        get<_i84.GetBoatsUseCase>(),
        get<_i83.DeleteBoatUseCase>(),
        get<_i61.LogDeleteBoatEventUseCase>(),
        get<_i95.RemoveCurrentBoatIdUseCase>(),
        get<_i97.SetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i48.ChoosePhotoForBoatUseCase>(),
        get<_i46.CapturePhotoForBoatUseCase>(),
        get<_i63.LogoutUseCase>(),
      ));
  gh.factory<_i99.SubscribeToCameraStreamUseCase>(() =>
      _i99.SubscribeToCameraStreamUseCase(get<_i71.ViamAppCameraService>()));
  gh.factory<_i100.WebrtcCameraCubit>(() => _i100.WebrtcCameraCubit(
        get<_i87.GetCameraVideoUseCase>(),
        get<_i99.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i101.AddNewBoatUseCase>(
      () => _i101.AddNewBoatUseCase(get<_i79.BoatService>()));
  gh.factory<_i102.BoatListCubit>(() => _i102.BoatListCubit(
        get<_i84.GetBoatsUseCase>(),
        get<_i88.GetCurrentBoatIdUseCase>(),
        get<_i97.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i103.CameraTileCubit>(
      () => _i103.CameraTileCubit(get<_i85.GetCameraDataUseCase>()));
  gh.factory<_i104.ChangeBoatNameCubit>(() => _i104.ChangeBoatNameCubit(
        get<_i81.ChangeBoatNameUseCase>(),
        get<_i17.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i105.ConnectionErrorCubit>(() => _i105.ConnectionErrorCubit(
        get<_i49.ConnectToRobotUseCase>(),
        get<_i58.GetTokenOrNullUseCase>(),
        get<_i101.AddNewBoatUseCase>(),
        get<_i84.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i106.DashboardCubit>(() => _i106.DashboardCubit(
        get<_i84.GetBoatsUseCase>(),
        get<_i88.GetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i107.RobotsCubit>(() => _i107.RobotsCubit(
        get<_i57.GetRobotsUseCase>(),
        get<_i49.ConnectToRobotUseCase>(),
        get<_i58.GetTokenOrNullUseCase>(),
        get<_i101.AddNewBoatUseCase>(),
        get<_i84.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i108.AddBoatCubit>(() => _i108.AddBoatCubit(
        get<_i101.AddNewBoatUseCase>(),
        get<_i82.CheckConnectionUseCase>(),
        get<_i97.SetCurrentBoatIdUseCase>(),
        get<_i86.GetCameraPermissionStatusUseCase>(),
        get<_i67.RequestCameraPermissionUseCase>(),
        get<_i60.LogAddBoatEventUseCase>(),
        get<_i25.Uuid>(),
        get<_i84.GetBoatsUseCase>(),
        get<_i43.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i109.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i110.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i111.NavigatorKeyModule {}

class _$ImagePickerModule extends _i112.ImagePickerModule {}

class _$CameraPermissionModule extends _i113.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i114.SharedPreferencesModule {}

class _$UuidModule extends _i115.UuidModule {}

class _$ViamSdkModule extends _i116.ViamSdkModule {}
