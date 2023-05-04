import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/viam/model/robot_address_config.dart';
import 'package:viam_marine/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_robot_address_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class MainCubit extends ViamCubit<MainState> {
  final GetResourceNamesUseCase _getResourceNamesUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final SubscribeToTokenExpiredStreamUseCase _subscribeToTokenExpiredStreamUseCase;
  final ClearCacheUseCase _clearCacheUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetRobotAddressUseCase _getRobotAddressUseCase;

  StreamSubscription<TokenExpiredEvent>? _tokenExpiredStreamSubscription;
  late ViamAppRobot _robot;
  late String _secret;
  String? _tokenOrNull;

  static const String _tag = 'MainCubit';

  MainCubit(
    this._getResourceNamesUseCase,
    this._getTokenOrNullUseCase,
    this._subscribeToTokenExpiredStreamUseCase,
    this._clearCacheUseCase,
    this._connectToRobotUseCase,
    this._getRobotAddressUseCase,
  ) : super(const MainState.idle());

  Future<void> init(ViamAppRobot robot, String secret) async {
    try {
      emit(const MainState.loading());
      _robot = robot;
      _secret = secret;
      await _listenToTokenExpiredStream();
      final resources = await _getResourceNamesUseCase(null, null);

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

      emit(MainState.loaded(sensors, movementSensors, cameraSensors));
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

    final config = RobotAddressConfig(_robot.name, _robot.location);

    await _connectToRobotUseCase(
      disableWebRtc: false,
      port: 8080,
      secure: true,
      url: _getRobotAddressUseCase(config),
      secret: _secret,
      accessToken: token,
    );

    await init(_robot, _secret);
  }

  void sortSensorsByName(List<ViamAppResourceName> sensors) => sensors.sort(
        (sensorA, sensorB) => sensorA.name.compareTo(sensorB.name),
      );

  Future<void> refreshApp() async {
    try {
      await _getToken();
      if (_tokenOrNull == null) return;
      await _getResourceNamesUseCase(null, null);
    } catch (error, st) {
      Fimber.e(
        '$_tag Connection error',
        ex: error,
        stacktrace: st,
      );
      await _refreshRobotConnection();
    }
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
