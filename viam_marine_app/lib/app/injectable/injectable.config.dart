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
import '../data/boat/service/boat_service_impl.dart' as _i88;
import '../data/boat/store/boat_box_impl.dart' as _i5;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i53;
import '../data/camera/data_source/camera_api_data_source.dart' as _i46;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i29;
import '../data/camera/service/camera_service_impl.dart' as _i80;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i14;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i16;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i27;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i31;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import '../data/movement/service/movement_service_impl.dart' as _i82;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i47;
import '../data/permissions/service/permissions_service_impl.dart' as _i71;
import '../data/resource/data_source/resource_api_data_source.dart' as _i73;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i28;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i33;
import '../data/resource/service/resource_service_impl.dart' as _i84;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i74;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i34;
import '../data/sensor/service/sensor_service_impl.dart' as _i86;
import '../data/viam/data_source/viam_data_source.dart' as _i30;
import '../data/viam/service/viam_service_impl.dart' as _i36;
import '../data/viam/store/token_box.dart' as _i22;
import '../data/viam/store/token_store_impl.dart' as _i24;
import '../domain/analytics/service/analytics_service.dart' as _i38;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i65;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i66;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i67;
import '../domain/app_viam/service/app_viam_service.dart' as _i41;
import '../domain/app_viam/store/app_viam_store.dart' as _i43;
import '../domain/app_viam/usecase/get_location_id_use_case.dart' as _i54;
import '../domain/app_viam/usecase/get_location_use_case.dart' as _i55;
import '../domain/app_viam/usecase/get_locations_use_case.dart' as _i56;
import '../domain/app_viam/usecase/get_organization_id_use_case.dart' as _i57;
import '../domain/app_viam/usecase/get_organization_use_case.dart' as _i58;
import '../domain/app_viam/usecase/get_robot_id_use_case.dart' as _i60;
import '../domain/app_viam/usecase/get_robot_use_case.dart' as _i61;
import '../domain/app_viam/usecase/get_robots_use_case.dart' as _i62;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i59;
import '../domain/app_viam/usecase/set_location_id_use_case.dart' as _i75;
import '../domain/app_viam/usecase/set_organization_id_use_case.dart' as _i76;
import '../domain/app_viam/usecase/set_robot_id_use_case.dart' as _i77;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i6;
import '../domain/boat/service/boat_service.dart' as _i87;
import '../domain/boat/store/boat_box.dart' as _i4;
import '../domain/boat/store/current_boat_store.dart' as _i52;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i109;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i89;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i90;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i91;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i92;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i96;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i17;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i103;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i105;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i21;
import '../domain/camera/service/camera_service.dart' as _i79;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i93;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i95;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i107;
import '../domain/current_time/get_current_time_use_case.dart' as _i10;
import '../domain/local_photo/service/local_photo_service.dart' as _i15;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i48;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i50;
import '../domain/movement/service/movement_service.dart' as _i81;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i97;
import '../domain/movement/usecase/get_position_use_case.dart' as _i98;
import '../domain/permissions/service/permissions_service.dart' as _i70;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i94;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i72;
import '../domain/resource/service/resource_service.dart' as _i83;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i99;
import '../domain/sensor/service/sensor_service_impl.dart' as _i85;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i100;
import '../domain/viam/service/viam_service.dart' as _i35;
import '../domain/viam/store/token_store.dart' as _i23;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i45;
import '../domain/viam/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i49;
import '../domain/viam/usecase/connect_to_robot_use_case.dart' as _i51;
import '../domain/viam/usecase/get_robot_address_use_case.dart' as _i11;
import '../domain/viam/usecase/get_token_or_null_use_case.dart' as _i63;
import '../domain/viam/usecase/logout_use_case.dart' as _i68;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i117;
import '../presentation/page/analytics/cubit/analytics_cubit.dart' as _i3;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i110;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i108;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i112;
import '../presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i113;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i114;
import '../presentation/page/locations/cubit/locations_page_cubit.dart'
    as _i115;
import '../presentation/page/main/cubit/main_cubit.dart' as _i101;
import '../presentation/page/map/cubit/map_cubit.dart' as _i102;
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i69;
import '../presentation/page/organizations/widgets/location/cubit/location_cubit.dart'
    as _i64;
import '../presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart'
    as _i116;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i19;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i106;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i78;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i111;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i104;
import 'camera_permission_injectable.dart' as _i122;
import 'file_picker_injectable.dart' as _i118;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i119;
import 'image_picker_injectable.dart' as _i121;
import 'navigator_key_injectable.dart' as _i120;
import 'shared_preferences_injectable.dart' as _i123;
import 'uuid_injectable.dart' as _i124;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i125;

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
  gh.factory<_i51.ConnectToRobotUseCase>(
      () => _i51.ConnectToRobotUseCase(get<_i35.ViamService>()));
  gh.factory<_i52.CurrentBoatStore>(() =>
      _i53.SharedPreferencesCurrentBoatStore(get<_i20.SharedPreferences>()));
  gh.factory<_i54.GetLocationIdUseCase>(
      () => _i54.GetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i55.GetLocationUseCase>(
      () => _i55.GetLocationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i56.GetLocationsUseCase>(
      () => _i56.GetLocationsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i57.GetOrganizationIdUseCase>(
      () => _i57.GetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i58.GetOrganizationUseCase>(
      () => _i58.GetOrganizationUseCase(get<_i41.AppViamService>()));
  gh.factory<_i59.GetOrganizationsListUseCase>(
      () => _i59.GetOrganizationsListUseCase(get<_i41.AppViamService>()));
  gh.factory<_i60.GetRobotIdUseCase>(
      () => _i60.GetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i61.GetRobotUseCase>(
      () => _i61.GetRobotUseCase(get<_i41.AppViamService>()));
  gh.factory<_i62.GetRobotsUseCase>(
      () => _i62.GetRobotsUseCase(get<_i41.AppViamService>()));
  gh.factory<_i63.GetTokenOrNullUseCase>(
      () => _i63.GetTokenOrNullUseCase(get<_i23.TokenStore>()));
  gh.factory<_i64.LocationCubit>(
      () => _i64.LocationCubit(get<_i56.GetLocationsUseCase>()));
  gh.factory<_i65.LogAddBoatEventUseCase>(
      () => _i65.LogAddBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i66.LogDeleteBoatEventUseCase>(
      () => _i66.LogDeleteBoatEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i67.LogOpenAppEventUseCase>(
      () => _i67.LogOpenAppEventUseCase(get<_i38.AnalyticsService>()));
  gh.factory<_i68.LogoutUseCase>(
      () => _i68.LogoutUseCase(get<_i35.ViamService>()));
  gh.factory<_i69.OrganizationsCubit>(() => _i69.OrganizationsCubit(
        get<_i59.GetOrganizationsListUseCase>(),
        get<_i51.ConnectToRobotUseCase>(),
        get<_i63.GetTokenOrNullUseCase>(),
      ));
  gh.lazySingleton<_i70.PermissionsService>(() =>
      _i71.PermissionsServiceImpl(get<_i47.CameraPermissionDataSource>()));
  gh.factory<_i72.RequestCameraPermissionUseCase>(() =>
      _i72.RequestCameraPermissionUseCase(get<_i70.PermissionsService>()));
  gh.factory<_i73.ResourceDataSource>(
      () => _i73.ResourceDataSource(get<_i26.Viam>()));
  gh.factory<_i74.SensorDataSource>(
      () => _i74.SensorDataSource(get<_i26.Viam>()));
  gh.factory<_i75.SetLocationIdUseCase>(
      () => _i75.SetLocationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i76.SetOrganizationIdUseCase>(
      () => _i76.SetOrganizationIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i77.SetRobotIdUseCase>(
      () => _i77.SetRobotIdUseCase(get<_i43.AppViamStore>()));
  gh.factory<_i78.SplashCubit>(() =>
      _i78.SplashCubit(get<_i49.CheckIfHasTokenAndRefreshTokenUseCase>()));
  gh.factory<_i79.ViamAppCameraService>(() => _i80.ViamAppCameraServiceImpl(
        get<_i46.CameraDataSource>(),
        get<_i29.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i81.ViamAppMovementService>(() => _i82.ViamAppMovementServiceImpl(
        get<_i27.ViamAppMovementSdkDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i32.ViamPositionToViamAppPositionMapper>(),
        get<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i83.ViamAppResourceService>(() => _i84.ViamAppResourceServiceImpl(
        get<_i73.ResourceDataSource>(),
        get<_i33.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i85.ViamAppSensorService>(() => _i86.ViamAppSensorServiceImpl(
        get<_i74.SensorDataSource>(),
        get<_i28.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i34.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i87.BoatService>(() => _i88.BoatServiceImpl(
        get<_i4.BoatBox>(),
        get<_i52.CurrentBoatStore>(),
      ));
  gh.factory<_i89.ChangeBoatNameUseCase>(
      () => _i89.ChangeBoatNameUseCase(get<_i87.BoatService>()));
  gh.factory<_i90.CheckConnectionUseCase>(
      () => _i90.CheckConnectionUseCase(get<_i87.BoatService>()));
  gh.factory<_i91.DeleteBoatUseCase>(
      () => _i91.DeleteBoatUseCase(get<_i87.BoatService>()));
  gh.factory<_i92.GetBoatsUseCase>(
      () => _i92.GetBoatsUseCase(get<_i87.BoatService>()));
  gh.factory<_i93.GetCameraDataUseCase>(
      () => _i93.GetCameraDataUseCase(get<_i79.ViamAppCameraService>()));
  gh.factory<_i94.GetCameraPermissionStatusUseCase>(() =>
      _i94.GetCameraPermissionStatusUseCase(get<_i70.PermissionsService>()));
  gh.factory<_i95.GetCameraVideoUseCase>(
      () => _i95.GetCameraVideoUseCase(get<_i79.ViamAppCameraService>()));
  gh.factory<_i96.GetCurrentBoatIdUseCase>(
      () => _i96.GetCurrentBoatIdUseCase(get<_i87.BoatService>()));
  gh.factory<_i97.GetLinearVelocityUseCase>(
      () => _i97.GetLinearVelocityUseCase(get<_i81.ViamAppMovementService>()));
  gh.factory<_i98.GetPostionUseCase>(
      () => _i98.GetPostionUseCase(get<_i81.ViamAppMovementService>()));
  gh.factory<_i99.GetResourceNamesUseCase>(
      () => _i99.GetResourceNamesUseCase(get<_i83.ViamAppResourceService>()));
  gh.factory<_i100.GetSensorDataUseCase>(
      () => _i100.GetSensorDataUseCase(get<_i85.ViamAppSensorService>()));
  gh.factory<_i101.MainCubit>(
      () => _i101.MainCubit(get<_i99.GetResourceNamesUseCase>()));
  gh.factory<_i102.MapCubit>(() => _i102.MapCubit(
        get<_i98.GetPostionUseCase>(),
        get<_i100.GetSensorDataUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i103.RemoveCurrentBoatIdUseCase>(
      () => _i103.RemoveCurrentBoatIdUseCase(get<_i87.BoatService>()));
  gh.factory<_i104.SensorTileCubit>(() => _i104.SensorTileCubit(
        get<_i100.GetSensorDataUseCase>(),
        get<_i97.GetLinearVelocityUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i105.SetCurrentBoatIdUseCase>(
      () => _i105.SetCurrentBoatIdUseCase(get<_i87.BoatService>()));
  gh.factory<_i106.SettingsCubit>(() => _i106.SettingsCubit(
        get<_i92.GetBoatsUseCase>(),
        get<_i91.DeleteBoatUseCase>(),
        get<_i66.LogDeleteBoatEventUseCase>(),
        get<_i103.RemoveCurrentBoatIdUseCase>(),
        get<_i105.SetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
        get<_i50.ChoosePhotoForBoatUseCase>(),
        get<_i48.CapturePhotoForBoatUseCase>(),
        get<_i68.LogoutUseCase>(),
      ));
  gh.factory<_i107.SubscribeToCameraStreamUseCase>(() =>
      _i107.SubscribeToCameraStreamUseCase(get<_i79.ViamAppCameraService>()));
  gh.factory<_i108.WebrtcCameraCubit>(() => _i108.WebrtcCameraCubit(
        get<_i95.GetCameraVideoUseCase>(),
        get<_i107.SubscribeToCameraStreamUseCase>(),
        get<_i10.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i109.AddNewBoatUseCase>(
      () => _i109.AddNewBoatUseCase(get<_i87.BoatService>()));
  gh.factory<_i110.BoatListCubit>(() => _i110.BoatListCubit(
        get<_i92.GetBoatsUseCase>(),
        get<_i96.GetCurrentBoatIdUseCase>(),
        get<_i105.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i111.CameraTileCubit>(
      () => _i111.CameraTileCubit(get<_i93.GetCameraDataUseCase>()));
  gh.factory<_i112.ChangeBoatNameCubit>(() => _i112.ChangeBoatNameCubit(
        get<_i89.ChangeBoatNameUseCase>(),
        get<_i17.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i113.ConnectionErrorCubit>(() => _i113.ConnectionErrorCubit(
        get<_i51.ConnectToRobotUseCase>(),
        get<_i63.GetTokenOrNullUseCase>(),
        get<_i109.AddNewBoatUseCase>(),
        get<_i92.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i114.DashboardCubit>(() => _i114.DashboardCubit(
        get<_i92.GetBoatsUseCase>(),
        get<_i96.GetCurrentBoatIdUseCase>(),
        get<_i21.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i115.LocationsPageCubit>(() => _i115.LocationsPageCubit(
        get<_i56.GetLocationsUseCase>(),
        get<_i109.AddNewBoatUseCase>(),
        get<_i51.ConnectToRobotUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
        get<_i92.GetBoatsUseCase>(),
        get<_i62.GetRobotsUseCase>(),
        get<_i63.GetTokenOrNullUseCase>(),
        get<_i75.SetLocationIdUseCase>(),
        get<_i60.GetRobotIdUseCase>(),
        get<_i54.GetLocationIdUseCase>(),
        get<_i77.SetRobotIdUseCase>(),
      ));
  gh.factory<_i116.RobotsCubit>(() => _i116.RobotsCubit(
        get<_i62.GetRobotsUseCase>(),
        get<_i51.ConnectToRobotUseCase>(),
        get<_i63.GetTokenOrNullUseCase>(),
        get<_i109.AddNewBoatUseCase>(),
        get<_i92.GetBoatsUseCase>(),
        get<_i11.GetRobotAddressUseCase>(),
      ));
  gh.factory<_i117.AddBoatCubit>(() => _i117.AddBoatCubit(
        get<_i109.AddNewBoatUseCase>(),
        get<_i90.CheckConnectionUseCase>(),
        get<_i105.SetCurrentBoatIdUseCase>(),
        get<_i94.GetCameraPermissionStatusUseCase>(),
        get<_i72.RequestCameraPermissionUseCase>(),
        get<_i65.LogAddBoatEventUseCase>(),
        get<_i25.Uuid>(),
        get<_i92.GetBoatsUseCase>(),
        get<_i45.AuthenticateUseCase>(),
      ));
  return get;
}

class _$FilePickerModule extends _i118.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i119.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i120.NavigatorKeyModule {}

class _$ImagePickerModule extends _i121.ImagePickerModule {}

class _$CameraPermissionModule extends _i122.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i123.SharedPreferencesModule {}

class _$UuidModule extends _i124.UuidModule {}

class _$ViamSdkModule extends _i125.ViamSdkModule {}
