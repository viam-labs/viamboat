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
import 'package:shared_preferences/shared_preferences.dart' as _i22;
import 'package:uuid/uuid.dart' as _i28;
import 'package:viam_marine/data/analytics/data_sink/analytics_data_sink.dart'
    as _i34;
import 'package:viam_marine/data/analytics/service/analytics_service_impl.dart'
    as _i36;
import 'package:viam_marine/data/app_viam/data_source/app_viam_data_source.dart'
    as _i74;
import 'package:viam_marine/data/app_viam/service/app_viam_service.dart'
    as _i76;
import 'package:viam_marine/data/app_viam/store/app_viam_store_impl.dart'
    as _i38;
import 'package:viam_marine/data/auth/data_source/auth_data_source.dart' as _i4;
import 'package:viam_marine/data/auth/service/auth_service_impl.dart' as _i40;
import 'package:viam_marine/data/auth/store/token_store_impl.dart' as _i27;
import 'package:viam_marine/data/boat/broadcaster/boat_update_broadcaster_impl.dart'
    as _i8;
import 'package:viam_marine/data/boat/service/boat_service_impl.dart' as _i78;
import 'package:viam_marine/data/boat/store/boat_box_impl.dart' as _i6;
import 'package:viam_marine/data/boat/store/shared_prefs_current_boat_store.dart'
    as _i49;
import 'package:viam_marine/data/camera/data_source/camera_api_data_source.dart'
    as _i79;
import 'package:viam_marine/data/camera/service/camera_service_impl.dart'
    as _i106;
import 'package:viam_marine/data/clear_cache/service/clear_cache_service_impl.dart'
    as _i46;
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart'
    as _i85;
import 'package:viam_marine/data/data_viam/service/viam_data_service_impl.dart'
    as _i110;
import 'package:viam_marine/data/local_photo/data_source/local_photo_data_source.dart'
    as _i15;
import 'package:viam_marine/data/local_photo/service/local_photo_service_impl.dart'
    as _i17;
import 'package:viam_marine/data/movement/data_source/movement_sdk_data_source.dart'
    as _i69;
import 'package:viam_marine/data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i31;
import 'package:viam_marine/data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i32;
import 'package:viam_marine/data/movement/service/movement_service_impl.dart'
    as _i71;
import 'package:viam_marine/data/permissions/data_source/camera_permission_data_source.dart'
    as _i41;
import 'package:viam_marine/data/permissions/service/permissions_service_impl.dart'
    as _i60;
import 'package:viam_marine/data/resource/data_source/resource_api_data_source.dart'
    as _i101;
import 'package:viam_marine/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i30;
import 'package:viam_marine/data/resource/service/resource_service_impl.dart'
    as _i108;
import 'package:viam_marine/data/sensor/data_source/sensor_api_data_source.dart'
    as _i63;
import 'package:viam_marine/data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i33;
import 'package:viam_marine/data/sensor/service/sensor_service_impl.dart'
    as _i73;
import 'package:viam_marine/data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i25;
import 'package:viam_marine/domain/analytics/service/analytics_service.dart'
    as _i35;
import 'package:viam_marine/domain/analytics/usecase/log_add_boat_event_use_case.dart'
    as _i54;
import 'package:viam_marine/domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i55;
import 'package:viam_marine/domain/analytics/usecase/log_open_app_event_use_case.dart'
    as _i56;
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart'
    as _i75;
import 'package:viam_marine/domain/app_viam/store/app_viam_store.dart' as _i37;
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart'
    as _i50;
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart'
    as _i92;
import 'package:viam_marine/domain/app_viam/usecase/get_main_part_address_use_case.dart'
    as _i93;
import 'package:viam_marine/domain/app_viam/usecase/get_organization_id_use_case.dart'
    as _i51;
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart'
    as _i52;
import 'package:viam_marine/domain/app_viam/usecase/get_robots_use_case.dart'
    as _i96;
import 'package:viam_marine/domain/app_viam/usecase/list_organizations_use_case.dart'
    as _i94;
import 'package:viam_marine/domain/app_viam/usecase/set_location_id_use_case.dart'
    as _i64;
import 'package:viam_marine/domain/app_viam/usecase/set_organization_id_use_case.dart'
    as _i65;
import 'package:viam_marine/domain/app_viam/usecase/set_robot_id_use_case.dart'
    as _i66;
import 'package:viam_marine/domain/auth/service/auth_service.dart' as _i39;
import 'package:viam_marine/domain/auth/store/token_store.dart' as _i26;
import 'package:viam_marine/domain/auth/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i43;
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart'
    as _i53;
import 'package:viam_marine/domain/auth/usecase/login_use_case.dart' as _i57;
import 'package:viam_marine/domain/auth/usecase/logout_use_case.dart' as _i58;
import 'package:viam_marine/domain/boat/broadcaster/boat_update_broadcaster.dart'
    as _i7;
import 'package:viam_marine/domain/boat/service/boat_service.dart' as _i77;
import 'package:viam_marine/domain/boat/store/boat_box.dart' as _i5;
import 'package:viam_marine/domain/boat/store/current_boat_store.dart' as _i48;
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart'
    as _i111;
import 'package:viam_marine/domain/boat/usecase/change_boat_name_use_case.dart'
    as _i80;
import 'package:viam_marine/domain/boat/usecase/delete_boat_use_case.dart'
    as _i86;
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart'
    as _i87;
import 'package:viam_marine/domain/boat/usecase/get_current_boat_id_use_case.dart'
    as _i90;
import 'package:viam_marine/domain/boat/usecase/notify_boat_name_update_use_case.dart'
    as _i18;
import 'package:viam_marine/domain/boat/usecase/remove_current_boat_id_use_case.dart'
    as _i100;
import 'package:viam_marine/domain/boat/usecase/set_current_boat_id_use_case.dart'
    as _i103;
import 'package:viam_marine/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i23;
import 'package:viam_marine/domain/camera/service/camera_service.dart' as _i105;
import 'package:viam_marine/domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i131;
import 'package:viam_marine/domain/clear_cache/service/clear_cache_service.dart'
    as _i45;
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart'
    as _i47;
import 'package:viam_marine/domain/current_time/get_current_time_use_case.dart'
    as _i12;
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart'
    as _i109;
import 'package:viam_marine/domain/data_viam/use_case/clear_cached_data_use_case.dart'
    as _i115;
import 'package:viam_marine/domain/data_viam/use_case/fetch_fuel_consumption_data_use_case.dart'
    as _i118;
import 'package:viam_marine/domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i119;
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i120;
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i121;
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i123;
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i124;
import 'package:viam_marine/domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i127;
import 'package:viam_marine/domain/data_viam/use_case/set_fuel_consumption_filters_use_case.dart'
    as _i128;
import 'package:viam_marine/domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i129;
import 'package:viam_marine/domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i130;
import 'package:viam_marine/domain/data_viam/use_case/subscribe_to_fuel_consumption_stream_use_case.dart'
    as _i132;
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i133;
import 'package:viam_marine/domain/local_photo/service/local_photo_service.dart'
    as _i16;
import 'package:viam_marine/domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i42;
import 'package:viam_marine/domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i44;
import 'package:viam_marine/domain/local_photo/use_case/remove_photo_for_boat_use_case.dart'
    as _i20;
import 'package:viam_marine/domain/movement/service/movement_service.dart'
    as _i70;
import 'package:viam_marine/domain/movement/usecase/get_compass_heading_use_case.dart'
    as _i89;
import 'package:viam_marine/domain/movement/usecase/get_linear_velocity_use_case.dart'
    as _i91;
import 'package:viam_marine/domain/movement/usecase/get_position_use_case.dart'
    as _i95;
import 'package:viam_marine/domain/permissions/service/permissions_service.dart'
    as _i59;
import 'package:viam_marine/domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i88;
import 'package:viam_marine/domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i61;
import 'package:viam_marine/domain/resource/service/resource_service.dart'
    as _i107;
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart'
    as _i122;
import 'package:viam_marine/domain/robot_manager/use_case/check_connection_use_case.dart'
    as _i81;
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_analytics_use_case.dart'
    as _i82;
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_app_viam_use_case.dart'
    as _i83;
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_robot_use_case.dart'
    as _i84;
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart'
    as _i72;
import 'package:viam_marine/domain/sensor/usecase/get_sensor_data_use_case.dart'
    as _i97;
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i24;
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i68;
import 'package:viam_marine/injectable/auth0_client_injectable.dart' as _i147;
import 'package:viam_marine/injectable/camera_permission_injectable.dart'
    as _i153;
import 'package:viam_marine/injectable/file_picker_injectable.dart' as _i149;
import 'package:viam_marine/injectable/firebase_analytics_injectable/analytics_injectable.dart'
    as _i150;
import 'package:viam_marine/injectable/flutter_secure_storage_injectable.dart'
    as _i146;
import 'package:viam_marine/injectable/image_picker_injectable.dart' as _i152;
import 'package:viam_marine/injectable/navigator_key_injectable.dart' as _i148;
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart'
    as _i62;
import 'package:viam_marine/injectable/shared_preferences_injectable.dart'
    as _i151;
import 'package:viam_marine/injectable/uuid_injectable.dart' as _i154;
import 'package:viam_marine/injectable/viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i155;
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart'
    as _i112;
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i139;
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i142;
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i144;
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i135;
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i136;
import 'package:viam_marine/presentation/page/boat_list/cubit/boat_list_cubit.dart'
    as _i113;
import 'package:viam_marine/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i138;
import 'package:viam_marine/presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i114;
import 'package:viam_marine/presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i116;
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart'
    as _i117;
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i140;
import 'package:viam_marine/presentation/page/filters/cubit/filters_cubit.dart'
    as _i141;
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i143;
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i145;
import 'package:viam_marine/presentation/page/login/cubit/login_page_cubit.dart'
    as _i98;
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart'
    as _i125;
import 'package:viam_marine/presentation/page/map/cubit/map_cubit.dart' as _i99;
import 'package:viam_marine/presentation/page/scan_qr/cubit/scan_qr_cubit.dart'
    as _i21;
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i126;
import 'package:viam_marine/presentation/page/settings/cubit/settings_cubit.dart'
    as _i104;
import 'package:viam_marine/presentation/page/splash/cubit/splash_cubit.dart'
    as _i67;
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart'
    as _i134;
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i137;
import 'package:viam_marine/presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i102;
import 'package:viam_sdk/viam_sdk.dart' as _i29;

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
    final viamSdkModule = _$ViamSdkModule();
    final viamSdkDirectDataClientModule = _$ViamSdkDirectDataClientModule();
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
    gh.factory<_i20.RemovePhotoForBoatUseCase>(
        () => _i20.RemovePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i21.ScanQrCubit>(() => _i21.ScanQrCubit());
    await gh.factoryAsync<_i22.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i23.SubscribeToBoatUpdateStreamUseCase>(() =>
        _i23.SubscribeToBoatUpdateStreamUseCase(
            gh<_i7.BoatUpdateBroadcaster>()));
    gh.singleton<_i24.TokenExpiredBroadcaster>(
        _i25.TokenExpiredBroadcasterImpl());
    gh.factory<_i26.TokenStore>(
        () => _i27.TokenStoreImpl(gh<_i11.FlutterSecureStorage>()));
    gh.singleton<_i28.Uuid>(uuidModule.uuid);
    gh.singleton<_i29.Viam>(
      viamSdkModule.viam,
      instanceName: 'viamSdk',
    );
    gh.singleton<_i29.Viam>(
      viamSdkDirectDataClientModule.viam,
      instanceName: 'directDataClient',
    );
    gh.factory<_i30.ViamAppResourceNameToViamResourceNameMapper>(
        () => _i30.ViamAppResourceNameToViamResourceNameMapper());
    gh.factory<_i31.ViamLinearVelocityToViamAppLinearVelocityMapper>(
        () => _i31.ViamLinearVelocityToViamAppLinearVelocityMapper());
    gh.factory<_i32.ViamPositionToViamAppPositionMapper>(
        () => _i32.ViamPositionToViamAppPositionMapper());
    gh.factory<_i33.ViamSensorReadingsToViamAppSensorReadingsMapper>(
        () => _i33.ViamSensorReadingsToViamAppSensorReadingsMapper());
    gh.factory<_i34.AnalyticsDataSink>(
        () => _i34.AnalyticsDataSinkImpl(gh<_i10.FirebaseAnalytics>()));
    gh.factory<_i35.AnalyticsService>(
        () => _i36.AnalyticsServiceImpl(gh<_i34.AnalyticsDataSink>()));
    gh.factory<_i37.AppViamStore>(
        () => _i38.SharedPreferencesAppViamStore(gh<_i22.SharedPreferences>()));
    gh.lazySingleton<_i39.AuthService>(() => _i40.AuthServiceImpl(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i4.AuthDataSource>(),
          gh<_i26.TokenStore>(),
        ));
    gh.factory<_i41.CameraPermissionDataSource>(
        () => _i41.CameraPermissionDataSource(gh<_i19.Permission>()));
    gh.factory<_i42.CapturePhotoForBoatUseCase>(
        () => _i42.CapturePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i43.CheckIfHasTokenAndRefreshTokenUseCase>(() =>
        _i43.CheckIfHasTokenAndRefreshTokenUseCase(gh<_i26.TokenStore>()));
    gh.factory<_i44.ChoosePhotoForBoatUseCase>(
        () => _i44.ChoosePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i45.ClearCacheService>(() => _i46.ClearCacheServiceImpl(
          gh<_i26.TokenStore>(),
          gh<_i37.AppViamStore>(),
        ));
    gh.factory<_i47.ClearCacheUseCase>(
        () => _i47.ClearCacheUseCase(gh<_i45.ClearCacheService>()));
    gh.factory<_i48.CurrentBoatStore>(() =>
        _i49.SharedPreferencesCurrentBoatStore(gh<_i22.SharedPreferences>()));
    gh.factory<_i50.GetLocationIdUseCase>(
        () => _i50.GetLocationIdUseCase(gh<_i37.AppViamStore>()));
    gh.factory<_i51.GetOrganizationIdUseCase>(
        () => _i51.GetOrganizationIdUseCase(gh<_i37.AppViamStore>()));
    gh.factory<_i52.GetRobotIdUseCase>(
        () => _i52.GetRobotIdUseCase(gh<_i37.AppViamStore>()));
    gh.factory<_i53.GetTokenOrNullUseCase>(
        () => _i53.GetTokenOrNullUseCase(gh<_i26.TokenStore>()));
    gh.factory<_i54.LogAddBoatEventUseCase>(
        () => _i54.LogAddBoatEventUseCase(gh<_i35.AnalyticsService>()));
    gh.factory<_i55.LogDeleteBoatEventUseCase>(
        () => _i55.LogDeleteBoatEventUseCase(gh<_i35.AnalyticsService>()));
    gh.factory<_i56.LogOpenAppEventUseCase>(
        () => _i56.LogOpenAppEventUseCase(gh<_i35.AnalyticsService>()));
    gh.factory<_i57.LoginUseCase>(
        () => _i57.LoginUseCase(gh<_i39.AuthService>()));
    gh.factory<_i58.LogoutUseCase>(
        () => _i58.LogoutUseCase(gh<_i39.AuthService>()));
    gh.lazySingleton<_i59.PermissionsService>(() =>
        _i60.PermissionsServiceImpl(gh<_i41.CameraPermissionDataSource>()));
    gh.factory<_i61.RequestCameraPermissionUseCase>(() =>
        _i61.RequestCameraPermissionUseCase(gh<_i59.PermissionsService>()));
    gh.singleton<_i62.RobotManager>(
        _i62.RobotManager(gh<_i29.Viam>(instanceName: 'directDataClient')));
    gh.factory<_i63.SensorDataSource>(
        () => _i63.SensorDataSource(gh<_i62.RobotManager>()));
    gh.factory<_i64.SetLocationIdUseCase>(
        () => _i64.SetLocationIdUseCase(gh<_i37.AppViamStore>()));
    gh.factory<_i65.SetOrganizationIdUseCase>(
        () => _i65.SetOrganizationIdUseCase(gh<_i37.AppViamStore>()));
    gh.factory<_i66.SetRobotIdUseCase>(
        () => _i66.SetRobotIdUseCase(gh<_i37.AppViamStore>()));
    gh.factory<_i67.SplashCubit>(() =>
        _i67.SplashCubit(gh<_i43.CheckIfHasTokenAndRefreshTokenUseCase>()));
    gh.factory<_i68.SubscribeToTokenExpiredStreamUseCase>(() =>
        _i68.SubscribeToTokenExpiredStreamUseCase(
            gh<_i24.TokenExpiredBroadcaster>()));
    gh.factory<_i69.ViamAppMovementSdkDataSource>(
        () => _i69.ViamAppMovementSdkDataSource(gh<_i62.RobotManager>()));
    gh.factory<_i70.ViamAppMovementService>(
        () => _i71.ViamAppMovementServiceImpl(
              gh<_i24.TokenExpiredBroadcaster>(),
              gh<_i69.ViamAppMovementSdkDataSource>(),
            ));
    gh.factory<_i72.ViamAppSensorService>(() => _i73.ViamAppSensorServiceImpl(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i63.SensorDataSource>(),
        ));
    gh.factory<_i74.AppViamDataSource>(
        () => _i74.AppViamDataSource(gh<_i62.RobotManager>()));
    gh.lazySingleton<_i75.AppViamService>(() => _i76.AppViamServiceImpl(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i74.AppViamDataSource>(),
        ));
    gh.factory<_i77.BoatService>(() => _i78.BoatServiceImpl(
          gh<_i5.BoatBox>(),
          gh<_i48.CurrentBoatStore>(),
        ));
    gh.factory<_i79.CameraDataSource>(
        () => _i79.CameraDataSource(gh<_i62.RobotManager>()));
    gh.factory<_i80.ChangeBoatNameUseCase>(
        () => _i80.ChangeBoatNameUseCase(gh<_i77.BoatService>()));
    gh.factory<_i81.CheckConnectionUseCase>(() => _i81.CheckConnectionUseCase(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i62.RobotManager>(),
        ));
    gh.factory<_i82.ConnectToAnalyticsUseCase>(
        () => _i82.ConnectToAnalyticsUseCase(
              gh<_i24.TokenExpiredBroadcaster>(),
              gh<_i62.RobotManager>(),
            ));
    gh.factory<_i83.ConnectToAppViamUseCase>(() => _i83.ConnectToAppViamUseCase(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i62.RobotManager>(),
        ));
    gh.factory<_i84.ConnectToRobotUseCase>(() => _i84.ConnectToRobotUseCase(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i62.RobotManager>(),
        ));
    gh.factory<_i85.DataViamDataSource>(
        () => _i85.DataViamDataSource(gh<_i62.RobotManager>()));
    gh.factory<_i86.DeleteBoatUseCase>(
        () => _i86.DeleteBoatUseCase(gh<_i77.BoatService>()));
    gh.factory<_i87.GetBoatsUseCase>(
        () => _i87.GetBoatsUseCase(gh<_i77.BoatService>()));
    gh.factory<_i88.GetCameraPermissionStatusUseCase>(() =>
        _i88.GetCameraPermissionStatusUseCase(gh<_i59.PermissionsService>()));
    gh.factory<_i89.GetCompassHeadingUseCase>(
        () => _i89.GetCompassHeadingUseCase(gh<_i70.ViamAppMovementService>()));
    gh.factory<_i90.GetCurrentBoatIdUseCase>(
        () => _i90.GetCurrentBoatIdUseCase(gh<_i77.BoatService>()));
    gh.factory<_i91.GetLinearVelocityUseCase>(
        () => _i91.GetLinearVelocityUseCase(gh<_i70.ViamAppMovementService>()));
    gh.factory<_i92.GetLocationsUseCase>(
        () => _i92.GetLocationsUseCase(gh<_i75.AppViamService>()));
    gh.factory<_i93.GetMainPartAddressUseCase>(
        () => _i93.GetMainPartAddressUseCase(gh<_i75.AppViamService>()));
    gh.factory<_i94.GetOrganizationsListUseCase>(
        () => _i94.GetOrganizationsListUseCase(gh<_i75.AppViamService>()));
    gh.factory<_i95.GetPostionUseCase>(
        () => _i95.GetPostionUseCase(gh<_i70.ViamAppMovementService>()));
    gh.factory<_i96.GetRobotsUseCase>(
        () => _i96.GetRobotsUseCase(gh<_i75.AppViamService>()));
    gh.factory<_i97.GetSensorDataUseCase>(
        () => _i97.GetSensorDataUseCase(gh<_i72.ViamAppSensorService>()));
    gh.factory<_i98.LoginPageCubit>(
        () => _i98.LoginPageCubit(gh<_i57.LoginUseCase>()));
    gh.factory<_i99.MapCubit>(() => _i99.MapCubit(
          gh<_i95.GetPostionUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
          gh<_i89.GetCompassHeadingUseCase>(),
        ));
    gh.factory<_i100.RemoveCurrentBoatIdUseCase>(
        () => _i100.RemoveCurrentBoatIdUseCase(gh<_i77.BoatService>()));
    gh.factory<_i101.ResourceDataSource>(
        () => _i101.ResourceDataSource(gh<_i62.RobotManager>()));
    gh.factory<_i102.SensorTileCubit>(() => _i102.SensorTileCubit(
          gh<_i97.GetSensorDataUseCase>(),
          gh<_i91.GetLinearVelocityUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
          gh<_i89.GetCompassHeadingUseCase>(),
        ));
    gh.factory<_i103.SetCurrentBoatIdUseCase>(
        () => _i103.SetCurrentBoatIdUseCase(gh<_i77.BoatService>()));
    gh.factory<_i104.SettingsCubit>(() => _i104.SettingsCubit(
          gh<_i87.GetBoatsUseCase>(),
          gh<_i23.SubscribeToBoatUpdateStreamUseCase>(),
          gh<_i44.ChoosePhotoForBoatUseCase>(),
          gh<_i42.CapturePhotoForBoatUseCase>(),
          gh<_i20.RemovePhotoForBoatUseCase>(),
          gh<_i58.LogoutUseCase>(),
          gh<_i47.ClearCacheUseCase>(),
        ));
    gh.factory<_i105.ViamAppCameraService>(() => _i106.ViamAppCameraServiceImpl(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i79.CameraDataSource>(),
        ));
    gh.factory<_i107.ViamAppResourceService>(
        () => _i108.ViamAppResourceServiceImpl(
              gh<_i24.TokenExpiredBroadcaster>(),
              gh<_i101.ResourceDataSource>(),
            ));
    gh.lazySingleton<_i109.ViamDataService>(() => _i110.ViamDataServiceImpl(
          gh<_i24.TokenExpiredBroadcaster>(),
          gh<_i85.DataViamDataSource>(),
        ));
    gh.factory<_i111.AddNewBoatUseCase>(
        () => _i111.AddNewBoatUseCase(gh<_i77.BoatService>()));
    gh.factory<_i112.AnalyticsCubit>(() => _i112.AnalyticsCubit(
          gh<_i82.ConnectToAnalyticsUseCase>(),
          gh<_i53.GetTokenOrNullUseCase>(),
        ));
    gh.factory<_i113.BoatListCubit>(() => _i113.BoatListCubit(
          gh<_i87.GetBoatsUseCase>(),
          gh<_i90.GetCurrentBoatIdUseCase>(),
          gh<_i103.SetCurrentBoatIdUseCase>(),
        ));
    gh.factory<_i114.ChangeBoatNameCubit>(() => _i114.ChangeBoatNameCubit(
          gh<_i80.ChangeBoatNameUseCase>(),
          gh<_i18.NotifyBoatNameUpdateUseCase>(),
        ));
    gh.factory<_i115.ClearCachedDataUseCase>(
        () => _i115.ClearCachedDataUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i116.ConnectionErrorCubit>(() => _i116.ConnectionErrorCubit(
          gh<_i84.ConnectToRobotUseCase>(),
          gh<_i111.AddNewBoatUseCase>(),
          gh<_i87.GetBoatsUseCase>(),
          gh<_i93.GetMainPartAddressUseCase>(),
        ));
    gh.factory<_i117.DashboardCubit>(() => _i117.DashboardCubit(
          gh<_i87.GetBoatsUseCase>(),
          gh<_i90.GetCurrentBoatIdUseCase>(),
          gh<_i23.SubscribeToBoatUpdateStreamUseCase>(),
        ));
    gh.factory<_i118.FetchFuelConsumptionDataUseCase>(() =>
        _i118.FetchFuelConsumptionDataUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i119.GetCurrentWaterFiltersUseCase>(
        () => _i119.GetCurrentWaterFiltersUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i120.GetDepthOverTimeDataUseCase>(
        () => _i120.GetDepthOverTimeDataUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i121.GetFuelConsumptionPerMileDataUseCase>(() =>
        _i121.GetFuelConsumptionPerMileDataUseCase(
            gh<_i109.ViamDataService>()));
    gh.factory<_i122.GetResourceNamesUseCase>(() =>
        _i122.GetResourceNamesUseCase(gh<_i107.ViamAppResourceService>()));
    gh.factory<_i123.GetWaterDepthDataUseCase>(
        () => _i123.GetWaterDepthDataUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i124.GetWaterTemperatureDataUseCase>(() =>
        _i124.GetWaterTemperatureDataUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i125.MainCubit>(() => _i125.MainCubit(
          gh<_i122.GetResourceNamesUseCase>(),
          gh<_i53.GetTokenOrNullUseCase>(),
          gh<_i68.SubscribeToTokenExpiredStreamUseCase>(),
          gh<_i47.ClearCacheUseCase>(),
          gh<_i84.ConnectToRobotUseCase>(),
          gh<_i81.CheckConnectionUseCase>(),
          gh<_i115.ClearCachedDataUseCase>(),
        ));
    gh.factory<_i126.SelectRobotCubit>(() => _i126.SelectRobotCubit(
          gh<_i111.AddNewBoatUseCase>(),
          gh<_i84.ConnectToRobotUseCase>(),
          gh<_i87.GetBoatsUseCase>(),
          gh<_i50.GetLocationIdUseCase>(),
          gh<_i92.GetLocationsUseCase>(),
          gh<_i51.GetOrganizationIdUseCase>(),
          gh<_i94.GetOrganizationsListUseCase>(),
          gh<_i93.GetMainPartAddressUseCase>(),
          gh<_i52.GetRobotIdUseCase>(),
          gh<_i96.GetRobotsUseCase>(),
          gh<_i53.GetTokenOrNullUseCase>(),
          gh<_i64.SetLocationIdUseCase>(),
          gh<_i65.SetOrganizationIdUseCase>(),
          gh<_i66.SetRobotIdUseCase>(),
          gh<_i68.SubscribeToTokenExpiredStreamUseCase>(),
          gh<_i47.ClearCacheUseCase>(),
          gh<_i58.LogoutUseCase>(),
          gh<_i83.ConnectToAppViamUseCase>(),
        ));
    gh.factory<_i127.SetDepthOverTimeFiltersUseCase>(() =>
        _i127.SetDepthOverTimeFiltersUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i128.SetFuelConsumptionFilters>(
        () => _i128.SetFuelConsumptionFilters(gh<_i109.ViamDataService>()));
    gh.factory<_i129.SetWaterDepthFiltersUseCase>(
        () => _i129.SetWaterDepthFiltersUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i130.SetWaterTemperatureFiltersUseCase>(() =>
        _i130.SetWaterTemperatureFiltersUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i131.SubscribeToCameraStreamUseCase>(() =>
        _i131.SubscribeToCameraStreamUseCase(gh<_i105.ViamAppCameraService>()));
    gh.factory<_i132.SubscribeToFuelConsumptionStreamUseCase>(() =>
        _i132.SubscribeToFuelConsumptionStreamUseCase(
            gh<_i109.ViamDataService>()));
    gh.factory<_i133.SubscribeToRefreshFiltersUseCase>(() =>
        _i133.SubscribeToRefreshFiltersUseCase(gh<_i109.ViamDataService>()));
    gh.factory<_i134.WaterDepthCubit>(() => _i134.WaterDepthCubit(
          gh<_i123.GetWaterDepthDataUseCase>(),
          gh<_i133.SubscribeToRefreshFiltersUseCase>(),
          gh<_i129.SetWaterDepthFiltersUseCase>(),
        ));
    gh.factory<_i135.WaterDepthCubit>(() => _i135.WaterDepthCubit(
          gh<_i123.GetWaterDepthDataUseCase>(),
          gh<_i133.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i136.WaterTemperatureCubit>(() => _i136.WaterTemperatureCubit(
          gh<_i124.GetWaterTemperatureDataUseCase>(),
          gh<_i133.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i137.WaterTemperatureCubit>(() => _i137.WaterTemperatureCubit(
          gh<_i124.GetWaterTemperatureDataUseCase>(),
          gh<_i133.SubscribeToRefreshFiltersUseCase>(),
          gh<_i130.SetWaterTemperatureFiltersUseCase>(),
        ));
    gh.factory<_i138.WebrtcCameraCubit>(() => _i138.WebrtcCameraCubit(
          gh<_i131.SubscribeToCameraStreamUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
        ));
    gh.factory<_i139.DepthOverTimeCubit>(() => _i139.DepthOverTimeCubit(
          gh<_i120.GetDepthOverTimeDataUseCase>(),
          gh<_i133.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i140.DepthOverTimePageCubit>(() => _i140.DepthOverTimePageCubit(
          gh<_i120.GetDepthOverTimeDataUseCase>(),
          gh<_i133.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i141.FiltersCubit>(() => _i141.FiltersCubit(
          gh<_i119.GetCurrentWaterFiltersUseCase>(),
          gh<_i129.SetWaterDepthFiltersUseCase>(),
          gh<_i130.SetWaterTemperatureFiltersUseCase>(),
          gh<_i127.SetDepthOverTimeFiltersUseCase>(),
          gh<_i128.SetFuelConsumptionFilters>(),
        ));
    gh.factory<_i142.FuelConsumptionOverTimeCubit>(
        () => _i142.FuelConsumptionOverTimeCubit(
              gh<_i118.FetchFuelConsumptionDataUseCase>(),
              gh<_i132.SubscribeToFuelConsumptionStreamUseCase>(),
            ));
    gh.factory<_i143.FuelConsumptionOverTimePageCubit>(
        () => _i143.FuelConsumptionOverTimePageCubit(
              gh<_i118.FetchFuelConsumptionDataUseCase>(),
              gh<_i132.SubscribeToFuelConsumptionStreamUseCase>(),
              gh<_i133.SubscribeToRefreshFiltersUseCase>(),
            ));
    gh.factory<_i144.FuelConsumptionPerMileCubit>(() =>
        _i144.FuelConsumptionPerMileCubit(
            gh<_i121.GetFuelConsumptionPerMileDataUseCase>()));
    gh.factory<_i145.FuelConsumptionPerMilePageCubit>(() =>
        _i145.FuelConsumptionPerMilePageCubit(
            gh<_i121.GetFuelConsumptionPerMileDataUseCase>()));
    return this;
  }
}

class _$FlutterSecureStorageModule extends _i146.FlutterSecureStorageModule {}

class _$Auth0ClientModule extends _i147.Auth0ClientModule {}

class _$NavigatorKeyModule extends _i148.NavigatorKeyModule {}

class _$FilePickerModule extends _i149.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i150.FirebaseAnalyticsModule {}

class _$SharedPreferencesModule extends _i151.SharedPreferencesModule {}

class _$ImagePickerModule extends _i152.ImagePickerModule {}

class _$CameraPermissionModule extends _i153.CameraPermissionModule {}

class _$UuidModule extends _i154.UuidModule {}

class _$ViamSdkModule extends _i155.ViamSdkModule {}

class _$ViamSdkDirectDataClientModule
    extends _i155.ViamSdkDirectDataClientModule {}
