// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/get_api_url_use_case.dart' as _i6;
import '../example/data/example_feature/data_source/example_feature_api_data_source.dart'
    as _i9;
import '../example/data/example_feature/mapper/example_model_dto_to_example_model_mapper.dart'
    as _i5;
import '../example/data/example_feature/service/example_service_impl.dart'
    as _i11;
import '../example/domain/example_feature/service/example_service.dart' as _i10;
import '../example/domain/example_feature/usecase/get_example_feature_data.dart'
    as _i12;
import '../example/presentation/page/example_page/cubit/example_cubit.dart'
    as _i13;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i3;
import '../presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i8;
import 'dio_injectable/dio_injectable.dart' as _i14;
import 'navigator_key_injectable.dart' as _i15;

const String _test = 'test';
const String _dev = 'dev';
const String _staging = 'staging';
const String _prod = 'prod';
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
  gh.factory<_i3.DashboardCubit>(() => _i3.DashboardCubit());
  gh.singleton<_i4.Dio>(
    dioModule.testDio(),
    registerFor: {_test},
  );
  gh.factory<_i5.ExampleModelDtoToExampleModelMapper>(
      () => _i5.ExampleModelDtoToExampleModelMapper());
  gh.factory<_i6.GetApiUrlUseCase>(
    () => _i6.DevGetApiUrlUseCase(),
    registerFor: {_dev},
  );
  gh.factory<_i6.GetApiUrlUseCase>(
    () => _i6.StagingGetApiUrlUseCase(),
    registerFor: {_staging},
  );
  gh.factory<_i6.GetApiUrlUseCase>(
    () => _i6.ProdGetApiUrlUseCase(),
    registerFor: {_prod},
  );
  gh.singleton<_i7.GlobalKey<_i7.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  gh.factory<_i8.SensorTileCubit>(() => _i8.SensorTileCubit());
  gh.factory<_i9.TaskDataSource>(() => _i9.TaskDataSource(get<_i4.Dio>()));
  gh.lazySingleton<_i4.Dio>(
    () => dioModule.dio(get<_i6.GetApiUrlUseCase>()),
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.factory<_i10.ExampleService>(() => _i11.ExampleServiceImpl(
        get<_i9.TaskDataSource>(),
        get<_i5.ExampleModelDtoToExampleModelMapper>(),
      ));
  gh.factory<_i12.GetExampleFeatureDataUseCase>(
      () => _i12.GetExampleFeatureDataUseCase(get<_i10.ExampleService>()));
  gh.factory<_i13.ExampleCubit>(
      () => _i13.ExampleCubit(get<_i12.GetExampleFeatureDataUseCase>()));
  return get;
}

class _$DioModule extends _i14.DioModule {}

class _$NavigatorKeyModule extends _i15.NavigatorKeyModule {}
