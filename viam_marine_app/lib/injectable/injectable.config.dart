// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth0_flutter/auth0_flutter.dart' as _i3;
import 'package:file_picker/file_picker.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i10;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:permission_handler/permission_handler.dart' as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i21;
import 'package:uuid/uuid.dart' as _i27;
import 'package:viam_marine/data/analytics/data_sink/analytics_data_sink.dart'
    as _i33;
import 'package:viam_marine/data/analytics/service/analytics_service_impl.dart'
    as _i35;
import 'package:viam_marine/data/app_viam/data_source/app_viam_data_source.dart'
    as _i73;
import 'package:viam_marine/data/app_viam/service/app_viam_service.dart'
    as _i75;
import 'package:viam_marine/data/app_viam/store/app_viam_store_impl.dart'
    as _i37;
import 'package:viam_marine/data/auth/data_source/auth_data_source.dart' as _i4;
import 'package:viam_marine/data/auth/service/auth_service_impl.dart' as _i39;
import 'package:viam_marine/data/auth/store/token_store_impl.dart' as _i26;
import 'package:viam_marine/data/boat/broadcaster/boat_update_broadcaster_impl.dart'
    as _i8;
import 'package:viam_marine/data/boat/service/boat_service_impl.dart' as _i77;
import 'package:viam_marine/data/boat/store/boat_box_impl.dart' as _i6;
import 'package:viam_marine/data/boat/store/shared_prefs_current_boat_store.dart'
    as _i48;
import 'package:viam_marine/data/camera/data_source/camera_api_data_source.dart'
    as _i78;
import 'package:viam_marine/data/camera/service/camera_service_impl.dart'
    as _i105;
import 'package:viam_marine/data/clear_cache/service/clear_cache_service_impl.dart'
    as _i45;
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart'
    as _i84;
import 'package:viam_marine/data/data_viam/service/viam_data_service_impl.dart'
    as _i109;
import 'package:viam_marine/data/local_photo/data_source/local_photo_data_source.dart'
    as _i15;
import 'package:viam_marine/data/local_photo/service/local_photo_service_impl.dart'
    as _i17;
import 'package:viam_marine/data/movement/data_source/movement_sdk_data_source.dart'
    as _i68;
import 'package:viam_marine/data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i30;
import 'package:viam_marine/data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i31;
import 'package:viam_marine/data/movement/service/movement_service_impl.dart'
    as _i70;
import 'package:viam_marine/data/permissions/data_source/camera_permission_data_source.dart'
    as _i40;
import 'package:viam_marine/data/permissions/service/permissions_service_impl.dart'
    as _i59;
import 'package:viam_marine/data/resource/data_source/resource_api_data_source.dart'
    as _i100;
import 'package:viam_marine/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i29;
import 'package:viam_marine/data/resource/service/resource_service_impl.dart'
    as _i107;
import 'package:viam_marine/data/sensor/data_source/sensor_api_data_source.dart'
    as _i62;
import 'package:viam_marine/data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i32;
import 'package:viam_marine/data/sensor/service/sensor_service_impl.dart'
    as _i72;
import 'package:viam_marine/data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i24;
import 'package:viam_marine/domain/analytics/service/analytics_service.dart'
    as _i34;
import 'package:viam_marine/domain/analytics/usecase/log_add_boat_event_use_case.dart'
    as _i53;
import 'package:viam_marine/domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i54;
import 'package:viam_marine/domain/analytics/usecase/log_open_app_event_use_case.dart'
    as _i55;
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart'
    as _i74;
import 'package:viam_marine/domain/app_viam/store/app_viam_store.dart' as _i36;
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart'
    as _i49;
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart'
    as _i91;
import 'package:viam_marine/domain/app_viam/usecase/get_main_part_address_use_case.dart'
    as _i92;
import 'package:viam_marine/domain/app_viam/usecase/get_organization_id_use_case.dart'
    as _i50;
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart'
    as _i51;
import 'package:viam_marine/domain/app_viam/usecase/get_robots_use_case.dart'
    as _i95;
import 'package:viam_marine/domain/app_viam/usecase/list_organizations_use_case.dart'
    as _i93;
import 'package:viam_marine/domain/app_viam/usecase/set_location_id_use_case.dart'
    as _i63;
import 'package:viam_marine/domain/app_viam/usecase/set_organization_id_use_case.dart'
    as _i64;
import 'package:viam_marine/domain/app_viam/usecase/set_robot_id_use_case.dart'
    as _i65;
import 'package:viam_marine/domain/auth/service/auth_service.dart' as _i38;
import 'package:viam_marine/domain/auth/store/token_store.dart' as _i25;
import 'package:viam_marine/domain/auth/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i42;
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart'
    as _i52;
import 'package:viam_marine/domain/auth/usecase/login_use_case.dart' as _i56;
import 'package:viam_marine/domain/auth/usecase/logout_use_case.dart' as _i57;
import 'package:viam_marine/domain/boat/broadcaster/boat_update_broadcaster.dart'
    as _i7;
import 'package:viam_marine/domain/boat/service/boat_service.dart' as _i76;
import 'package:viam_marine/domain/boat/store/boat_box.dart' as _i5;
import 'package:viam_marine/domain/boat/store/current_boat_store.dart' as _i47;
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart'
    as _i110;
import 'package:viam_marine/domain/boat/usecase/change_boat_name_use_case.dart'
    as _i79;
import 'package:viam_marine/domain/boat/usecase/delete_boat_use_case.dart'
    as _i85;
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart'
    as _i86;
import 'package:viam_marine/domain/boat/usecase/get_current_boat_id_use_case.dart'
    as _i89;
import 'package:viam_marine/domain/boat/usecase/notify_boat_name_update_use_case.dart'
    as _i18;
import 'package:viam_marine/domain/boat/usecase/remove_current_boat_id_use_case.dart'
    as _i99;
import 'package:viam_marine/domain/boat/usecase/set_current_boat_id_use_case.dart'
    as _i102;
import 'package:viam_marine/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i22;
import 'package:viam_marine/domain/camera/service/camera_service.dart' as _i104;
import 'package:viam_marine/domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i128;
import 'package:viam_marine/domain/clear_cache/service/clear_cache_service.dart'
    as _i44;
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart'
    as _i46;
import 'package:viam_marine/domain/current_time/get_current_time_use_case.dart'
    as _i12;
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart'
    as _i108;
import 'package:viam_marine/domain/data_viam/use_case/fetch_fuel_consumption_data_use_case.dart'
    as _i116;
import 'package:viam_marine/domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i117;
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i118;
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i119;
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i121;
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i122;
import 'package:viam_marine/domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i125;
import 'package:viam_marine/domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i126;
import 'package:viam_marine/domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i127;
import 'package:viam_marine/domain/data_viam/use_case/subscribe_to_fuel_consumption_stream_use_case.dart'
    as _i129;
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i130;
import 'package:viam_marine/domain/local_photo/service/local_photo_service.dart'
    as _i16;
import 'package:viam_marine/domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i41;
import 'package:viam_marine/domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i43;
import 'package:viam_marine/domain/movement/service/movement_service.dart'
    as _i69;
import 'package:viam_marine/domain/movement/usecase/get_compass_heading_use_case.dart'
    as _i88;
import 'package:viam_marine/domain/movement/usecase/get_linear_velocity_use_case.dart'
    as _i90;
import 'package:viam_marine/domain/movement/usecase/get_position_use_case.dart'
    as _i94;
import 'package:viam_marine/domain/permissions/service/permissions_service.dart'
    as _i58;
import 'package:viam_marine/domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i87;
import 'package:viam_marine/domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i60;
import 'package:viam_marine/domain/resource/service/resource_service.dart'
    as _i106;
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart'
    as _i120;
import 'package:viam_marine/domain/robot_manager/use_case/check_connection_use_case.dart'
    as _i80;
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_analytics_use_case.dart'
    as _i81;
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_app_viam_use_case.dart'
    as _i82;
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_robot_use_case.dart'
    as _i83;
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart'
    as _i71;
import 'package:viam_marine/domain/sensor/usecase/get_sensor_data_use_case.dart'
    as _i96;
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i23;
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i67;
import 'package:viam_marine/injectable/auth0_client_injectable.dart' as _i144;
import 'package:viam_marine/injectable/camera_permission_injectable.dart'
    as _i150;
import 'package:viam_marine/injectable/file_picker_injectable.dart' as _i146;
import 'package:viam_marine/injectable/firebase_analytics_injectable/analytics_injectable.dart'
    as _i147;
import 'package:viam_marine/injectable/flutter_secure_storage_injectable.dart'
    as _i143;
import 'package:viam_marine/injectable/image_picker_injectable.dart' as _i149;
import 'package:viam_marine/injectable/navigator_key_injectable.dart' as _i145;
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart'
    as _i61;
import 'package:viam_marine/injectable/shared_preferences_injectable.dart'
    as _i148;
import 'package:viam_marine/injectable/uuid_injectable.dart' as _i151;
import 'package:viam_marine/injectable/viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i152;
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart'
    as _i111;
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i136;
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i139;
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i141;
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i132;
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i134;
import 'package:viam_marine/presentation/page/boat_list/cubit/boat_list_cubit.dart'
    as _i112;
import 'package:viam_marine/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i135;
import 'package:viam_marine/presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i113;
import 'package:viam_marine/presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i114;
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart'
    as _i115;
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i137;
import 'package:viam_marine/presentation/page/filters/cubit/filters_cubit.dart'
    as _i138;
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i140;
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i142;
import 'package:viam_marine/presentation/page/login/cubit/login_page_cubit.dart'
    as _i97;
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart'
    as _i123;
import 'package:viam_marine/presentation/page/map/cubit/map_cubit.dart' as _i98;
import 'package:viam_marine/presentation/page/scan_qr/cubit/scan_qr_cubit.dart'
    as _i20;
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i124;
import 'package:viam_marine/presentation/page/settings/cubit/settings_cubit.dart'
    as _i103;
import 'package:viam_marine/presentation/page/splash/cubit/splash_cubit.dart'
    as _i66;
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart'
    as _i131;
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i133;
import 'package:viam_marine/presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i101;
import 'package:viam_sdk/viam_sdk.dart' as _i28;

const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final auth0ClientModule = _$Auth0ClientModule();
    final filePickerModule = _$FilePickerModule();
    final firebaseAnalyticsModule = _$FirebaseAnalyticsModule();
    final flutterSecureStorageModule = _$FlutterSecureStorageModule();
    final navigatorKeyModule = _$NavigatorKeyModule();
    final imagePickerModule = _$ImagePickerModule();
    final cameraPermissionModule = _$CameraPermissionModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final uuidModule = _$UuidModule();
    final viamSdkDirectDataClientModule = _$ViamSdkDirectDataClientModule();
    final viamSdkModule = _$ViamSdkModule();
    gh.singleton<_i3.Auth0>(auth0ClientModule.auth0Client);
    gh.factory<_i4.AuthDataSource>(() => _i4.AuthDataSource(gh<_i3.Auth0>()));
    gh.singleton<_i5.BoatBox>(_i6.CurrentBoatBoxImpl());
    gh.lazySingleton<_i7.BoatUpdateBroadcaster>(
        () => _i8.BoatChangeBroadcasterImpl());
    gh.factory<_i9.FilePicker>(() => filePickerModule.filePicker);
    gh.singleton<_i10.FirebaseAnalytics>(
      firebaseAnalyticsModule.testInstance,
      registerFor: {_test},
    );
    gh.lazySingleton<_i10.FirebaseAnalytics>(
      () => firebaseAnalyticsModule.instance,
      registerFor: {
        _dev,
        _prod,
        _staging,
      },
    );
    gh.singleton<_i11.FlutterSecureStorage>(
        flutterSecureStorageModule.flutterSecureStorage);
    gh.factory<_i12.GetCurrentTimeUseCase>(() => _i12.GetCurrentTimeUseCase());
    gh.singleton<_i13.GlobalKey<_i13.NavigatorState>>(
        navigatorKeyModule.navigatorKey());
    gh.factory<_i14.ImagePicker>(() => imagePickerModule.imagePicker);
    gh.factory<_i15.LocalPhotoDataSource>(() => _i15.LocalPhotoDataSource(
          gh<_i14.ImagePicker>(),
          gh<_i9.FilePicker>(),
        ));
    gh.factory<_i16.LocalPhotoService>(() => _i17.LocalPhotoServiceImpl(
          gh<_i15.LocalPhotoDataSource>(),
          gh<_i5.BoatBox>(),
        ));
    gh.factory<_i18.NotifyBoatNameUpdateUseCase>(() =>
        _i18.NotifyBoatNameUpdateUseCase(gh<_i7.BoatUpdateBroadcaster>()));
    gh.singleton<_i19.Permission>(cameraPermissionModule.cameraPermission);
    gh.factory<_i20.ScanQrCubit>(() => _i20.ScanQrCubit());
    await gh.factoryAsync<_i21.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i22.SubscribeToBoatUpdateStreamUseCase>(() =>
        _i22.SubscribeToBoatUpdateStreamUseCase(
            gh<_i7.BoatUpdateBroadcaster>()));
    gh.singleton<_i23.TokenExpiredBroadcaster>(
        _i24.TokenExpiredBroadcasterImpl());
    gh.factory<_i25.TokenStore>(
        () => _i26.TokenStoreImpl(gh<_i11.FlutterSecureStorage>()));
    gh.singleton<_i27.Uuid>(uuidModule.uuid);
    gh.singleton<_i28.Viam>(
      viamSdkDirectDataClientModule.viam,
      instanceName: 'directDataClient',
    );
    gh.singleton<_i28.Viam>(
      viamSdkModule.viam,
      instanceName: 'viamSdk',
    );
    gh.factory<_i29.ViamAppResourceNameToViamResourceNameMapper>(
        () => _i29.ViamAppResourceNameToViamResourceNameMapper());
    gh.factory<_i30.ViamLinearVelocityToViamAppLinearVelocityMapper>(
        () => _i30.ViamLinearVelocityToViamAppLinearVelocityMapper());
    gh.factory<_i31.ViamPositionToViamAppPositionMapper>(
        () => _i31.ViamPositionToViamAppPositionMapper());
    gh.factory<_i32.ViamSensorReadingsToViamAppSensorReadingsMapper>(
        () => _i32.ViamSensorReadingsToViamAppSensorReadingsMapper());
    gh.factory<_i33.AnalyticsDataSink>(
        () => _i33.AnalyticsDataSinkImpl(gh<_i10.FirebaseAnalytics>()));
    gh.factory<_i34.AnalyticsService>(
        () => _i35.AnalyticsServiceImpl(gh<_i33.AnalyticsDataSink>()));
    gh.factory<_i36.AppViamStore>(
        () => _i37.SharedPreferencesAppViamStore(gh<_i21.SharedPreferences>()));
    gh.lazySingleton<_i38.AuthService>(() => _i39.AuthServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i4.AuthDataSource>(),
          gh<_i25.TokenStore>(),
        ));
    gh.factory<_i40.CameraPermissionDataSource>(
        () => _i40.CameraPermissionDataSource(gh<_i19.Permission>()));
    gh.factory<_i41.CapturePhotoForBoatUseCase>(
        () => _i41.CapturePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i42.CheckIfHasTokenAndRefreshTokenUseCase>(() =>
        _i42.CheckIfHasTokenAndRefreshTokenUseCase(gh<_i25.TokenStore>()));
    gh.factory<_i43.ChoosePhotoForBoatUseCase>(
        () => _i43.ChoosePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i44.ClearCacheService>(() => _i45.ClearCacheServiceImpl(
          gh<_i25.TokenStore>(),
          gh<_i36.AppViamStore>(),
        ));
    gh.factory<_i46.ClearCacheUseCase>(
        () => _i46.ClearCacheUseCase(gh<_i44.ClearCacheService>()));
    gh.factory<_i47.CurrentBoatStore>(() =>
        _i48.SharedPreferencesCurrentBoatStore(gh<_i21.SharedPreferences>()));
    gh.factory<_i49.GetLocationIdUseCase>(
        () => _i49.GetLocationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i50.GetOrganizationIdUseCase>(
        () => _i50.GetOrganizationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i51.GetRobotIdUseCase>(
        () => _i51.GetRobotIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i52.GetTokenOrNullUseCase>(
        () => _i52.GetTokenOrNullUseCase(gh<_i25.TokenStore>()));
    gh.factory<_i53.LogAddBoatEventUseCase>(
        () => _i53.LogAddBoatEventUseCase(gh<_i34.AnalyticsService>()));
    gh.factory<_i54.LogDeleteBoatEventUseCase>(
        () => _i54.LogDeleteBoatEventUseCase(gh<_i34.AnalyticsService>()));
    gh.factory<_i55.LogOpenAppEventUseCase>(
        () => _i55.LogOpenAppEventUseCase(gh<_i34.AnalyticsService>()));
    gh.factory<_i56.LoginUseCase>(
        () => _i56.LoginUseCase(gh<_i38.AuthService>()));
    gh.factory<_i57.LogoutUseCase>(
        () => _i57.LogoutUseCase(gh<_i38.AuthService>()));
    gh.lazySingleton<_i58.PermissionsService>(() =>
        _i59.PermissionsServiceImpl(gh<_i40.CameraPermissionDataSource>()));
    gh.factory<_i60.RequestCameraPermissionUseCase>(() =>
        _i60.RequestCameraPermissionUseCase(gh<_i58.PermissionsService>()));
    gh.singleton<_i61.RobotManager>(
        _i61.RobotManager(gh<_i28.Viam>(instanceName: 'directDataClient')));
    gh.factory<_i62.SensorDataSource>(
        () => _i62.SensorDataSource(gh<_i61.RobotManager>()));
    gh.factory<_i63.SetLocationIdUseCase>(
        () => _i63.SetLocationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i64.SetOrganizationIdUseCase>(
        () => _i64.SetOrganizationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i65.SetRobotIdUseCase>(
        () => _i65.SetRobotIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i66.SplashCubit>(() =>
        _i66.SplashCubit(gh<_i42.CheckIfHasTokenAndRefreshTokenUseCase>()));
    gh.factory<_i67.SubscribeToTokenExpiredStreamUseCase>(() =>
        _i67.SubscribeToTokenExpiredStreamUseCase(
            gh<_i23.TokenExpiredBroadcaster>()));
    gh.factory<_i68.ViamAppMovementSdkDataSource>(
        () => _i68.ViamAppMovementSdkDataSource(gh<_i61.RobotManager>()));
    gh.factory<_i69.ViamAppMovementService>(
        () => _i70.ViamAppMovementServiceImpl(
              gh<_i23.TokenExpiredBroadcaster>(),
              gh<_i68.ViamAppMovementSdkDataSource>(),
            ));
    gh.factory<_i71.ViamAppSensorService>(() => _i72.ViamAppSensorServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i62.SensorDataSource>(),
        ));
    gh.factory<_i73.AppViamDataSource>(
        () => _i73.AppViamDataSource(gh<_i61.RobotManager>()));
    gh.lazySingleton<_i74.AppViamService>(() => _i75.AppViamServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i73.AppViamDataSource>(),
        ));
    gh.factory<_i76.BoatService>(() => _i77.BoatServiceImpl(
          gh<_i5.BoatBox>(),
          gh<_i47.CurrentBoatStore>(),
        ));
    gh.factory<_i78.CameraDataSource>(
        () => _i78.CameraDataSource(gh<_i61.RobotManager>()));
    gh.factory<_i79.ChangeBoatNameUseCase>(
        () => _i79.ChangeBoatNameUseCase(gh<_i76.BoatService>()));
    gh.factory<_i80.CheckConnectionUseCase>(() => _i80.CheckConnectionUseCase(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i61.RobotManager>(),
        ));
    gh.factory<_i81.ConnectToAnalyticsUseCase>(
        () => _i81.ConnectToAnalyticsUseCase(
              gh<_i23.TokenExpiredBroadcaster>(),
              gh<_i61.RobotManager>(),
            ));
    gh.factory<_i82.ConnectToAppViamUseCase>(() => _i82.ConnectToAppViamUseCase(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i61.RobotManager>(),
        ));
    gh.factory<_i83.ConnectToRobotUseCase>(() => _i83.ConnectToRobotUseCase(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i61.RobotManager>(),
        ));
    gh.factory<_i84.DataViamDataSource>(
        () => _i84.DataViamDataSource(gh<_i61.RobotManager>()));
    gh.factory<_i85.DeleteBoatUseCase>(
        () => _i85.DeleteBoatUseCase(gh<_i76.BoatService>()));
    gh.factory<_i86.GetBoatsUseCase>(
        () => _i86.GetBoatsUseCase(gh<_i76.BoatService>()));
    gh.factory<_i87.GetCameraPermissionStatusUseCase>(() =>
        _i87.GetCameraPermissionStatusUseCase(gh<_i58.PermissionsService>()));
    gh.factory<_i88.GetCompassHeadingUseCase>(
        () => _i88.GetCompassHeadingUseCase(gh<_i69.ViamAppMovementService>()));
    gh.factory<_i89.GetCurrentBoatIdUseCase>(
        () => _i89.GetCurrentBoatIdUseCase(gh<_i76.BoatService>()));
    gh.factory<_i90.GetLinearVelocityUseCase>(
        () => _i90.GetLinearVelocityUseCase(gh<_i69.ViamAppMovementService>()));
    gh.factory<_i91.GetLocationsUseCase>(
        () => _i91.GetLocationsUseCase(gh<_i74.AppViamService>()));
    gh.factory<_i92.GetMainPartAddressUseCase>(
        () => _i92.GetMainPartAddressUseCase(gh<_i74.AppViamService>()));
    gh.factory<_i93.GetOrganizationsListUseCase>(
        () => _i93.GetOrganizationsListUseCase(gh<_i74.AppViamService>()));
    gh.factory<_i94.GetPostionUseCase>(
        () => _i94.GetPostionUseCase(gh<_i69.ViamAppMovementService>()));
    gh.factory<_i95.GetRobotsUseCase>(
        () => _i95.GetRobotsUseCase(gh<_i74.AppViamService>()));
    gh.factory<_i96.GetSensorDataUseCase>(
        () => _i96.GetSensorDataUseCase(gh<_i71.ViamAppSensorService>()));
    gh.factory<_i97.LoginPageCubit>(
        () => _i97.LoginPageCubit(gh<_i56.LoginUseCase>()));
    gh.factory<_i98.MapCubit>(() => _i98.MapCubit(
          gh<_i94.GetPostionUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
          gh<_i88.GetCompassHeadingUseCase>(),
        ));
    gh.factory<_i99.RemoveCurrentBoatIdUseCase>(
        () => _i99.RemoveCurrentBoatIdUseCase(gh<_i76.BoatService>()));
    gh.factory<_i100.ResourceDataSource>(
        () => _i100.ResourceDataSource(gh<_i61.RobotManager>()));
    gh.factory<_i101.SensorTileCubit>(() => _i101.SensorTileCubit(
          gh<_i96.GetSensorDataUseCase>(),
          gh<_i90.GetLinearVelocityUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
          gh<_i88.GetCompassHeadingUseCase>(),
        ));
    gh.factory<_i102.SetCurrentBoatIdUseCase>(
        () => _i102.SetCurrentBoatIdUseCase(gh<_i76.BoatService>()));
    gh.factory<_i103.SettingsCubit>(() => _i103.SettingsCubit(
          gh<_i86.GetBoatsUseCase>(),
          gh<_i22.SubscribeToBoatUpdateStreamUseCase>(),
          gh<_i43.ChoosePhotoForBoatUseCase>(),
          gh<_i41.CapturePhotoForBoatUseCase>(),
          gh<_i57.LogoutUseCase>(),
          gh<_i46.ClearCacheUseCase>(),
        ));
    gh.factory<_i104.ViamAppCameraService>(() => _i105.ViamAppCameraServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i78.CameraDataSource>(),
        ));
    gh.factory<_i106.ViamAppResourceService>(
        () => _i107.ViamAppResourceServiceImpl(
              gh<_i23.TokenExpiredBroadcaster>(),
              gh<_i100.ResourceDataSource>(),
            ));
    gh.lazySingleton<_i108.ViamDataService>(() => _i109.ViamDataServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i84.DataViamDataSource>(),
        ));
    gh.factory<_i110.AddNewBoatUseCase>(
        () => _i110.AddNewBoatUseCase(gh<_i76.BoatService>()));
    gh.factory<_i111.AnalyticsCubit>(() => _i111.AnalyticsCubit(
          gh<_i81.ConnectToAnalyticsUseCase>(),
          gh<_i52.GetTokenOrNullUseCase>(),
        ));
    gh.factory<_i112.BoatListCubit>(() => _i112.BoatListCubit(
          gh<_i86.GetBoatsUseCase>(),
          gh<_i89.GetCurrentBoatIdUseCase>(),
          gh<_i102.SetCurrentBoatIdUseCase>(),
        ));
    gh.factory<_i113.ChangeBoatNameCubit>(() => _i113.ChangeBoatNameCubit(
          gh<_i79.ChangeBoatNameUseCase>(),
          gh<_i18.NotifyBoatNameUpdateUseCase>(),
        ));
    gh.factory<_i114.ConnectionErrorCubit>(() => _i114.ConnectionErrorCubit(
          gh<_i83.ConnectToRobotUseCase>(),
          gh<_i110.AddNewBoatUseCase>(),
          gh<_i86.GetBoatsUseCase>(),
          gh<_i92.GetMainPartAddressUseCase>(),
        ));
    gh.factory<_i115.DashboardCubit>(() => _i115.DashboardCubit(
          gh<_i86.GetBoatsUseCase>(),
          gh<_i89.GetCurrentBoatIdUseCase>(),
          gh<_i22.SubscribeToBoatUpdateStreamUseCase>(),
        ));
    gh.factory<_i116.FetchFuelConsumptionDataUseCase>(() =>
        _i116.FetchFuelConsumptionDataUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i117.GetCurrentWaterFiltersUseCase>(
        () => _i117.GetCurrentWaterFiltersUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i118.GetDepthOverTimeDataUseCase>(
        () => _i118.GetDepthOverTimeDataUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i119.GetFuelConsumptionPerMileDataUseCase>(() =>
        _i119.GetFuelConsumptionPerMileDataUseCase(
            gh<_i108.ViamDataService>()));
    gh.factory<_i120.GetResourceNamesUseCase>(() =>
        _i120.GetResourceNamesUseCase(gh<_i106.ViamAppResourceService>()));
    gh.factory<_i121.GetWaterDepthDataUseCase>(
        () => _i121.GetWaterDepthDataUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i122.GetWaterTemperatureDataUseCase>(() =>
        _i122.GetWaterTemperatureDataUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i123.MainCubit>(() => _i123.MainCubit(
          gh<_i120.GetResourceNamesUseCase>(),
          gh<_i52.GetTokenOrNullUseCase>(),
          gh<_i67.SubscribeToTokenExpiredStreamUseCase>(),
          gh<_i46.ClearCacheUseCase>(),
          gh<_i83.ConnectToRobotUseCase>(),
          gh<_i80.CheckConnectionUseCase>(),
        ));
    gh.factory<_i124.SelectRobotCubit>(() => _i124.SelectRobotCubit(
          gh<_i110.AddNewBoatUseCase>(),
          gh<_i83.ConnectToRobotUseCase>(),
          gh<_i86.GetBoatsUseCase>(),
          gh<_i49.GetLocationIdUseCase>(),
          gh<_i91.GetLocationsUseCase>(),
          gh<_i50.GetOrganizationIdUseCase>(),
          gh<_i93.GetOrganizationsListUseCase>(),
          gh<_i92.GetMainPartAddressUseCase>(),
          gh<_i51.GetRobotIdUseCase>(),
          gh<_i95.GetRobotsUseCase>(),
          gh<_i52.GetTokenOrNullUseCase>(),
          gh<_i63.SetLocationIdUseCase>(),
          gh<_i64.SetOrganizationIdUseCase>(),
          gh<_i65.SetRobotIdUseCase>(),
          gh<_i67.SubscribeToTokenExpiredStreamUseCase>(),
          gh<_i46.ClearCacheUseCase>(),
          gh<_i57.LogoutUseCase>(),
          gh<_i82.ConnectToAppViamUseCase>(),
        ));
    gh.factory<_i125.SetDepthOverTimeFiltersUseCase>(() =>
        _i125.SetDepthOverTimeFiltersUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i126.SetWaterDepthFiltersUseCase>(
        () => _i126.SetWaterDepthFiltersUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i127.SetWaterTemperatureFiltersUseCase>(() =>
        _i127.SetWaterTemperatureFiltersUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i128.SubscribeToCameraStreamUseCase>(() =>
        _i128.SubscribeToCameraStreamUseCase(gh<_i104.ViamAppCameraService>()));
    gh.factory<_i129.SubscribeToFuelConsumptionStreamUseCase>(() =>
        _i129.SubscribeToFuelConsumptionStreamUseCase(
            gh<_i108.ViamDataService>()));
    gh.factory<_i130.SubscribeToRefreshFiltersUseCase>(() =>
        _i130.SubscribeToRefreshFiltersUseCase(gh<_i108.ViamDataService>()));
    gh.factory<_i131.WaterDepthCubit>(() => _i131.WaterDepthCubit(
          gh<_i121.GetWaterDepthDataUseCase>(),
          gh<_i130.SubscribeToRefreshFiltersUseCase>(),
          gh<_i126.SetWaterDepthFiltersUseCase>(),
        ));
    gh.factory<_i132.WaterDepthCubit>(() => _i132.WaterDepthCubit(
          gh<_i121.GetWaterDepthDataUseCase>(),
          gh<_i130.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i133.WaterTemperatureCubit>(() => _i133.WaterTemperatureCubit(
          gh<_i122.GetWaterTemperatureDataUseCase>(),
          gh<_i130.SubscribeToRefreshFiltersUseCase>(),
          gh<_i127.SetWaterTemperatureFiltersUseCase>(),
        ));
    gh.factory<_i134.WaterTemperatureCubit>(() => _i134.WaterTemperatureCubit(
          gh<_i122.GetWaterTemperatureDataUseCase>(),
          gh<_i130.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i135.WebrtcCameraCubit>(() => _i135.WebrtcCameraCubit(
          gh<_i128.SubscribeToCameraStreamUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
        ));
    gh.factory<_i136.DepthOverTimeCubit>(() => _i136.DepthOverTimeCubit(
          gh<_i118.GetDepthOverTimeDataUseCase>(),
          gh<_i130.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i137.DepthOverTimePageCubit>(() => _i137.DepthOverTimePageCubit(
          gh<_i118.GetDepthOverTimeDataUseCase>(),
          gh<_i130.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i138.FiltersCubit>(() => _i138.FiltersCubit(
          gh<_i117.GetCurrentWaterFiltersUseCase>(),
          gh<_i126.SetWaterDepthFiltersUseCase>(),
          gh<_i127.SetWaterTemperatureFiltersUseCase>(),
          gh<_i125.SetDepthOverTimeFiltersUseCase>(),
        ));
    gh.factory<_i139.FuelConsumptionOverTimeCubit>(
        () => _i139.FuelConsumptionOverTimeCubit(
              gh<_i116.FetchFuelConsumptionDataUseCase>(),
              gh<_i129.SubscribeToFuelConsumptionStreamUseCase>(),
            ));
    gh.factory<_i140.FuelConsumptionOverTimePageCubit>(
        () => _i140.FuelConsumptionOverTimePageCubit(
              gh<_i116.FetchFuelConsumptionDataUseCase>(),
              gh<_i129.SubscribeToFuelConsumptionStreamUseCase>(),
            ));
    gh.factory<_i141.FuelConsumptionPerMileCubit>(() =>
        _i141.FuelConsumptionPerMileCubit(
            gh<_i119.GetFuelConsumptionPerMileDataUseCase>()));
    gh.factory<_i142.FuelConsumptionPerMilePageCubit>(() =>
        _i142.FuelConsumptionPerMilePageCubit(
            gh<_i119.GetFuelConsumptionPerMileDataUseCase>()));
    return this;
  }
}

class _$FlutterSecureStorageModule extends _i143.FlutterSecureStorageModule {}

class _$Auth0ClientModule extends _i144.Auth0ClientModule {}

class _$NavigatorKeyModule extends _i145.NavigatorKeyModule {}

class _$FilePickerModule extends _i146.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i147.FirebaseAnalyticsModule {}

class _$SharedPreferencesModule extends _i148.SharedPreferencesModule {}

class _$ImagePickerModule extends _i149.ImagePickerModule {}

class _$CameraPermissionModule extends _i150.CameraPermissionModule {}

class _$UuidModule extends _i151.UuidModule {}

class _$ViamSdkModule extends _i152.ViamSdkModule {}

class _$ViamSdkDirectDataClientModule
    extends _i152.ViamSdkDirectDataClientModule {}
