// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

<<<<<<< HEAD
<<<<<<< HEAD
import '../../sdk/viam_sdk.dart' as _i9;
import '../data/auth/data_source/auth_data_source.dart' as _i11;
import '../data/auth/mapper/viam_auth_data_to_viam_app_auth_data_mapper.dart'
    as _i6;
import '../data/auth/service/auth_service_impl.dart' as _i13;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i21;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i7;
import '../data/movement/service/movement_service_impl.dart' as _i23;
import '../data/resource/data_source/resource_api_data_source.dart' as _i14;
=======
import '../../sdk/viam_sdk.dart' as _i7;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i16;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i5;
import '../data/movement/service/movement_service_impl.dart' as _i18;
import '../data/resource/data_source/resource_api_data_source.dart' as _i9;
>>>>>>> 8f2ee4f ([VIAM-43] added AuthInterceptor)
=======
import '../../sdk/viam_sdk.dart' as _i8;
import '../data/camera/data_source/camera_api_data_source.dart' as _i10;
import '../data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart'
    as _i5;
import '../data/camera/service/camera_service_impl.dart' as _i19;
import '../data/movement/data_source/movement_sdk_data_source.dart' as _i20;
import '../data/movement/mapper/viam_position_to_viam_app_position_mapper.dart'
    as _i6;
import '../data/movement/service/movement_service_impl.dart' as _i22;
import '../data/resource/data_source/resource_api_data_source.dart' as _i11;
>>>>>>> 1a71ce0 ([VIAM-43] app camera service added)
import '../data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart'
    as _i5;
import '../data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart'
<<<<<<< HEAD
<<<<<<< HEAD
    as _i8;
import '../data/resource/service/resource_service_impl.dart' as _i16;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i17;
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i10;
import '../data/sensor/service/sensor_service_impl.dart' as _i19;
import '../domain/auth/service/auth_service.dart' as _i12;
import '../domain/movement/service/movement_service.dart' as _i22;
import '../domain/resource/service/resource_service_impl.dart' as _i15;
import '../domain/sensor/service/sensor_service_impl.dart' as _i18;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i24;
import '../presentation/widgets/camera_tile/cubit/camera_tile_cubit.dart'
    as _i3;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i25;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i20;
import 'navigator_key_injectable.dart' as _i26;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas
=======
    as _i6;
import '../data/resource/service/resource_service_impl.dart' as _i11;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i12;
=======
    as _i7;
import '../data/resource/service/resource_service_impl.dart' as _i13;
import '../data/sensor/data_source/sensor_api_data_source.dart' as _i14;
>>>>>>> 1a71ce0 ([VIAM-43] app camera service added)
import '../data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart'
    as _i9;
import '../data/sensor/service/sensor_service_impl.dart' as _i16;
import '../domain/camera/service/camera_service.dart' as _i18;
import '../domain/movement/service/movement_service.dart' as _i21;
import '../domain/resource/service/resource_service_impl.dart' as _i12;
import '../domain/sensor/service/sensor_service_impl.dart' as _i15;
import '../presentation/page/dashboard/cubit/dashboard_cubit.dart' as _i23;
import '../presentation/widgets/map_tile/cubit/map_tile_cubit.dart' as _i24;
import '../presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart'
    as _i17;
import 'navigator_key_injectable.dart' as _i25;
import 'viam_sdk_injectable/viam_sdk_injectable.dart'
<<<<<<< HEAD
    as _i22; // ignore_for_file: unnecessary_lambdas
>>>>>>> 8f2ee4f ([VIAM-43] added AuthInterceptor)
=======
    as _i26; // ignore_for_file: unnecessary_lambdas
>>>>>>> 1a71ce0 ([VIAM-43] app camera service added)

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
<<<<<<< HEAD
  gh.factory<_i3.CameraTileCubit>(() => _i3.CameraTileCubit());
  gh.singleton<_i4.GlobalKey<_i4.NavigatorState>>(
=======
  final viamCameraModule = _$ViamCameraModule();
  gh.singleton<_i3.GlobalKey<_i3.NavigatorState>>(
>>>>>>> 6a171cc ([VIAM-43] clean sdk agent code)
      navigatorKeyModule.navigatorKey());
<<<<<<< HEAD
  gh.factory<_i5.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i5.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i6.ViamAuthDataToViamAppAuthDataMapper>(
      () => _i6.ViamAuthDataToViamAppAuthDataMapper());
  gh.factory<_i7.ViamPositionToViamAppPositionMapper>(
      () => _i7.ViamPositionToViamAppPositionMapper());
  gh.factory<_i8.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i8.ViamResourceNameToViamAppResourceNameMapper());
  gh.singleton<_i9.ViamSdk>(viamModule.getViamSdk());
  gh.factory<_i10.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i10.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i11.AuthDataSource>(
      () => _i11.AuthDataSource(get<_i9.ViamSdk>()));
  gh.factory<_i12.AuthService>(() => _i13.AuthServiceImpl(
        get<_i11.AuthDataSource>(),
        get<_i6.ViamAuthDataToViamAppAuthDataMapper>(),
      ));
  gh.factory<_i14.ResourceDataSource>(
      () => _i14.ResourceDataSource(get<_i9.ViamSdk>()));
  gh.factory<_i15.ResourceService>(() => _i16.ResourceServiceImpl(
        get<_i14.ResourceDataSource>(),
        get<_i8.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i17.SensorDataSource>(
      () => _i17.SensorDataSource(get<_i9.ViamSdk>()));
  gh.factory<_i18.SensorService>(() => _i19.SensorServiceImpl(
        get<_i17.SensorDataSource>(),
        get<_i5.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i10.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i20.SensorTileCubit>(
      () => _i20.SensorTileCubit(get<_i18.SensorService>()));
  gh.factory<_i21.ViamAppMovementSdkDataSource>(
      () => _i21.ViamAppMovementSdkDataSource(get<_i9.ViamSdk>()));
  gh.factory<_i22.ViamAppMovementService>(() => _i23.ViamAppMovementServiceImpl(
        get<_i21.ViamAppMovementSdkDataSource>(),
        get<_i5.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i7.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i24.DashboardCubit>(() => _i24.DashboardCubit(
        get<_i15.ResourceService>(),
        get<_i12.AuthService>(),
      ));
  gh.factory<_i25.MapTileCubit>(
      () => _i25.MapTileCubit(get<_i22.ViamAppMovementService>()));
  return get;
}

class _$NavigatorKeyModule extends _i26.NavigatorKeyModule {}

class _$ViamModule extends _i27.ViamModule {}
=======
  gh.factory<_i4.ViamAppResourceNameToViamResourceNameMapper>(
      () => _i4.ViamAppResourceNameToViamResourceNameMapper());
  gh.factory<_i5.ViamCameraDataToViamAppCameraDataMapper>(
      () => _i5.ViamCameraDataToViamAppCameraDataMapper());
  gh.factory<_i6.ViamPositionToViamAppPositionMapper>(
      () => _i6.ViamPositionToViamAppPositionMapper());
  gh.factory<_i7.ViamResourceNameToViamAppResourceNameMapper>(
      () => _i7.ViamResourceNameToViamAppResourceNameMapper());
  gh.singleton<_i8.ViamSdk>(
    viamModule.getViamSdk(),
    instanceName: 'sensor',
  );
  gh.singleton<_i8.ViamSdk>(
    viamCameraModule.getViamSdk(),
    instanceName: 'camera',
  );
  gh.factory<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(
      () => _i9.ViamSensorReadingsToViamAppSensorReadingsMapper());
  gh.factory<_i10.CameraDataSource>(
      () => _i10.CameraDataSource(get<_i8.ViamSdk>(instanceName: 'camera')));
  gh.factory<_i11.ResourceDataSource>(
      () => _i11.ResourceDataSource(get<_i8.ViamSdk>(instanceName: 'sensor')));
  gh.factory<_i12.ResourceService>(() => _i13.ResourceServiceImpl(
        get<_i11.ResourceDataSource>(),
        get<_i7.ViamResourceNameToViamAppResourceNameMapper>(),
      ));
  gh.factory<_i14.SensorDataSource>(
      () => _i14.SensorDataSource(get<_i8.ViamSdk>(instanceName: 'sensor')));
  gh.factory<_i15.SensorService>(() => _i16.SensorServiceImpl(
        get<_i14.SensorDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i9.ViamSensorReadingsToViamAppSensorReadingsMapper>(),
      ));
  gh.factory<_i17.SensorTileCubit>(
      () => _i17.SensorTileCubit(get<_i15.SensorService>()));
  gh.factory<_i18.ViamAppCameraService>(() => _i19.ViamAppCameraServiceImpl(
        get<_i10.CameraDataSource>(),
        get<_i5.ViamCameraDataToViamAppCameraDataMapper>(),
      ));
  gh.factory<_i20.ViamAppMovementSdkDataSource>(() =>
      _i20.ViamAppMovementSdkDataSource(
          get<_i8.ViamSdk>(instanceName: 'sensor')));
  gh.factory<_i21.ViamAppMovementService>(() => _i22.ViamAppMovementServiceImpl(
        get<_i20.ViamAppMovementSdkDataSource>(),
        get<_i4.ViamAppResourceNameToViamResourceNameMapper>(),
        get<_i6.ViamPositionToViamAppPositionMapper>(),
      ));
  gh.factory<_i23.DashboardCubit>(() => _i23.DashboardCubit(
        get<_i12.ResourceService>(),
        get<_i18.ViamAppCameraService>(),
      ));
  gh.factory<_i24.MapTileCubit>(
      () => _i24.MapTileCubit(get<_i21.ViamAppMovementService>()));
  return get;
}

class _$NavigatorKeyModule extends _i25.NavigatorKeyModule {}

<<<<<<< HEAD
class _$ViamModule extends _i22.ViamModule {}
>>>>>>> 8f2ee4f ([VIAM-43] added AuthInterceptor)
=======
class _$ViamModule extends _i26.ViamModule {}
<<<<<<< HEAD
>>>>>>> 1a71ce0 ([VIAM-43] app camera service added)
=======

class _$ViamCameraModule extends _i26.ViamCameraModule {}
>>>>>>> 6a171cc ([VIAM-43] clean sdk agent code)
