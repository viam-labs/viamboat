// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../sdk/src/viam_sdk.dart' as _i11;
import '../../sdk/viam_sdk.dart' as _i8;
import '../data/camera/data_source/camera_api_data_source.dart' as _i12;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i5;
import '../data/camera/service/camera_service_impl.dart' as _i21;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i22;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i6;
import '../data/movement/service/movement_service_impl.dart' as _i24;
import '../data/resource/data_source/resource_api_data_source.dart' as _i13;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i4;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i7;
import '../data/resource/service/resource_service_impl.dart' as _i15;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i16;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i9;
import '../data/sensor/service/sensor_service_impl.dart' as _i18;
import '../domain/camera/service/camera_service.dart' as _i20;
import '../domain/movement/service/movement_service.dart' as _i23;
import '../domain/resource/service/resource_service_impl.dart' as _i14;
import '../domain/sensor/service/sensor_service_impl.dart' as _i17;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i26;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i25;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i27;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i19;
import '../presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_cubit.dart'
    as _i10;
import 'navigator_key_injectable.dart' as _i28;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final navigatorKeyModule = _$NavigatorKeyModule();
  final viamModule = _$ViamModule();
  gh.singleton<_i3.GlobalKey<_i3.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i4.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i4.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i5.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i5.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i6.ViamPositionToViamAppPositionMapper>(
      () => _i6.ViamPositionToViamAppPositionMapper());
  gh.factory<_i7.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i7.ViamResourceNameToViamAppResourceNameMapper());
  gh.singleton<_i8.ViamSdk>(viamModule.getViamSdk());
  gh.factory<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i9.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i10.WebrtcCameraCubit>(
      () => _i10.WebrtcCameraCubit(get<_i11.ViamSdk>()));
  gh.factory<_i12.CameraDataSource>(
      () => _i12.CameraDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i13.ResourceDataSource>(
      () => _i13.ResourceDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i14.ResourceService>(() => _i15.ResourceServiceImpl(
        get<_i13.ResourceDataSource>(),
        get<_i7.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i16.SensorDataSource>(
      () => _i16.SensorDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i17.SensorService>(() => _i18.SensorServiceImpl(
        get<_i16.SensorDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i19.SensorTileCubit>(
      () => _i19.SensorTileCubit(get<_i17.SensorService>()));
  gh.factory<_i20.ViamAppCameraService>(() => _i21.ViamAppCameraServiceImpl(
        get<_i12.CameraDataSource>(),
        get<_i5.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i22.ViamAppMovementSdkDataSource>(
      () => _i22.ViamAppMovementSdkDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i23.ViamAppMovementService>(() => _i24.ViamAppMovementServiceImpl(
        get<_i22.ViamAppMovementSdkDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i6.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i25.CameraTileCubit>(
      () => _i25.CameraTileCubit(get<_i20.ViamAppCameraService>()));
  gh.factory<_i26.DashboardCubit>(
      () => _i26.DashboardCubit(get<_i14.ResourceService>()));
  gh.factory<_i27.MapTileCubit>(() => _i27.MapTileCubit(
        get<_i23.ViamAppMovementService>(),
        get<_i17.SensorService>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i28.NavigatorKeyModule {}

class _$ViamModule extends _i29.ViamModule {}
