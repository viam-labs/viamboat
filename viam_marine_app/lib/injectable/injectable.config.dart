// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth0_flutter/auth0_flutter.dart' as _i4;
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
    as _i69;
import 'package:viam_marine/data/app_viam/service/app_viam_service.dart'
    as _i71;
import 'package:viam_marine/data/app_viam/store/app_viam_store_impl.dart'
    as _i37;
import 'package:viam_marine/data/auth/data_source/auth_data_source.dart'
    as _i72;
import 'package:viam_marine/data/auth/service/auth_service_impl.dart' as _i74;
import 'package:viam_marine/data/auth/store/token_store_impl.dart' as _i26;
import 'package:viam_marine/data/boat/broadcaster/boat_update_broadcaster_impl.dart'
    as _i8;
import 'package:viam_marine/data/boat/service/boat_service_impl.dart' as _i76;
import 'package:viam_marine/data/boat/store/boat_box_impl.dart' as _i6;
import 'package:viam_marine/data/boat/store/shared_prefs_current_boat_store.dart'
    as _i46;
import 'package:viam_marine/data/camera/data_source/camera_api_data_source.dart'
    as _i77;
import 'package:viam_marine/data/camera/service/camera_service_impl.dart'
    as _i107;
import 'package:viam_marine/data/clear_cache/service/clear_cache_service_impl.dart'
    as _i43;
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart'
    as _i82;
import 'package:viam_marine/data/data_viam/service/viam_data_service_impl.dart'
    as _i111;
import 'package:viam_marine/data/local_photo/data_source/local_photo_data_source.dart'
    as _i15;
import 'package:viam_marine/data/local_photo/service/local_photo_service_impl.dart'
    as _i17;
import 'package:viam_marine/data/movement/data_source/movement_sdk_data_source.dart'
    as _i64;
import 'package:viam_marine/data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i30;
import 'package:viam_marine/data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i31;
import 'package:viam_marine/data/movement/service/movement_service_impl.dart'
    as _i66;
import 'package:viam_marine/data/permissions/data_source/camera_permission_data_source.dart'
    as _i38;
import 'package:viam_marine/data/permissions/service/permissions_service_impl.dart'
    as _i55;
import 'package:viam_marine/data/resource/data_source/resource_api_data_source.dart'
    as _i102;
import 'package:viam_marine/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i29;
import 'package:viam_marine/data/resource/service/resource_service_impl.dart'
    as _i109;
import 'package:viam_marine/data/robot_manager/robot_manager.dart' as _i57;
import 'package:viam_marine/data/sensor/data_source/sensor_api_data_source.dart'
    as _i58;
import 'package:viam_marine/data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i32;
import 'package:viam_marine/data/sensor/service/sensor_service_impl.dart'
    as _i68;
import 'package:viam_marine/data/service_base/broadcaster/token_expired_broadcaster_impl.dart'
    as _i24;
import 'package:viam_marine/domain/analytics/service/analytics_service.dart'
    as _i34;
import 'package:viam_marine/domain/analytics/usecase/log_add_boat_event_use_case.dart'
    as _i51;
import 'package:viam_marine/domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i52;
import 'package:viam_marine/domain/analytics/usecase/log_open_app_event_use_case.dart'
    as _i53;
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart'
    as _i70;
import 'package:viam_marine/domain/app_viam/store/app_viam_store.dart' as _i36;
import 'package:viam_marine/domain/app_viam/usecase/get_location_id_use_case.dart'
    as _i47;
import 'package:viam_marine/domain/app_viam/usecase/get_location_use_case.dart'
    as _i89;
import 'package:viam_marine/domain/app_viam/usecase/get_locations_use_case.dart'
    as _i90;
import 'package:viam_marine/domain/app_viam/usecase/get_main_part_address_use_case.dart'
    as _i91;
import 'package:viam_marine/domain/app_viam/usecase/get_organization_id_use_case.dart'
    as _i48;
import 'package:viam_marine/domain/app_viam/usecase/get_organization_use_case.dart'
    as _i92;
import 'package:viam_marine/domain/app_viam/usecase/get_robot_id_use_case.dart'
    as _i49;
import 'package:viam_marine/domain/app_viam/usecase/get_robot_use_case.dart'
    as _i95;
import 'package:viam_marine/domain/app_viam/usecase/get_robots_use_case.dart'
    as _i96;
import 'package:viam_marine/domain/app_viam/usecase/list_organizations_use_case.dart'
    as _i93;
import 'package:viam_marine/domain/app_viam/usecase/set_location_id_use_case.dart'
    as _i59;
import 'package:viam_marine/domain/app_viam/usecase/set_organization_id_use_case.dart'
    as _i60;
import 'package:viam_marine/domain/app_viam/usecase/set_robot_id_use_case.dart'
    as _i61;
import 'package:viam_marine/domain/auth/service/auth_service.dart' as _i73;
import 'package:viam_marine/domain/auth/store/token_store.dart' as _i25;
import 'package:viam_marine/domain/auth/usecase/check_connection_use_case.dart'
    as _i79;
import 'package:viam_marine/domain/auth/usecase/check_if_has_token_and_refresh_token_use_case.dart'
    as _i40;
import 'package:viam_marine/domain/auth/usecase/connect_to_app_viam_use_case.dart'
    as _i80;
import 'package:viam_marine/domain/auth/usecase/connect_to_robot_use_case.dart'
    as _i81;
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart'
    as _i50;
import 'package:viam_marine/domain/auth/usecase/login_use_case.dart' as _i98;
import 'package:viam_marine/domain/auth/usecase/logout_use_case.dart' as _i99;
import 'package:viam_marine/domain/boat/broadcaster/boat_update_broadcaster.dart'
    as _i7;
import 'package:viam_marine/domain/boat/service/boat_service.dart' as _i75;
import 'package:viam_marine/domain/boat/store/boat_box.dart' as _i5;
import 'package:viam_marine/domain/boat/store/current_boat_store.dart' as _i45;
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart'
    as _i112;
import 'package:viam_marine/domain/boat/usecase/change_boat_name_use_case.dart'
    as _i78;
import 'package:viam_marine/domain/boat/usecase/delete_boat_use_case.dart'
    as _i83;
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart'
    as _i84;
import 'package:viam_marine/domain/boat/usecase/get_current_boat_id_use_case.dart'
    as _i87;
import 'package:viam_marine/domain/boat/usecase/notify_boat_name_update_use_case.dart'
    as _i18;
import 'package:viam_marine/domain/boat/usecase/remove_current_boat_id_use_case.dart'
    as _i101;
import 'package:viam_marine/domain/boat/usecase/set_current_boat_id_use_case.dart'
    as _i104;
import 'package:viam_marine/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart'
    as _i22;
import 'package:viam_marine/domain/camera/service/camera_service.dart' as _i106;
import 'package:viam_marine/domain/camera/usecase/subscribe_to_camera_stream_use_case.dart'
    as _i130;
import 'package:viam_marine/domain/clear_cache/service/clear_cache_service.dart'
    as _i42;
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart'
    as _i44;
import 'package:viam_marine/domain/current_time/get_current_time_use_case.dart'
    as _i12;
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart'
    as _i110;
import 'package:viam_marine/domain/data_viam/use_case/fetch_fuel_consumption_data_use_case.dart'
    as _i117;
import 'package:viam_marine/domain/data_viam/use_case/get_current_water_filters_use_case.dart'
    as _i118;
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart'
    as _i119;
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart'
    as _i120;
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart'
    as _i122;
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart'
    as _i123;
import 'package:viam_marine/domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart'
    as _i127;
import 'package:viam_marine/domain/data_viam/use_case/set_water_depth_filters_use_case.dart'
    as _i128;
import 'package:viam_marine/domain/data_viam/use_case/set_water_temperature_filters_use_case.dart'
    as _i129;
import 'package:viam_marine/domain/data_viam/use_case/subscribe_to_fuel_consumption_stream_use_case.dart'
    as _i131;
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart'
    as _i132;
import 'package:viam_marine/domain/local_photo/service/local_photo_service.dart'
    as _i16;
import 'package:viam_marine/domain/local_photo/use_case/capture_photo_for_boat_use_case.dart'
    as _i39;
import 'package:viam_marine/domain/local_photo/use_case/choose_photo_for_boat_use_case.dart'
    as _i41;
import 'package:viam_marine/domain/movement/service/movement_service.dart'
    as _i65;
import 'package:viam_marine/domain/movement/usecase/get_compass_heading_use_case.dart'
    as _i86;
import 'package:viam_marine/domain/movement/usecase/get_linear_velocity_use_case.dart'
    as _i88;
import 'package:viam_marine/domain/movement/usecase/get_position_use_case.dart'
    as _i94;
import 'package:viam_marine/domain/permissions/service/permissions_service.dart'
    as _i54;
import 'package:viam_marine/domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i85;
import 'package:viam_marine/domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i56;
import 'package:viam_marine/domain/resource/service/resource_service.dart'
    as _i108;
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart'
    as _i121;
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart'
    as _i67;
import 'package:viam_marine/domain/sensor/usecase/get_sensor_data_use_case.dart'
    as _i97;
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart'
    as _i23;
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart'
    as _i63;
import 'package:viam_marine/injectable/auth0_client_injectable.dart' as _i146;
import 'package:viam_marine/injectable/camera_permission_injectable.dart'
    as _i152;
import 'package:viam_marine/injectable/file_picker_injectable.dart' as _i148;
import 'package:viam_marine/injectable/firebase_analytics_injectable/analytics_injectable.dart'
    as _i149;
import 'package:viam_marine/injectable/flutter_secure_storage_injectable.dart'
    as _i145;
import 'package:viam_marine/injectable/image_picker_injectable.dart' as _i151;
import 'package:viam_marine/injectable/navigator_key_injectable.dart' as _i147;
import 'package:viam_marine/injectable/shared_preferences_injectable.dart'
    as _i150;
import 'package:viam_marine/injectable/uuid_injectable.dart' as _i153;
import 'package:viam_marine/injectable/viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i154;
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart'
    as _i3;
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart'
    as _i138;
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart'
    as _i141;
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart'
    as _i143;
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart'
    as _i134;
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart'
    as _i136;
import 'package:viam_marine/presentation/page/boat_list/cubit/boat_list_cubit.dart'
    as _i113;
import 'package:viam_marine/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart'
    as _i137;
import 'package:viam_marine/presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart'
    as _i114;
import 'package:viam_marine/presentation/page/connection_error/cubit/connection_error_cubit.dart'
    as _i115;
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart'
    as _i116;
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart'
    as _i139;
import 'package:viam_marine/presentation/page/filters/cubit/filters_cubit.dart'
    as _i140;
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart'
    as _i142;
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_cubit.dart'
    as _i144;
import 'package:viam_marine/presentation/page/login/cubit/login_page_cubit.dart'
    as _i124;
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart'
    as _i125;
import 'package:viam_marine/presentation/page/map/cubit/map_cubit.dart'
    as _i100;
import 'package:viam_marine/presentation/page/scan_qr/cubit/scan_qr_cubit.dart'
    as _i20;
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart'
    as _i126;
import 'package:viam_marine/presentation/page/settings/cubit/settings_cubit.dart'
    as _i105;
import 'package:viam_marine/presentation/page/splash/cubit/splash_cubit.dart'
    as _i62;
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart'
    as _i133;
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart'
    as _i135;
import 'package:viam_marine/presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i103;
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
    gh.factory<_i3.AnalyticsCubit>(() => _i3.AnalyticsCubit());
    gh.singleton<_i4.Auth0>(auth0ClientModule.auth0Client);
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
    gh.factory<_i38.CameraPermissionDataSource>(
        () => _i38.CameraPermissionDataSource(gh<_i19.Permission>()));
    gh.factory<_i39.CapturePhotoForBoatUseCase>(
        () => _i39.CapturePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i40.CheckIfHasTokenAndRefreshTokenUseCase>(() =>
        _i40.CheckIfHasTokenAndRefreshTokenUseCase(gh<_i25.TokenStore>()));
    gh.factory<_i41.ChoosePhotoForBoatUseCase>(
        () => _i41.ChoosePhotoForBoatUseCase(gh<_i16.LocalPhotoService>()));
    gh.factory<_i42.ClearCacheService>(() => _i43.ClearCacheServiceImpl(
          gh<_i25.TokenStore>(),
          gh<_i36.AppViamStore>(),
        ));
    gh.factory<_i44.ClearCacheUseCase>(
        () => _i44.ClearCacheUseCase(gh<_i42.ClearCacheService>()));
    gh.factory<_i45.CurrentBoatStore>(() =>
        _i46.SharedPreferencesCurrentBoatStore(gh<_i21.SharedPreferences>()));
    gh.factory<_i47.GetLocationIdUseCase>(
        () => _i47.GetLocationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i48.GetOrganizationIdUseCase>(
        () => _i48.GetOrganizationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i49.GetRobotIdUseCase>(
        () => _i49.GetRobotIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i50.GetTokenOrNullUseCase>(
        () => _i50.GetTokenOrNullUseCase(gh<_i25.TokenStore>()));
    gh.factory<_i51.LogAddBoatEventUseCase>(
        () => _i51.LogAddBoatEventUseCase(gh<_i34.AnalyticsService>()));
    gh.factory<_i52.LogDeleteBoatEventUseCase>(
        () => _i52.LogDeleteBoatEventUseCase(gh<_i34.AnalyticsService>()));
    gh.factory<_i53.LogOpenAppEventUseCase>(
        () => _i53.LogOpenAppEventUseCase(gh<_i34.AnalyticsService>()));
    gh.lazySingleton<_i54.PermissionsService>(() =>
        _i55.PermissionsServiceImpl(gh<_i38.CameraPermissionDataSource>()));
    gh.factory<_i56.RequestCameraPermissionUseCase>(() =>
        _i56.RequestCameraPermissionUseCase(gh<_i54.PermissionsService>()));
    gh.singleton<_i57.RobotManager>(
        _i57.RobotManager(gh<_i28.Viam>(instanceName: 'directDataClient')));
    gh.factory<_i58.SensorDataSource>(
        () => _i58.SensorDataSource(gh<_i57.RobotManager>()));
    gh.factory<_i59.SetLocationIdUseCase>(
        () => _i59.SetLocationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i60.SetOrganizationIdUseCase>(
        () => _i60.SetOrganizationIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i61.SetRobotIdUseCase>(
        () => _i61.SetRobotIdUseCase(gh<_i36.AppViamStore>()));
    gh.factory<_i62.SplashCubit>(() =>
        _i62.SplashCubit(gh<_i40.CheckIfHasTokenAndRefreshTokenUseCase>()));
    gh.factory<_i63.SubscribeToTokenExpiredStreamUseCase>(() =>
        _i63.SubscribeToTokenExpiredStreamUseCase(
            gh<_i23.TokenExpiredBroadcaster>()));
    gh.factory<_i64.ViamAppMovementSdkDataSource>(
        () => _i64.ViamAppMovementSdkDataSource(gh<_i57.RobotManager>()));
    gh.factory<_i65.ViamAppMovementService>(
        () => _i66.ViamAppMovementServiceImpl(
              gh<_i23.TokenExpiredBroadcaster>(),
              gh<_i64.ViamAppMovementSdkDataSource>(),
            ));
    gh.factory<_i67.ViamAppSensorService>(() => _i68.ViamAppSensorServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i58.SensorDataSource>(),
        ));
    gh.factory<_i69.AppViamDataSource>(
        () => _i69.AppViamDataSource(gh<_i57.RobotManager>()));
    gh.lazySingleton<_i70.AppViamService>(() => _i71.AppViamServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i69.AppViamDataSource>(),
        ));
    gh.factory<_i72.AuthDataSource>(() => _i72.AuthDataSource(
          gh<_i57.RobotManager>(),
          gh<_i4.Auth0>(),
        ));
    gh.lazySingleton<_i73.AuthService>(() => _i74.AuthServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i72.AuthDataSource>(),
          gh<_i25.TokenStore>(),
        ));
    gh.factory<_i75.BoatService>(() => _i76.BoatServiceImpl(
          gh<_i5.BoatBox>(),
          gh<_i45.CurrentBoatStore>(),
        ));
    gh.factory<_i77.CameraDataSource>(
        () => _i77.CameraDataSource(gh<_i57.RobotManager>()));
    gh.factory<_i78.ChangeBoatNameUseCase>(
        () => _i78.ChangeBoatNameUseCase(gh<_i75.BoatService>()));
    gh.factory<_i79.CheckConnectionUseCase>(
        () => _i79.CheckConnectionUseCase(gh<_i73.AuthService>()));
    gh.factory<_i80.ConnectToAppViamUseCase>(
        () => _i80.ConnectToAppViamUseCase(gh<_i73.AuthService>()));
    gh.factory<_i81.ConnectToRobotUseCase>(
        () => _i81.ConnectToRobotUseCase(gh<_i73.AuthService>()));
    gh.factory<_i82.DataViamDataSource>(
        () => _i82.DataViamDataSource(gh<_i57.RobotManager>()));
    gh.factory<_i83.DeleteBoatUseCase>(
        () => _i83.DeleteBoatUseCase(gh<_i75.BoatService>()));
    gh.factory<_i84.GetBoatsUseCase>(
        () => _i84.GetBoatsUseCase(gh<_i75.BoatService>()));
    gh.factory<_i85.GetCameraPermissionStatusUseCase>(() =>
        _i85.GetCameraPermissionStatusUseCase(gh<_i54.PermissionsService>()));
    gh.factory<_i86.GetCompassHeadingUseCase>(
        () => _i86.GetCompassHeadingUseCase(gh<_i65.ViamAppMovementService>()));
    gh.factory<_i87.GetCurrentBoatIdUseCase>(
        () => _i87.GetCurrentBoatIdUseCase(gh<_i75.BoatService>()));
    gh.factory<_i88.GetLinearVelocityUseCase>(
        () => _i88.GetLinearVelocityUseCase(gh<_i65.ViamAppMovementService>()));
    gh.factory<_i89.GetLocationUseCase>(
        () => _i89.GetLocationUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i90.GetLocationsUseCase>(
        () => _i90.GetLocationsUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i91.GetMainPartAddressUseCase>(
        () => _i91.GetMainPartAddressUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i92.GetOrganizationUseCase>(
        () => _i92.GetOrganizationUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i93.GetOrganizationsListUseCase>(
        () => _i93.GetOrganizationsListUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i94.GetPostionUseCase>(
        () => _i94.GetPostionUseCase(gh<_i65.ViamAppMovementService>()));
    gh.factory<_i95.GetRobotUseCase>(
        () => _i95.GetRobotUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i96.GetRobotsUseCase>(
        () => _i96.GetRobotsUseCase(gh<_i70.AppViamService>()));
    gh.factory<_i97.GetSensorDataUseCase>(
        () => _i97.GetSensorDataUseCase(gh<_i67.ViamAppSensorService>()));
    gh.factory<_i98.LoginUseCase>(
        () => _i98.LoginUseCase(gh<_i73.AuthService>()));
    gh.factory<_i99.LogoutUseCase>(
        () => _i99.LogoutUseCase(gh<_i73.AuthService>()));
    gh.factory<_i100.MapCubit>(() => _i100.MapCubit(
          gh<_i94.GetPostionUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
          gh<_i86.GetCompassHeadingUseCase>(),
        ));
    gh.factory<_i101.RemoveCurrentBoatIdUseCase>(
        () => _i101.RemoveCurrentBoatIdUseCase(gh<_i75.BoatService>()));
    gh.factory<_i102.ResourceDataSource>(
        () => _i102.ResourceDataSource(gh<_i57.RobotManager>()));
    gh.factory<_i103.SensorTileCubit>(() => _i103.SensorTileCubit(
          gh<_i97.GetSensorDataUseCase>(),
          gh<_i88.GetLinearVelocityUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
          gh<_i86.GetCompassHeadingUseCase>(),
        ));
    gh.factory<_i104.SetCurrentBoatIdUseCase>(
        () => _i104.SetCurrentBoatIdUseCase(gh<_i75.BoatService>()));
    gh.factory<_i105.SettingsCubit>(() => _i105.SettingsCubit(
          gh<_i84.GetBoatsUseCase>(),
          gh<_i22.SubscribeToBoatUpdateStreamUseCase>(),
          gh<_i41.ChoosePhotoForBoatUseCase>(),
          gh<_i39.CapturePhotoForBoatUseCase>(),
          gh<_i99.LogoutUseCase>(),
          gh<_i44.ClearCacheUseCase>(),
        ));
    gh.factory<_i106.ViamAppCameraService>(() => _i107.ViamAppCameraServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i77.CameraDataSource>(),
        ));
    gh.factory<_i108.ViamAppResourceService>(
        () => _i109.ViamAppResourceServiceImpl(
              gh<_i23.TokenExpiredBroadcaster>(),
              gh<_i102.ResourceDataSource>(),
            ));
    gh.lazySingleton<_i110.ViamDataService>(() => _i111.ViamDataServiceImpl(
          gh<_i23.TokenExpiredBroadcaster>(),
          gh<_i82.DataViamDataSource>(),
        ));
    gh.factory<_i112.AddNewBoatUseCase>(
        () => _i112.AddNewBoatUseCase(gh<_i75.BoatService>()));
    gh.factory<_i113.BoatListCubit>(() => _i113.BoatListCubit(
          gh<_i84.GetBoatsUseCase>(),
          gh<_i87.GetCurrentBoatIdUseCase>(),
          gh<_i104.SetCurrentBoatIdUseCase>(),
        ));
    gh.factory<_i114.ChangeBoatNameCubit>(() => _i114.ChangeBoatNameCubit(
          gh<_i78.ChangeBoatNameUseCase>(),
          gh<_i18.NotifyBoatNameUpdateUseCase>(),
        ));
    gh.factory<_i115.ConnectionErrorCubit>(() => _i115.ConnectionErrorCubit(
          gh<_i81.ConnectToRobotUseCase>(),
          gh<_i112.AddNewBoatUseCase>(),
          gh<_i84.GetBoatsUseCase>(),
          gh<_i91.GetMainPartAddressUseCase>(),
        ));
    gh.factory<_i116.DashboardCubit>(() => _i116.DashboardCubit(
          gh<_i84.GetBoatsUseCase>(),
          gh<_i87.GetCurrentBoatIdUseCase>(),
          gh<_i22.SubscribeToBoatUpdateStreamUseCase>(),
        ));
    gh.factory<_i117.FetchFuelConsumptionDataUseCase>(() =>
        _i117.FetchFuelConsumptionDataUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i118.GetCurrentWaterFiltersUseCase>(
        () => _i118.GetCurrentWaterFiltersUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i119.GetDepthOverTimeDataUseCase>(
        () => _i119.GetDepthOverTimeDataUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i120.GetFuelConsumptionPerMileDataUseCase>(() =>
        _i120.GetFuelConsumptionPerMileDataUseCase(
            gh<_i110.ViamDataService>()));
    gh.factory<_i121.GetResourceNamesUseCase>(() =>
        _i121.GetResourceNamesUseCase(gh<_i108.ViamAppResourceService>()));
    gh.factory<_i122.GetWaterDepthDataUseCase>(
        () => _i122.GetWaterDepthDataUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i123.GetWaterTemperatureDataUseCase>(() =>
        _i123.GetWaterTemperatureDataUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i124.LoginPageCubit>(
        () => _i124.LoginPageCubit(gh<_i98.LoginUseCase>()));
    gh.factory<_i125.MainCubit>(() => _i125.MainCubit(
          gh<_i121.GetResourceNamesUseCase>(),
          gh<_i50.GetTokenOrNullUseCase>(),
          gh<_i63.SubscribeToTokenExpiredStreamUseCase>(),
          gh<_i44.ClearCacheUseCase>(),
          gh<_i81.ConnectToRobotUseCase>(),
          gh<_i79.CheckConnectionUseCase>(),
        ));
    gh.factory<_i126.SelectRobotCubit>(() => _i126.SelectRobotCubit(
          gh<_i112.AddNewBoatUseCase>(),
          gh<_i81.ConnectToRobotUseCase>(),
          gh<_i84.GetBoatsUseCase>(),
          gh<_i47.GetLocationIdUseCase>(),
          gh<_i90.GetLocationsUseCase>(),
          gh<_i48.GetOrganizationIdUseCase>(),
          gh<_i93.GetOrganizationsListUseCase>(),
          gh<_i91.GetMainPartAddressUseCase>(),
          gh<_i49.GetRobotIdUseCase>(),
          gh<_i96.GetRobotsUseCase>(),
          gh<_i50.GetTokenOrNullUseCase>(),
          gh<_i59.SetLocationIdUseCase>(),
          gh<_i60.SetOrganizationIdUseCase>(),
          gh<_i61.SetRobotIdUseCase>(),
          gh<_i63.SubscribeToTokenExpiredStreamUseCase>(),
          gh<_i44.ClearCacheUseCase>(),
          gh<_i99.LogoutUseCase>(),
          gh<_i80.ConnectToAppViamUseCase>(),
        ));
    gh.factory<_i127.SetDepthOverTimeFiltersUseCase>(() =>
        _i127.SetDepthOverTimeFiltersUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i128.SetWaterDepthFiltersUseCase>(
        () => _i128.SetWaterDepthFiltersUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i129.SetWaterTemperatureFiltersUseCase>(() =>
        _i129.SetWaterTemperatureFiltersUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i130.SubscribeToCameraStreamUseCase>(() =>
        _i130.SubscribeToCameraStreamUseCase(gh<_i106.ViamAppCameraService>()));
    gh.factory<_i131.SubscribeToFuelConsumptionStreamUseCase>(() =>
        _i131.SubscribeToFuelConsumptionStreamUseCase(
            gh<_i110.ViamDataService>()));
    gh.factory<_i132.SubscribeToRefreshFiltersUseCase>(() =>
        _i132.SubscribeToRefreshFiltersUseCase(gh<_i110.ViamDataService>()));
    gh.factory<_i133.WaterDepthCubit>(() => _i133.WaterDepthCubit(
          gh<_i122.GetWaterDepthDataUseCase>(),
          gh<_i132.SubscribeToRefreshFiltersUseCase>(),
          gh<_i128.SetWaterDepthFiltersUseCase>(),
        ));
    gh.factory<_i134.WaterDepthCubit>(() => _i134.WaterDepthCubit(
          gh<_i122.GetWaterDepthDataUseCase>(),
          gh<_i132.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i135.WaterTemperatureCubit>(() => _i135.WaterTemperatureCubit(
          gh<_i123.GetWaterTemperatureDataUseCase>(),
          gh<_i132.SubscribeToRefreshFiltersUseCase>(),
          gh<_i129.SetWaterTemperatureFiltersUseCase>(),
        ));
    gh.factory<_i136.WaterTemperatureCubit>(() => _i136.WaterTemperatureCubit(
          gh<_i123.GetWaterTemperatureDataUseCase>(),
          gh<_i132.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i137.WebrtcCameraCubit>(() => _i137.WebrtcCameraCubit(
          gh<_i130.SubscribeToCameraStreamUseCase>(),
          gh<_i12.GetCurrentTimeUseCase>(),
        ));
    gh.factory<_i138.DepthOverTimeCubit>(() => _i138.DepthOverTimeCubit(
          gh<_i119.GetDepthOverTimeDataUseCase>(),
          gh<_i132.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i139.DepthOverTimePageCubit>(() => _i139.DepthOverTimePageCubit(
          gh<_i119.GetDepthOverTimeDataUseCase>(),
          gh<_i132.SubscribeToRefreshFiltersUseCase>(),
        ));
    gh.factory<_i140.FiltersCubit>(() => _i140.FiltersCubit(
          gh<_i118.GetCurrentWaterFiltersUseCase>(),
          gh<_i128.SetWaterDepthFiltersUseCase>(),
          gh<_i129.SetWaterTemperatureFiltersUseCase>(),
          gh<_i127.SetDepthOverTimeFiltersUseCase>(),
        ));
    gh.factory<_i141.FuelConsumptionOverTimeCubit>(
        () => _i141.FuelConsumptionOverTimeCubit(
              gh<_i117.FetchFuelConsumptionDataUseCase>(),
              gh<_i131.SubscribeToFuelConsumptionStreamUseCase>(),
            ));
    gh.factory<_i142.FuelConsumptionOverTimePageCubit>(
        () => _i142.FuelConsumptionOverTimePageCubit(
              gh<_i117.FetchFuelConsumptionDataUseCase>(),
              gh<_i131.SubscribeToFuelConsumptionStreamUseCase>(),
            ));
    gh.factory<_i143.FuelConsumptionPerMileCubit>(() =>
        _i143.FuelConsumptionPerMileCubit(
            gh<_i120.GetFuelConsumptionPerMileDataUseCase>()));
    gh.factory<_i144.FuelConsumptionPerMilePageCubit>(() =>
        _i144.FuelConsumptionPerMilePageCubit(
            gh<_i120.GetFuelConsumptionPerMileDataUseCase>()));
    return this;
  }
}

class _$FlutterSecureStorageModule extends _i145.FlutterSecureStorageModule {}

class _$Auth0ClientModule extends _i146.Auth0ClientModule {}

class _$NavigatorKeyModule extends _i147.NavigatorKeyModule {}

class _$FilePickerModule extends _i148.FilePickerModule {}

class _$FirebaseAnalyticsModule extends _i149.FirebaseAnalyticsModule {}

class _$SharedPreferencesModule extends _i150.SharedPreferencesModule {}

class _$ImagePickerModule extends _i151.ImagePickerModule {}

class _$CameraPermissionModule extends _i152.CameraPermissionModule {}

class _$UuidModule extends _i153.UuidModule {}

class _$ViamSdkModule extends _i154.ViamSdkModule {}

class _$ViamSdkDirectDataClientModule
    extends _i154.ViamSdkDirectDataClientModule {}
