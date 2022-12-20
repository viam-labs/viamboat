// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../sdk/viam_sdk.dart' as _i18;
import '../data/boat/service/boat_service_impl.dart' as _i15;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i13;
import '../data/camera/data_source/camera_api_data_source.dart' as _i19;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i8;
import '../data/camera/service/camera_service_impl.dart' as _i28;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i29;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i9;
import '../data/movement/service/movement_service_impl.dart' as _i31;
import '../data/resource/data_source/resource_api_data_source.dart' as _i20;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i7;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i10;
import '../data/resource/service/resource_service_impl.dart' as _i22;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i23;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i11;
import '../data/sensor/service/sensor_service_impl.dart' as _i25;
import '../domain/boat/service/boat_service.dart' as _i14;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i12;
import '../domain/camera/service/camera_service.dart' as _i27;
import '../domain/movement/service/movement_service.dart' as _i30;
import '../domain/resource/service/resource_service_impl.dart' as _i21;
import '../domain/sensor/service/sensor_service_impl.dart' as _i24;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i32;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i34;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i17;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i16;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i33;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i35;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i26;
import 'navigator_key_injectable.dart' as _i36;
import 'shared_preferences_injectable.dart' as _i37;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i38; // ignore_for_file: unnecessary_lambdas

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
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final viamModule = _$ViamModule();
  gh.singleton<_i3.BoatBox>(_i4.CurrentBoatBoxImpl());
  gh.singleton<_i5.GlobalKey<_i5.NavigatorState>>(
      navigatorKeyModule.navigatorKey());
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i7.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i7.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i8.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i8.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i9.ViamPositionToViamAppPositionMapper>(
      () => _i9.ViamPositionToViamAppPositionMapper());
  gh.factory<_i10.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i10.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i11.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i11.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i12.CurrentBoatStore>(() =>
      _i13.SharedPreferencesCurrentBoatStore(get<_i6.SharedPreferences>()));
  gh.factory<_i14.BoatService>(() => _i15.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i12.CurrentBoatStore>(),
      ));
  gh.factory<_i16.SplashCubit>(() => _i16.SplashCubit(get<_i14.BoatService>()));
  gh.factory<_i17.ViamDrawerCubit>(
      () => _i17.ViamDrawerCubit(get<_i14.BoatService>()));
  await gh.singletonAsync<_i18.ViamSdk>(
    () => viamModule.getViamSdk(get<_i14.BoatService>()),
    preResolve: true,
  );
  gh.factory<_i19.CameraDataSource>(
      () => _i19.CameraDataSource(get<_i18.ViamSdk>()));
  gh.factory<_i20.ResourceDataSource>(
      () => _i20.ResourceDataSource(get<_i18.ViamSdk>()));
  gh.factory<_i21.ResourceService>(() => _i22.ResourceServiceImpl(
        get<_i20.ResourceDataSource>(),
        get<_i10.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i23.SensorDataSource>(
      () => _i23.SensorDataSource(get<_i18.ViamSdk>()));
  gh.factory<_i24.SensorService>(() => _i25.SensorServiceImpl(
        get<_i23.SensorDataSource>(),
        get<_i7.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i11.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i26.SensorTileCubit>(
      () => _i26.SensorTileCubit(get<_i24.SensorService>()));
  gh.factory<_i27.ViamAppCameraService>(() => _i28.ViamAppCameraServiceImpl(
        get<_i19.CameraDataSource>(),
        get<_i8.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i29.ViamAppMovementSdkDataSource>(
      () => _i29.ViamAppMovementSdkDataSource(get<_i18.ViamSdk>()));
  gh.factory<_i30.ViamAppMovementService>(() => _i31.ViamAppMovementServiceImpl(
        get<_i29.ViamAppMovementSdkDataSource>(),
        get<_i7.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i9.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i32.AddBoatCubit>(() => _i32.AddBoatCubit(
        get<_i14.BoatService>(),
        get<_i21.ResourceService>(),
      ));
  gh.factory<_i33.CameraTileCubit>(
      () => _i33.CameraTileCubit(get<_i27.ViamAppCameraService>()));
  gh.factory<_i34.DashboardCubit>(() => _i34.DashboardCubit(
        get<_i21.ResourceService>(),
        get<_i14.BoatService>(),
      ));
  gh.factory<_i35.MapTileCubit>(() => _i35.MapTileCubit(
        get<_i30.ViamAppMovementService>(),
        get<_i24.SensorService>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i36.NavigatorKeyModule {}

class _$SharedPreferencesModule extends _i37.SharedPreferencesModule {}

class _$ViamModule extends _i38.ViamModule {}
