// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/resource/data_source/resource_api_data_source.dart' as _i5;
import '../data/resource/service/resource_service_impl.dart' as _i7;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i8;
import '../data/sensor/service/sensor_service_impl.dart' as _i10;
import '../domain/resource/service/resource_service_impl.dart' as _i6;
import '../domain/sensor/service/sensor_service_impl.dart' as _i9;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i12;
import '../presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i11;
import 'grpc_client_injectable/grpc_client_injectable.dart' as _i13;
import 'navigator_key_injectable.dart' as _i14;

const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
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
  final grpcModule = _$GrpcModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  gh.lazySingleton<_i3.ClientChannel>(
    () => grpcModule.gRpcClient(),
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i3.ClientChannel>(
    grpcModule.testGrpcClient(),
    registerFor: {_test},
  );
  gh.singleton<_i4.GlobalKey<_i4.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i5.ResourceDataSource>(
      () => _i5.ResourceDataSource(get<_i3.ClientChannel>()));
  gh.factory<_i6.ResourceService>(
      () => _i7.ResourceServiceImpl(get<_i5.ResourceDataSource>()));
  gh.factory<_i8.SensorDataSource>(
      () => _i8.SensorDataSource(get<_i3.ClientChannel>()));
  gh.factory<_i9.SensorService>(
      () => _i10.SensorServiceImpl(get<_i8.SensorDataSource>()));
  gh.factory<_i11.SensorTileCubit>(
      () => _i11.SensorTileCubit(get<_i9.SensorService>()));
  gh.factory<_i12.DashboardCubit>(
      () => _i12.DashboardCubit(get<_i6.ResourceService>()));
  return get;
}

class _$GrpcModule extends _i13.GrpcModule {}

class _$NavigatorKeyModule extends _i14.NavigatorKeyModule {}
