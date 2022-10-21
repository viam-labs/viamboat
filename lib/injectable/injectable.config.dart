// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/get_api_url_use_case.dart' as _i6;
import '../example/data/example_feature/data_source/example_feature_api_data_source.dart'
    as _i8;
import '../example/data/example_feature/mapper/example_model_dto_to_example_model_mapper.dart'
    as _i4;
import '../example/data/example_feature/service/example_service_impl.dart'
    as _i10;
import '../example/domain/example_feature/service/example_service.dart' as _i9;
import '../example/domain/example_feature/usecase/get_example_feature_data.dart'
    as _i11;
import '../example/presentation/page/example_page/cubit/example_cubit.dart'
    as _i12;
import 'dio_injectable/dio_injectable.dart' as _i13;
import 'flutter_secure_storage_injectable/flutter_secure_storage_injectable.dart'
    as _i14;
import 'navigator_key_injectable.dart' as _i15;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';
const String _staging = 'staging';
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
  final flutterSecureStorageModule = _$FlutterSecureStorageModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  gh.singleton<_i3.Dio>(
    dioModule.testDio(),
    registerFor: {_test},
  );
  gh.factory<_i4.ExampleModelDtoToExampleModelMapper>(
      () => _i4.ExampleModelDtoToExampleModelMapper());
  gh.lazySingleton<_i5.FlutterSecureStorage>(
    () => flutterSecureStorageModule.flutterSecureStorage,
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.singleton<_i5.FlutterSecureStorage>(
    flutterSecureStorageModule.testSecureStorage,
    registerFor: {_test},
  );
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
  gh.factory<_i8.TaskDataSource>(() => _i8.TaskDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i3.Dio>(
    () => dioModule.dio(get<_i6.GetApiUrlUseCase>()),
    registerFor: {
      _dev,
      _prod,
      _staging,
    },
  );
  gh.factory<_i9.ExampleService>(() => _i10.ExampleServiceImpl(
        get<_i8.TaskDataSource>(),
        get<_i4.ExampleModelDtoToExampleModelMapper>(),
      ));
  gh.factory<_i11.GetExampleFeatureDataUseCase>(
      () => _i11.GetExampleFeatureDataUseCase(get<_i9.ExampleService>()));
  gh.factory<_i12.ExampleCubit>(
      () => _i12.ExampleCubit(get<_i11.GetExampleFeatureDataUseCase>()));
  return get;
}

class _$DioModule extends _i13.DioModule {}

class _$FlutterSecureStorageModule extends _i14.FlutterSecureStorageModule {}

class _$NavigatorKeyModule extends _i15.NavigatorKeyModule {}
