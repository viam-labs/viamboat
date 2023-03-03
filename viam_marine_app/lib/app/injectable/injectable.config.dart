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
import 'package:uuid/uuid.dart' as _i20;

import '../../sdk/viam_sdk.dart' as _i53;
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i27;
import '../data/analytics/service/analytics_service_impl.dart' as _i29;
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i42;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i34;
import '../data/camera/data_source/camera_api_data_source.dart' as _i56;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart' as _i22;
import '../data/camera/service/camera_service_impl.dart' as _i62;
import '../data/local_photo/data_source/local_photo_data_source.dart' as _i12;
import '../data/local_photo/service/local_photo_service_impl.dart' as _i14;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i63;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart' as _i23;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart' as _i24;
import '../data/movement/service/movement_service_impl.dart' as _i65;
import '../data/permissions/data_source/camera_permission_data_source.dart' as _i30;
import '../data/permissions/service/permissions_service_impl.dart' as _i39;
import '../data/resource/data_source/resource_api_data_source.dart' as _i59;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart' as _i21;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart' as _i25;
import '../data/resource/service/resource_service_impl.dart' as _i67;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i60;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart' as _i26;
import '../data/sensor/service/sensor_service_impl.dart' as _i69;
import '../domain/analytics/service/analytics_service.dart' as _i28;
import '../../sdk/viam_sdk.dart' as _i16;
<<<<<<< HEAD
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i28;
import '../data/analytics/service/analytics_service_impl.dart' as _i30;
import '../data/app/data_source/viam_app_app_data_source.dart' as _i17;
import '../data/app/mapper/viam_organization_to_viam_app_organization.dart' as _i22;
import '../data/app/service/viam_app_app_service_impl.dart' as _i42;
=======
import '../data/analytics/data_sink/analytics_data_sink.dart' as _i27;
import '../data/analytics/service/analytics_service_impl.dart' as _i29;
import '../data/app_viam/data_source/app_viam_data_source.dart' as _i30;
import '../data/app_viam/mapper/viam_organization_to_viam_app_organization.dart'
    as _i21;
import '../data/app_viam/service/app_viam_service.dart' as _i32;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
import '../data/boat/broadcaster/boat_update_broadcaster_impl.dart' as _i6;
import '../data/boat/service/boat_service_impl.dart' as _i47;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i36;
import '../data/camera/data_source/camera_api_data_source.dart' as _i60;
<<<<<<< HEAD
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart' as _i19;
import '../data/camera/service/camera_service_impl.dart' as _i66;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i67;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart' as _i21;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart' as _i23;
import '../data/movement/service/movement_service_impl.dart' as _i69;
import '../data/permissions/data_source/camera_permission_data_source.dart' as _i32;
import '../data/permissions/service/permissions_service_impl.dart' as _i39;
import '../data/resource/data_source/resource_api_data_source.dart' as _i63;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart' as _i18;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart' as _i24;
import '../data/resource/service/resource_service_impl.dart' as _i71;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i64;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart' as _i25;
import '../data/sensor/service/sensor_service_impl.dart' as _i73;
import '../data/viam/data_source/viam_data_source.dart' as _i20;
import '../data/viam/service/viam_service_impl.dart' as _i27;
import '../domain/analytics/service/analytics_service.dart' as _i29;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i35;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart' as _i36;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i37;
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i41;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i33;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i54;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i43;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i44;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i45;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i46;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i48;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i15;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i49;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i50;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart' as _i19;
import '../domain/camera/service/camera_service.dart' as _i61;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i71;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i72;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart' as _i80;
import '../domain/current_time/get_current_time_use_case.dart' as _i9;
import '../domain/local_photo/service/local_photo_service.dart' as _i13;
import '../domain/local_photo/use_case/capture_photo_for_boat_use_case.dart' as _i31;
import '../domain/local_photo/use_case/choose_photo_for_boat_use_case.dart' as _i32;
import '../domain/movement/service/movement_service.dart' as _i64;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i73;
import '../domain/movement/usecase/get_position_use_case.dart' as _i74;
import '../domain/permissions/service/permissions_service.dart' as _i38;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart' as _i47;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart' as _i40;
import '../domain/resource/service/resource_service.dart' as _i66;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i75;
import '../domain/sensor/service/sensor_service_impl.dart' as _i68;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i76;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i70;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i55;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart' as _i81;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart' as _i57;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i58;
import '../presentation/page/main/cubit/main_cubit.dart' as _i77;
import '../presentation/page/map/cubit/map_cubit.dart' as _i78;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i17;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i51;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i52;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart' as _i82;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart' as _i79;
import 'camera_permission_injectable.dart' as _i87;
import 'file_picker_injectable.dart' as _i83;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i84;
import 'image_picker_injectable.dart' as _i86;
import 'navigator_key_injectable.dart' as _i85;
import 'shared_preferences_injectable.dart' as _i88;
import 'uuid_injectable.dart' as _i89;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i90;
import '../domain/app/service/viam_app_app_servcie.dart' as _i41;
import '../domain/app/usecase/list_organizations_use_case.dart' as _i52;
=======
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i18;
import '../data/camera/service/camera_service_impl.dart' as _i66;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i67;
import '../data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart'
    as _i20;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i22;
import '../data/movement/service/movement_service_impl.dart' as _i69;
import '../data/permissions/data_source/camera_permission_data_source.dart'
    as _i34;
import '../data/permissions/service/permissions_service_impl.dart' as _i43;
import '../data/resource/data_source/resource_api_data_source.dart' as _i63;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i17;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i23;
import '../data/resource/service/resource_service_impl.dart' as _i71;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i64;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i24;
import '../data/sensor/service/sensor_service_impl.dart' as _i73;
import '../data/viam/data_source/viam_data_source.dart' as _i19;
import '../data/viam/service/viam_service_impl.dart' as _i26;
import '../domain/analytics/service/analytics_service.dart' as _i28;
import '../domain/analytics/usecase/log_add_boat_event_use_case.dart' as _i38;
import '../domain/analytics/usecase/log_delete_boat_event_use_case.dart'
    as _i39;
import '../domain/analytics/usecase/log_open_app_event_use_case.dart' as _i40;
import '../domain/app_viam/service/app_viam_service.dart' as _i31;
import '../domain/app_viam/usecase/list_organizations_use_case.dart' as _i37;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
import '../domain/boat/broadcaster/boat_update_broadcaster.dart' as _i5;
import '../domain/boat/service/boat_service.dart' as _i46;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i35;
import '../domain/boat/usecase/add_new_boat_use_case.dart' as _i58;
import '../domain/boat/usecase/change_boat_name_use_case.dart' as _i48;
import '../domain/boat/usecase/check_connection_use_case.dart' as _i49;
import '../domain/boat/usecase/delete_boat_use_case.dart' as _i50;
import '../domain/boat/usecase/get_boats_use_case.dart' as _i51;
import '../domain/boat/usecase/get_current_boat_id_use_case.dart' as _i53;
import '../domain/boat/usecase/notify_boat_name_update_use_case.dart' as _i10;
import '../domain/boat/usecase/remove_current_boat_id_use_case.dart' as _i54;
import '../domain/boat/usecase/set_current_boat_id_use_case.dart' as _i55;
import '../domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart' as _i14;
import '../domain/camera/service/camera_service.dart' as _i65;
import '../domain/camera/usecase/get_camera_data_use_case.dart' as _i75;
import '../domain/camera/usecase/get_camera_video_use_case.dart' as _i76;
import '../domain/camera/usecase/subscribe_to_camera_stream_use_case.dart' as _i84;
import '../domain/current_time/get_current_time_use_case.dart' as _i8;
import '../domain/movement/service/movement_service.dart' as _i68;
import '../domain/movement/usecase/get_linear_velocity_use_case.dart' as _i77;
import '../domain/movement/usecase/get_position_use_case.dart' as _i78;
<<<<<<< HEAD
import '../domain/permissions/service/permissions_service.dart' as _i38;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart' as _i50;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart' as _i40;
=======
import '../domain/permissions/service/permissions_service.dart' as _i42;
import '../domain/permissions/usecase/get_camera_permission_status_use_case.dart'
    as _i52;
import '../domain/permissions/usecase/request_camera_permission_use_case.dart'
    as _i44;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
import '../domain/resource/service/resource_service.dart' as _i70;
import '../domain/resource/usecase/get_resource_names_use_case.dart' as _i79;
import '../domain/sensor/service/sensor_service_impl.dart' as _i72;
import '../domain/sensor/usecase/get_sensor_data_use_case.dart' as _i80;
import '../domain/viam/service/viam_service.dart' as _i25;
import '../domain/viam/usecase/authenticate_use_case.dart' as _i33;
import '../domain/viam/usecase/viam_connect_use_case.dart' as _i45;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i74;
import '../presentation/page/boat_list/cubit/boat_list_cubit.dart' as _i59;
import '../presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart' as _i85;
import '../presentation/page/change_boat_name/cubit/change_boat_name_cubit.dart' as _i61;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i62;
import '../presentation/page/main/cubit/main_cubit.dart' as _i81;
import '../presentation/page/map/cubit/map_cubit.dart' as _i82;
<<<<<<< HEAD
import '../presentation/page/organizations/cubit/organizations_cubit.dart' as _i53;
=======
import '../presentation/page/organizations/cubit/organizations_cubit.dart'
    as _i41;
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i12;
import '../presentation/page/settings/cubit/settings_cubit.dart' as _i56;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i57;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart' as _i86;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart' as _i83;
import 'camera_permission_injectable.dart' as _i89;
import 'firebase_analytics_injectable/analytics_injectable.dart' as _i87;
import 'navigator_key_injectable.dart' as _i88;
import 'shared_preferences_injectable.dart' as _i90;
import 'uuid_injectable.dart' as _i91;
import 'viam_sdk_injectable/viam_sdk_injectable.dart' as _i92;

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
<<<<<<< HEAD
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(() => _i6.BoatChangeBroadcasterImpl());
  gh.factory<_i7.FilePicker>(() => filePickerModule.filePicker);
  gh.lazySingleton<_i8.FirebaseAnalytics>(
=======
  gh.lazySingleton<_i5.BoatUpdateBroadcaster>(
      () => _i6.BoatChangeBroadcasterImpl());
  gh.singleton<_i7.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.lazySingleton<_i7.FirebaseAnalytics>(
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
    () => firebaseAnalyticsModule.instance,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
<<<<<<< HEAD
  gh.singleton<_i8.FirebaseAnalytics>(
    firebaseAnalyticsModule.testInstance,
    registerFor: {_test},
  );
  gh.factory<_i9.GetCurrentTimeUseCase>(() => _i9.GetCurrentTimeUseCase());
  gh.singleton<_i10.GlobalKey<_i10.NavigatorState>>(navigatorKeyModule.navigatorKey());
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
=======
  gh.factory<_i8.GetCurrentTimeUseCase>(() => _i8.GetCurrentTimeUseCase());
  gh.singleton<_i9.GlobalKey<_i9.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i10.NotifyBoatNameUpdateUseCase>(
      () => _i10.NotifyBoatNameUpdateUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i11.Permission>(cameraPermissionModule.cameraPermission);
  gh.factory<_i12.ScanQrCubit>(() => _i12.ScanQrCubit());
  await gh.factoryAsync<_i13.SharedPreferences>(
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.SubscribeToBoatUpdateStreamUseCase>(
      () => _i19.SubscribeToBoatUpdateStreamUseCase(get<_i5.BoatUpdateBroadcaster>()));
  gh.singleton<_i15.Uuid>(uuidModule.uuid);
  gh.singleton<_i16.Viam>(viamSdkModule.viam);
<<<<<<< HEAD
  gh.factory<_i17.ViamAppAppDataSource>(() => _i17.ViamAppAppDataSource(get<_i16.Viam>()));
  gh.factory<_i18.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i18.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i19.ViamCameraDataToViamAppCameraDataMapper>(() => _i19.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i20.ViamDataSource>(() => _i20.ViamDataSource(get<_i16.Viam>()));
  gh.factory<_i21.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i21.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i22.ViamOrganizationToViamAppOrganization>(() => _i22.ViamOrganizationToViamAppOrganization());
  gh.factory<_i23.ViamPositionToViamAppPositionMapper>(() => _i23.ViamPositionToViamAppPositionMapper());
  gh.factory<_i24.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i24.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i25.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i25.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i26.ViamService>(() => _i27.ViamServiceImpl(get<_i20.ViamDataSource>()));
  gh.factory<_i28.AnalyticsDataSink>(() => _i28.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i29.AnalyticsService>(() => _i30.AnalyticsServiceImpl(get<_i28.AnalyticsDataSink>()));
  gh.factory<_i31.AuthenticateUseCase>(() => _i31.AuthenticateUseCase(get<_i26.ViamService>()));
  gh.factory<_i32.CameraPermissionDataSource>(() => _i32.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i33.CurrentBoatStore>(() => _i34.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i35.LogAddBoatEventUseCase>(() => _i35.LogAddBoatEventUseCase(get<_i29.AnalyticsService>()));
  gh.factory<_i36.LogDeleteBoatEventUseCase>(() => _i36.LogDeleteBoatEventUseCase(get<_i29.AnalyticsService>()));
  gh.factory<_i37.LogOpenAppEventUseCase>(() => _i37.LogOpenAppEventUseCase(get<_i29.AnalyticsService>()));
  gh.lazySingleton<_i38.PermissionsService>(() => _i39.PermissionsServiceImpl(get<_i32.CameraPermissionDataSource>()));
  gh.factory<_i40.RequestCameraPermissionUseCase>(
      () => _i40.RequestCameraPermissionUseCase(get<_i38.PermissionsService>()));
  gh.lazySingleton<_i41.ViamAppAppService>(() => _i42.ViamAppAppServiceImpl(
        get<_i17.ViamAppAppDataSource>(),
        get<_i22.ViamOrganizationToViamAppOrganization>(),
      ));
  gh.factory<_i43.ViamConnectUseCase>(() => _i43.ViamConnectUseCase(get<_i26.ViamService>()));
  gh.factory<_i44.BoatService>(() => _i45.BoatServiceImpl(
=======
  gh.factory<_i17.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i17.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i18.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i18.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i19.ViamDataSource>(() => _i19.ViamDataSource(get<_i16.Viam>()));
  gh.factory<_i20.ViamLinearVelocityToViamAppLinearVelocityMapper>(
      () => _i20.ViamLinearVelocityToViamAppLinearVelocityMapper());
  gh.factory<_i21.ViamOrganizationToViamAppOrganization>(
      () => _i21.ViamOrganizationToViamAppOrganization());
  gh.factory<_i22.ViamPositionToViamAppPositionMapper>(
      () => _i22.ViamPositionToViamAppPositionMapper());
  gh.factory<_i23.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i23.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i24.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i24.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.lazySingleton<_i25.ViamService>(
      () => _i26.ViamServiceImpl(get<_i19.ViamDataSource>()));
  gh.factory<_i27.AnalyticsDataSink>(
      () => _i27.AnalyticsDataSinkImpl(get<_i7.FirebaseAnalytics>()));
  gh.factory<_i28.AnalyticsService>(
      () => _i29.AnalyticsServiceImpl(get<_i27.AnalyticsDataSink>()));
  gh.factory<_i30.AppViamDataSource>(
      () => _i30.AppViamDataSource(get<_i16.Viam>()));
  gh.lazySingleton<_i31.AppViamService>(() => _i32.AppViamServiceImpl(
        get<_i30.AppViamDataSource>(),
        get<_i21.ViamOrganizationToViamAppOrganization>(),
      ));
  gh.factory<_i33.AuthenticateUseCase>(
      () => _i33.AuthenticateUseCase(get<_i25.ViamService>()));
  gh.factory<_i34.CameraPermissionDataSource>(
      () => _i34.CameraPermissionDataSource(get<_i11.Permission>()));
  gh.factory<_i35.CurrentBoatStore>(() =>
      _i36.SharedPreferencesCurrentBoatStore(get<_i13.SharedPreferences>()));
  gh.factory<_i37.GetOrganizationsListUseCase>(
      () => _i37.GetOrganizationsListUseCase(get<_i31.AppViamService>()));
  gh.factory<_i38.LogAddBoatEventUseCase>(
      () => _i38.LogAddBoatEventUseCase(get<_i28.AnalyticsService>()));
  gh.factory<_i39.LogDeleteBoatEventUseCase>(
      () => _i39.LogDeleteBoatEventUseCase(get<_i28.AnalyticsService>()));
  gh.factory<_i40.LogOpenAppEventUseCase>(
      () => _i40.LogOpenAppEventUseCase(get<_i28.AnalyticsService>()));
  gh.factory<_i41.OrganizationsCubit>(
      () => _i41.OrganizationsCubit(get<_i37.GetOrganizationsListUseCase>()));
  gh.lazySingleton<_i42.PermissionsService>(() =>
      _i43.PermissionsServiceImpl(get<_i34.CameraPermissionDataSource>()));
  gh.factory<_i44.RequestCameraPermissionUseCase>(() =>
      _i44.RequestCameraPermissionUseCase(get<_i42.PermissionsService>()));
  gh.factory<_i45.ViamConnectUseCase>(
      () => _i45.ViamConnectUseCase(get<_i25.ViamService>()));
  gh.factory<_i46.BoatService>(() => _i47.BoatServiceImpl(
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
        get<_i3.BoatBox>(),
        get<_i35.CurrentBoatStore>(),
      ));
<<<<<<< HEAD
  gh.factory<_i46.ChangeBoatNameUseCase>(() => _i46.ChangeBoatNameUseCase(get<_i44.BoatService>()));
  gh.factory<_i47.CheckConnectionUseCase>(() => _i47.CheckConnectionUseCase(get<_i44.BoatService>()));
  gh.factory<_i48.DeleteBoatUseCase>(() => _i48.DeleteBoatUseCase(get<_i44.BoatService>()));
  gh.factory<_i49.GetBoatsUseCase>(() => _i49.GetBoatsUseCase(get<_i44.BoatService>()));
  gh.factory<_i50.GetCameraPermissionStatusUseCase>(
      () => _i50.GetCameraPermissionStatusUseCase(get<_i38.PermissionsService>()));
  gh.factory<_i51.GetCurrentBoatIdUseCase>(() => _i51.GetCurrentBoatIdUseCase(get<_i44.BoatService>()));
  gh.factory<_i52.ListOrganizationsUseCase>(() => _i52.ListOrganizationsUseCase(get<_i41.ViamAppAppService>()));
  gh.factory<_i53.OrganizationsCubit>(() => _i53.OrganizationsCubit(get<_i52.ListOrganizationsUseCase>()));
  gh.factory<_i54.RemoveCurrentBoatIdUseCase>(() => _i54.RemoveCurrentBoatIdUseCase(get<_i44.BoatService>()));
  gh.factory<_i55.SetCurrentBoatIdUseCase>(() => _i55.SetCurrentBoatIdUseCase(get<_i44.BoatService>()));
=======
  gh.factory<_i48.ChangeBoatNameUseCase>(
      () => _i48.ChangeBoatNameUseCase(get<_i46.BoatService>()));
  gh.factory<_i49.CheckConnectionUseCase>(
      () => _i49.CheckConnectionUseCase(get<_i46.BoatService>()));
  gh.factory<_i50.DeleteBoatUseCase>(
      () => _i50.DeleteBoatUseCase(get<_i46.BoatService>()));
  gh.factory<_i51.GetBoatsUseCase>(
      () => _i51.GetBoatsUseCase(get<_i46.BoatService>()));
  gh.factory<_i52.GetCameraPermissionStatusUseCase>(() =>
      _i52.GetCameraPermissionStatusUseCase(get<_i42.PermissionsService>()));
  gh.factory<_i53.GetCurrentBoatIdUseCase>(
      () => _i53.GetCurrentBoatIdUseCase(get<_i46.BoatService>()));
  gh.factory<_i54.RemoveCurrentBoatIdUseCase>(
      () => _i54.RemoveCurrentBoatIdUseCase(get<_i46.BoatService>()));
  gh.factory<_i55.SetCurrentBoatIdUseCase>(
      () => _i55.SetCurrentBoatIdUseCase(get<_i46.BoatService>()));
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
  gh.factory<_i56.SettingsCubit>(() => _i56.SettingsCubit(
        get<_i51.GetBoatsUseCase>(),
        get<_i53.GetCurrentBoatIdUseCase>(),
        get<_i50.DeleteBoatUseCase>(),
        get<_i39.LogDeleteBoatEventUseCase>(),
        get<_i54.RemoveCurrentBoatIdUseCase>(),
        get<_i55.SetCurrentBoatIdUseCase>(),
        get<_i14.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i57.SplashCubit>(() => _i57.SplashCubit(
        get<_i53.GetCurrentBoatIdUseCase>(),
        get<_i51.GetBoatsUseCase>(),
        get<_i45.ViamConnectUseCase>(),
      ));
  await gh.singletonAsync<_i16.ViamSdk>(
    () => viamModule.getViamSdk(
      get<_i51.GetBoatsUseCase>(),
      get<_i53.GetCurrentBoatIdUseCase>(),
    ),
    preResolve: true,
  );
<<<<<<< HEAD
  gh.factory<_i58.AddNewBoatUseCase>(() => _i58.AddNewBoatUseCase(get<_i44.BoatService>()));
=======
  gh.factory<_i58.AddNewBoatUseCase>(
      () => _i58.AddNewBoatUseCase(get<_i46.BoatService>()));
>>>>>>> 69da314 ([VIAM-110-organizations] Code Review)
  gh.factory<_i59.BoatListCubit>(() => _i59.BoatListCubit(
        get<_i51.GetBoatsUseCase>(),
        get<_i53.GetCurrentBoatIdUseCase>(),
        get<_i55.SetCurrentBoatIdUseCase>(),
      ));
  gh.factory<_i60.CameraDataSource>(() => _i60.CameraDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i61.ChangeBoatNameCubit>(() => _i61.ChangeBoatNameCubit(
        get<_i48.ChangeBoatNameUseCase>(),
        get<_i10.NotifyBoatNameUpdateUseCase>(),
      ));
  gh.factory<_i62.DashboardCubit>(() => _i62.DashboardCubit(
        get<_i51.GetBoatsUseCase>(),
        get<_i53.GetCurrentBoatIdUseCase>(),
        get<_i14.SubscribeToBoatUpdateStreamUseCase>(),
      ));
  gh.factory<_i63.ResourceDataSource>(() => _i63.ResourceDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i64.SensorDataSource>(() => _i64.SensorDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i65.ViamAppCameraService>(() => _i66.ViamAppCameraServiceImpl(
        get<_i60.CameraDataSource>(),
        get<_i18.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i67.ViamAppMovementSdkDataSource>(() => _i67.ViamAppMovementSdkDataSource(get<_i16.ViamSdk>()));
  gh.factory<_i68.ViamAppMovementService>(() => _i69.ViamAppMovementServiceImpl(
        get<_i67.ViamAppMovementSdkDataSource>(),
        get<_i17.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i22.ViamPositionToViamAppPositionMapper>(),
        get<_i20.ViamLinearVelocityToViamAppLinearVelocityMapper>(),
      ));
  gh.factory<_i70.ViamAppResourceService>(() => _i71.ViamAppResourceServiceImpl(
        get<_i63.ResourceDataSource>(),
        get<_i23.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i72.ViamAppSensorService>(() => _i73.ViamAppSensorServiceImpl(
        get<_i64.SensorDataSource>(),
        get<_i17.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i24.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i74.AddBoatCubit>(() => _i74.AddBoatCubit(
        get<_i58.AddNewBoatUseCase>(),
        get<_i49.CheckConnectionUseCase>(),
        get<_i55.SetCurrentBoatIdUseCase>(),
        get<_i52.GetCameraPermissionStatusUseCase>(),
        get<_i44.RequestCameraPermissionUseCase>(),
        get<_i38.LogAddBoatEventUseCase>(),
        get<_i15.Uuid>(),
        get<_i51.GetBoatsUseCase>(),
        get<_i33.AuthenticateUseCase>(),
      ));
  gh.factory<_i75.GetCameraDataUseCase>(() => _i75.GetCameraDataUseCase(get<_i65.ViamAppCameraService>()));
  gh.factory<_i76.GetCameraVideoUseCase>(() => _i76.GetCameraVideoUseCase(get<_i65.ViamAppCameraService>()));
  gh.factory<_i77.GetLinearVelocityUseCase>(() => _i77.GetLinearVelocityUseCase(get<_i68.ViamAppMovementService>()));
  gh.factory<_i78.GetPostionUseCase>(() => _i78.GetPostionUseCase(get<_i68.ViamAppMovementService>()));
  gh.factory<_i79.GetResourceNamesUseCase>(() => _i79.GetResourceNamesUseCase(get<_i70.ViamAppResourceService>()));
  gh.factory<_i80.GetSensorDataUseCase>(() => _i80.GetSensorDataUseCase(get<_i72.ViamAppSensorService>()));
  gh.factory<_i81.MainCubit>(() => _i81.MainCubit(get<_i79.GetResourceNamesUseCase>()));
  gh.factory<_i82.MapCubit>(() => _i82.MapCubit(
        get<_i78.GetPostionUseCase>(),
        get<_i80.GetSensorDataUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i83.SensorTileCubit>(() => _i83.SensorTileCubit(
        get<_i80.GetSensorDataUseCase>(),
        get<_i77.GetLinearVelocityUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i84.SubscribeToCameraStreamUseCase>(
      () => _i84.SubscribeToCameraStreamUseCase(get<_i65.ViamAppCameraService>()));
  gh.factory<_i85.WebrtcCameraCubit>(() => _i85.WebrtcCameraCubit(
        get<_i76.GetCameraVideoUseCase>(),
        get<_i84.SubscribeToCameraStreamUseCase>(),
        get<_i8.GetCurrentTimeUseCase>(),
      ));
  gh.factory<_i86.CameraTileCubit>(() => _i86.CameraTileCubit(get<_i75.GetCameraDataUseCase>()));
  return get;
}

class _$FirebaseAnalyticsModule extends _i87.FirebaseAnalyticsModule {}

class _$NavigatorKeyModule extends _i88.NavigatorKeyModule {}

class _$CameraPermissionModule extends _i89.CameraPermissionModule {}

class _$SharedPreferencesModule extends _i90.SharedPreferencesModule {}

class _$UuidModule extends _i91.UuidModule {}

class _$ViamSdkModule extends _i92.ViamSdkModule {}

class _$ViamModule extends _i92.ViamModule {}
