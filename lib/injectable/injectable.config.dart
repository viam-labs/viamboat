// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/resource/data_source/resource_api_data_source.dart' as _i6;
import '../data/resource/service/resource_service_impl.dart' as _i8;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i9;
import '../data/sensor/service/sensor_service_impl.dart' as _i11;
import '../domain/resource/service/resource_service_impl.dart' as _i7;
import '../domain/sensor/service/sensor_service_impl.dart' as _i10;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i4;
import 'grpc_client_injectable/grpc_client_injectable.dart' as _i12;
import 'navigator_key_injectable.dart' as _i13;

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
  final dioModule = _$DioModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  gh.lazySingleton<_i3.ClientChannel>(
    () => dioModule.gRpcClient(),
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i3.ClientChannel>(
    dioModule.testDio(),
    registerFor: {_test},
  );
  gh.factory<_i4.DashboardCubit>(() => _i4.DashboardCubit());
  gh.singleton<_i5.GlobalKey<_i5.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i6.ResourceDataSource>(
      () => _i6.ResourceDataSource(get<_i3.ClientChannel>()));
  gh.factory<_i7.ResourceService>(
      () => _i8.ResourceServiceImpl(get<_i6.ResourceDataSource>()));
  gh.factory<_i9.SensorDataSource>(
      () => _i9.SensorDataSource(get<_i3.ClientChannel>()));
  gh.factory<_i10.SensorService>(
      () => _i11.SensorServiceImpl(get<_i9.SensorDataSource>()));
  return get;
}

class _$DioModule extends _i12.DioModule {}

class _$NavigatorKeyModule extends _i13.NavigatorKeyModule {}
