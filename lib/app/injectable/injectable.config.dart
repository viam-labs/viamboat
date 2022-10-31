// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../sdk/viam_sdk.dart' as _i6;
import '../data/resource/data_source/resource_api_data_source.dart' as _i8;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i4;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i5;
import '../data/resource/service/resource_service_impl.dart' as _i10;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i11;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i7;
import '../data/sensor/service/sensor_service_impl.dart' as _i13;
import '../domain/resource/service/resource_service_impl.dart' as _i9;
import '../domain/sensor/service/sensor_service_impl.dart' as _i12;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i15;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i14;
import 'grpc_client_injectable/grpc_client_injectable.dart' as _i17;
import 'navigator_key_injectable.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i5.ViamResourceNameToViamAppResourceNameMapper());
  gh.singleton<_i6.ViamSdk>(viamModule.getViamSdk());
  gh.factory<_i7.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i7.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i8.ResourceDataSource>(
      () => _i8.ResourceDataSource(get<_i6.ViamSdk>()));
  gh.factory<_i9.ResourceService>(() => _i10.ResourceServiceImpl(
        get<_i8.ResourceDataSource>(),
        get<_i5.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i11.SensorDataSource>(
      () => _i11.SensorDataSource(get<_i6.ViamSdk>()));
  gh.factory<_i12.SensorService>(() => _i13.SensorServiceImpl(
        get<_i11.SensorDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i7.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i14.SensorTileCubit>(
      () => _i14.SensorTileCubit(get<_i12.SensorService>()));
  gh.factory<_i15.DashboardCubit>(
      () => _i15.DashboardCubit(get<_i9.ResourceService>()));
  return get;
}

class _$NavigatorKeyModule extends _i16.NavigatorKeyModule {}

class _$ViamModule extends _i17.ViamModule {}
