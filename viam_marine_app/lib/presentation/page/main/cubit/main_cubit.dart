import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/clear_cached_data_use_case.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/domain/robot_manager/use_case/check_connection_use_case.dart';
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';
import 'package:viam_marine/utils/viam_constants.dart';

@injectable
class MainCubit extends ViamCubit<MainState> {
  static const String _tag = 'MainCubit';

  final GetResourceNamesUseCase _getResourceNamesUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final SubscribeToTokenExpiredStreamUseCase _subscribeToTokenExpiredStreamUseCase;
  final ClearCacheUseCase _clearCacheUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final CheckConnectionUseCase _checkConnectionUseCase;
  final ClearCachedDataUseCase _clearCachedDataUseCase;

  late RobotConfig _config;

  StreamSubscription<TokenExpiredEvent>? _tokenExpiredStreamSubscription;
  String? _tokenOrNull;

  MainCubit(
    this._getResourceNamesUseCase,
    this._getTokenOrNullUseCase,
    this._subscribeToTokenExpiredStreamUseCase,
    this._clearCacheUseCase,
    this._connectToRobotUseCase,
    this._checkConnectionUseCase,
    this._clearCachedDataUseCase,
  ) : super(const MainState.idle());

  Future<void> init(RobotConfig robotConfig) async {
    try {
      emit(const MainState.loading());
      _config = robotConfig;
      await _listenToTokenExpiredStream();
      final resources = _getResourceNamesUseCase();

      final List<ViamAppResourceName> graphicalSensors = [];
      final List<ViamAppResourceName> movementSensors = [];
      final List<ViamAppResourceName> cameraSensors = [];
      final List<ViamAppResourceName> sensors = [];

      for (final resource in resources) {
        if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.fluid.name)) {
          graphicalSensors.add(resource);
        } else if (resource.subtype == ViamAppResourceSubtypeFilter.movement.value) {
          movementSensors.add(resource);
          /*Since each sensor is built from one resourceName, and since we only have one movement resource from which wee need to get 2 diffrent readings from 2 diffrent endpoints, wee need to duplicate resourceName for movement and distinguish them later, so I added suffixes to names and I'm removing them later before making a call.
          */
          sensors.add(resource.copyWith(name: '${resource.name}heading'));
          sensors.add(resource.copyWith(name: '${resource.name}linearVelocity'));
        } else if (resource.subtype == ViamAppResourceSubtypeFilter.camera.name) {
          cameraSensors.add(resource);
        } else if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.depth.name)) {
          sensors.add(resource);
        } else {
          continue;
        }
      }

      sortSensorsByName(sensors);
      sortSensorsByName(graphicalSensors);
      sensors.addAll(graphicalSensors);

      final analyticsNames = <String?>[];

      for (final resource in resources) {
        final String resourceName = resource.name.toLowerCase();
        if (resourceName.contains(ViamConstants.resourceDepth) ||
            resourceName.contains(ViamConstants.resourceMovement) ||
            resourceName.contains(ViamConstants.resourceTemperature) ||
            resourceName.contains(ViamConstants.resourceFuel)) {
          analyticsNames.add(resource.name);
        }
      }

      await Future.delayed(const Duration(milliseconds: 200));

      emit(MainState.loaded(
        _config,
        sensors,
        movementSensors,
        cameraSensors,
        analyticsNames,
      ));
    } catch (error, st) {
      Fimber.e(
        '$_tag Error during initing main cubit',
        ex: error,
        stacktrace: st,
      );
      emit(const MainState.error());
    }
  }

  Future<void> _connectToRobot(String token) async {
    emit(const MainState.loading());

    await _connectToRobotUseCase(
      url: _config.address,
      secret: _config.secret,
    );

    await init(_config);
  }

  void clearCachedData() => _clearCachedDataUseCase();

  void sortSensorsByName(List<ViamAppResourceName> sensors) => sensors.sort(
        (sensorA, sensorB) => sensorA.name.compareTo(sensorB.name),
      );

  Future<void> refreshApp() async {
    try {
      await _getToken();
      if (_tokenOrNull == null) return;
      await _checkConnectionUseCase();
    } catch (error, st) {
      Fimber.e(
        '$_tag Connection error',
        ex: error,
        stacktrace: st,
      );
      await _refreshRobotConnection();
    }
  }

  Future<void> onPullToRefresh() async {
    await _getToken();
    await _refreshRobotConnection();
  }

  Future<void> _getToken() async {
    _tokenOrNull = await _getTokenOrNullUseCase();
  }

  Future<void> _refreshRobotConnection() async {
    try {
      if (_tokenOrNull == null) return;
      await _connectToRobot(_tokenOrNull!);
    } catch (error, st) {
      Fimber.e(
        '$_tag error during app refresh',
        ex: error,
        stacktrace: st,
      );
      emit(const MainState.error());
    }
  }

  Future<void> _listenToTokenExpiredStream() async {
    await _tokenExpiredStreamSubscription?.cancel();
    _tokenExpiredStreamSubscription = _subscribeToTokenExpiredStreamUseCase().listen((event) async {
      if (event == TokenExpiredEvent.expired) {
        emit(const MainState.loading());
        await _clearCacheUseCase();
        emit(const MainState.logout());
      }
    });
  }

  @override
  Future<void> close() {
    _tokenExpiredStreamSubscription?.cancel();
    return super.close();
  }
}
