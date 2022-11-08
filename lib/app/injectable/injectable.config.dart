// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../sdk/viam_sdk.dart' as _i8;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i17;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i6;
import '../data/movement/service/movement_service_impl.dart' as _i19;
import '../data/resource/data_source/resource_api_data_source.dart' as _i10;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i5;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i7;
import '../data/resource/service/resource_service_impl.dart' as _i12;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i13;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i9;
import '../data/sensor/service/sensor_service_impl.dart' as _i15;
import '../domain/movement/service/movement_service.dart' as _i18;
import '../domain/resource/service/resource_service_impl.dart' as _i11;
import '../domain/sensor/service/sensor_service_impl.dart' as _i14;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i20;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i3;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i21;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i16;
import 'navigator_key_injectable.dart' as _i22;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.CameraTileCubit>(() => _i3.CameraTileCubit());
  gh.singleton<_i4.GlobalKey<_i4.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i5.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i5.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i6.ViamPositionToViamAppPositionMapper>(
      () => _i6.ViamPositionToViamAppPositionMapper());
  gh.factory<_i7.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i7.ViamResourceNameToViamAppResourceNameMapper());
  gh.singleton<_i8.ViamSdk>(viamModule.getViamSdk());
  gh.factory<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i9.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i10.ResourceDataSource>(
      () => _i10.ResourceDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i11.ResourceService>(() => _i12.ResourceServiceImpl(
        get<_i10.ResourceDataSource>(),
        get<_i7.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i13.SensorDataSource>(
      () => _i13.SensorDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i14.SensorService>(() => _i15.SensorServiceImpl(
        get<_i13.SensorDataSource>(),
        get<_i5.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i16.SensorTileCubit>(
      () => _i16.SensorTileCubit(get<_i14.SensorService>()));
  gh.factory<_i17.ViamAppMovementSdkDataSource>(
      () => _i17.ViamAppMovementSdkDataSource(get<_i8.ViamSdk>()));
  gh.factory<_i18.ViamAppMovementService>(() => _i19.ViamAppMovementServiceImpl(
        get<_i17.ViamAppMovementSdkDataSource>(),
        get<_i5.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i6.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i20.DashboardCubit>(
      () => _i20.DashboardCubit(get<_i11.ResourceService>()));
  gh.factory<_i21.MapTileCubit>(
      () => _i21.MapTileCubit(get<_i18.ViamAppMovementService>()));
  return get;
}

class _$NavigatorKeyModule extends _i22.NavigatorKeyModule {}

class _$ViamModule extends _i23.ViamModule {}
