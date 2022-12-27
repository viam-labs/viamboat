// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../sdk/viam_sdk.dart' as _i19;
import '../data/boat/service/boat_service_impl.dart' as _i16;
import '../data/boat/store/boat_box_impl.dart' as _i4;
import '../data/boat/store/shared_prefs_current_boat_store.dart' as _i14;
import '../data/camera/data_source/camera_api_data_source.dart' as _i20;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i9;
import '../data/camera/service/camera_service_impl.dart' as _i29;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i30;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i10;
import '../data/movement/service/movement_service_impl.dart' as _i32;
import '../data/resource/data_source/resource_api_data_source.dart' as _i21;
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i8;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
    as _i11;
import '../data/resource/service/resource_service_impl.dart' as _i23;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i24;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i12;
import '../data/sensor/service/sensor_service_impl.dart' as _i26;
import '../domain/boat/service/boat_service.dart' as _i15;
import '../domain/boat/store/boat_box.dart' as _i3;
import '../domain/boat/store/current_boat_store.dart' as _i13;
import '../domain/camera/service/camera_service.dart' as _i28;
import '../domain/movement/service/movement_service.dart' as _i31;
import '../domain/resource/service/resource_service_impl.dart' as _i22;
import '../domain/sensor/service/sensor_service_impl.dart' as _i25;
import '../presentation/page/add_boat/cubit/add_boat_cubit.dart' as _i33;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i35;
import '../presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart'
    as _i18;
import '../presentation/page/scan_qr/cubit/scan_qr_cubit.dart' as _i6;
import '../presentation/page/splash/cubit/splash_cubit.dart' as _i17;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i34;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i36;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i27;
import 'navigator_key_injectable.dart' as _i37;
import 'shared_preferences_injectable.dart' as _i38;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i39; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.ScanQrCubit>(() => _i6.ScanQrCubit());
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.factory<_i8.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i8.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i9.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i9.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i10.ViamPositionToViamAppPositionMapper>(
      () => _i10.ViamPositionToViamAppPositionMapper());
  gh.factory<_i11.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i11.ViamResourceNameToViamAppResourceNameMapper());
  gh.factory<_i12.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i12.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i13.CurrentBoatStore>(() =>
      _i14.SharedPreferencesCurrentBoatStore(get<_i7.SharedPreferences>()));
  gh.factory<_i15.BoatService>(() => _i16.BoatServiceImpl(
        get<_i3.BoatBox>(),
        get<_i13.CurrentBoatStore>(),
      ));
  gh.factory<_i17.SplashCubit>(() => _i17.SplashCubit(get<_i15.BoatService>()));
  gh.factory<_i18.ViamDrawerCubit>(
      () => _i18.ViamDrawerCubit(get<_i15.BoatService>()));
  await gh.singletonAsync<_i19.ViamSdk>(
    () => viamModule.getViamSdk(get<_i15.BoatService>()),
    preResolve: true,
  );
  gh.factory<_i20.CameraDataSource>(
      () => _i20.CameraDataSource(get<_i19.ViamSdk>()));
  gh.factory<_i21.ResourceDataSource>(
      () => _i21.ResourceDataSource(get<_i19.ViamSdk>()));
  gh.factory<_i22.ResourceService>(() => _i23.ResourceServiceImpl(
        get<_i21.ResourceDataSource>(),
        get<_i11.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i24.SensorDataSource>(
      () => _i24.SensorDataSource(get<_i19.ViamSdk>()));
  gh.factory<_i25.SensorService>(() => _i26.SensorServiceImpl(
        get<_i24.SensorDataSource>(),
        get<_i8.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i12.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i27.SensorTileCubit>(
      () => _i27.SensorTileCubit(get<_i25.SensorService>()));
  gh.factory<_i28.ViamAppCameraService>(() => _i29.ViamAppCameraServiceImpl(
        get<_i20.CameraDataSource>(),
        get<_i9.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i30.ViamAppMovementSdkDataSource>(
      () => _i30.ViamAppMovementSdkDataSource(get<_i19.ViamSdk>()));
  gh.factory<_i31.ViamAppMovementService>(() => _i32.ViamAppMovementServiceImpl(
        get<_i30.ViamAppMovementSdkDataSource>(),
        get<_i8.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i10.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i33.AddBoatCubit>(() => _i33.AddBoatCubit(
        get<_i15.BoatService>(),
        get<_i22.ResourceService>(),
      ));
  gh.factory<_i34.CameraTileCubit>(
      () => _i34.CameraTileCubit(get<_i28.ViamAppCameraService>()));
  gh.factory<_i35.DashboardCubit>(() => _i35.DashboardCubit(
        get<_i22.ResourceService>(),
        get<_i15.BoatService>(),
      ));
  gh.factory<_i36.MapTileCubit>(() => _i36.MapTileCubit(
        get<_i31.ViamAppMovementService>(),
        get<_i25.SensorService>(),
      ));
  return get;
}

class _$NavigatorKeyModule extends _i37.NavigatorKeyModule {}

class _$SharedPreferencesModule extends _i38.SharedPreferencesModule {}

class _$ViamModule extends _i39.ViamModule {}
