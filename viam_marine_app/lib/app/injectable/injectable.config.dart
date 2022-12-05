// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../sdk/viam_sdk.dart' as _i13;
import '../data/boat/service/current_boat_service_impl.dart' as _i6;
import '../data/boat/store/current_boat_box_impl.dart' as _i4;
import '../data/camera/data_source/camera_api_data_source.dart' as _i16;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i10;
import '../data/camera/service/camera_service_impl.dart' as _i25;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i26;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i11;
import '../data/movement/service/movement_service_impl.dart' as _i28;
import '../data/resource/data_source/resource_api_data_source.dart' as _i17;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i9;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i12;
import '../data/resource/service/resource_service_impl.dart' as _i19;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i20;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i14;
import '../data/sensor/service/sensor_service_impl.dart' as _i22;
import '../domain/boat/service/current_boat_service.dart' as _i5;
import '../domain/boat/store/current_boat_box.dart' as _i3;
import '../domain/camera/service/camera_service.dart' as _i24;
import '../domain/movement/service/movement_service.dart' as _i27;
import '../domain/resource/service/resource_service_impl.dart' as _i18;
import '../domain/sensor/service/sensor_service_impl.dart' as _i21;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i15;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i30;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i8;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i29;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i31;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i23;
import 'navigator_key_injectable.dart' as _i32;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i33; // ignore_for_file: unnecessary_lambdas

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
  final navigatorKeyModule = _$NavigatorKeyModule();
  final viamModule = _$ViamModule();
  gh.singleton<_i3.CurrentBoatBox>(_i4.CurrentBoatBoxImpl());
  gh.factory<_i5.CurrentBoatService>(
      () => _i6.CurrentBoatServiceImpl(get<_i3.CurrentBoatBox>()));
  gh.singleton<_i7.GlobalKey<_i7.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i8.SplashCubit>(
      () => _i8.SplashCubit(get<_i5.CurrentBoatService>()));
  gh.factory<_i9.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i9.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i10.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i10.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i11.ViamPositionToViamAppPositionMapper>(
      () => _i11.ViamPositionToViamAppPositionMapper());
  gh.factory<_i12.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i12.ViamResourceNameToViamAppResourceNameMapper());
  await gh.singletonAsync<_i13.ViamSdk>(
    () => viamModule.getViamSdk(get<_i5.CurrentBoatService>()),
    preResolve: true,
  );
  gh.factory<_i14.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i14.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i15.AddBoatCubit>(
      () => _i15.AddBoatCubit(get<_i5.CurrentBoatService>()));
  gh.factory<_i16.CameraDataSource>(
      () => _i16.CameraDataSource(get<_i13.ViamSdk>()));
  gh.factory<_i17.ResourceDataSource>(
      () => _i17.ResourceDataSource(get<_i13.ViamSdk>()));
  gh.factory<_i18.ResourceService>(() => _i19.ResourceServiceImpl(
        get<_i17.ResourceDataSource>(),
        get<_i12.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i20.SensorDataSource>(
      () => _i20.SensorDataSource(get<_i13.ViamSdk>()));
  gh.factory<_i21.SensorService>(() => _i22.SensorServiceImpl(
        get<_i20.SensorDataSource>(),
        get<_i9.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i14.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i23.SensorTileCubit>(
      () => _i23.SensorTileCubit(get<_i21.SensorService>()));
  gh.factory<_i24.ViamAppCameraService>(() => _i25.ViamAppCameraServiceImpl(
        get<_i16.CameraDataSource>(),
        get<_i10.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i26.ViamAppMovementSdkDataSource>(
      () => _i26.ViamAppMovementSdkDataSource(get<_i13.ViamSdk>()));
  gh.factory<_i27.ViamAppMovementService>(() => _i28.ViamAppMovementServiceImpl(
        get<_i26.ViamAppMovementSdkDataSource>(),
        get<_i9.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i11.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i29.CameraTileCubit>(
      () => _i29.CameraTileCubit(get<_i24.ViamAppCameraService>()));
  gh.factory<_i30.DashboardCubit>(
      () => _i30.DashboardCubit(get<_i18.ResourceService>()));
  gh.factory<_i31.MapTileCubit>(() => _i31.MapTileCubit(
        get<_i27.ViamAppMovementService>(),
        get<_i21.SensorService>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i32.NavigatorKeyModule {}

class _$ViamModule extends _i33.ViamModule {}
