import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/app/domain/movement/usecase/get_linear_velocity_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/app/domain/sensor/usecase/get_sensor_data_use_case.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/cubit/sensor_tile_state.dart';

const _fluidPrefix = 'fluid-';
const _levelKey = 'Level';
const _capacityKey = 'Capacity';
const _viamBoatPrefix = 'viamboat-data:';
const _headingSuffix = 'heading';
const _linearVelocitySuffix = 'linearVelocity';
const _compassKey = 'compass';
const _movementName = 'movement';
const _depthKey = 'Depth';
const _viamService = 'boat-service:';

@injectable
class SensorTileCubit extends Cubit<SensorTileState> {
  final GetSensorDataUseCase _getSensorDataUseCase;
  final GetLinearVelocityUseCase _getLinearVelocityUseCase;
  late StreamSubscription streamSubscription;

  bool _isNormalSensorBody = true;
  String? _cachedName;
  double? _cachedValue;
  double? _cachedLvlPercentage;
  DateTime? _firstErrorDate;

  SensorTileCubit(
    this._getSensorDataUseCase,
    this._getLinearVelocityUseCase,
  ) : super(const SensorTileState.idle());

  Future<void> init(ViamAppResourceName resource) async {
    streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
      await _getData(resource);
    });
  }

  Future<void> _getData(ViamAppResourceName resourceName) async {
    try {
      resourceName.name.contains(_movementName)
          ? await _getMovementSensorData(resourceName)
          : await _getSensorData(resourceName);
    } catch (_) {
      final currentErrorDate = DateTime.now();
      _firstErrorDate ??= currentErrorDate;

      _handleSensorError(currentErrorDate);
    }
  }

  Future<void> _getMovementSensorData(ViamAppResourceName resourceName) =>
      isSpeedSensor(resourceName) ? _getSpeedData(resourceName) : _getHeadingData(resourceName);

  Future<void> _getSpeedData(ViamAppResourceName resourceName) async {
    final String name = _removeResourceNameSuffix(resourceName.name);
    final ViamAppLinearVelocity linearVelocity = await _getLinearVelocityUseCase(
      resourceName.copyWith(name: name),
    );

    _resetLastErrorDate();
    _saveSensorNameAndValue(Strings.current.sensor_name_speed, linearVelocity.y);

    emit(SensorTileState.sensorLoaded(
      Strings.current.sensor_name_speed,
      linearVelocity.y,
    ));
  }

  Future<void> _getSensorData(ViamAppResourceName resourceName) async {
    final ViamAppSensorReadings sensorReadings = await _getSensorReadings([resourceName]);
    final String name = _removeSensorNamePrefix(sensorReadings.name);
    final bool isGraphicalSensor = sensorReadings.readings.containsKey(_levelKey);

    if (isGraphicalSensor) {
      final double level = sensorReadings.readings[_levelKey] ?? 0.0;
      final double capacity = sensorReadings.readings[_capacityKey] ?? 0.0;
      _isNormalSensorBody = false;

      _saveSensorNameAndValue(name, capacity, level);

      emit(SensorTileState.graphicalSensorLoaded(
        name,
        level,
        capacity,
      ));
    } else {
      final double depth = sensorReadings.readings[_depthKey] ?? 0.0;

      _saveSensorNameAndValue(name, depth);

      emit(SensorTileState.sensorLoaded(name, depth));
    }
  }

  Future<void> _getHeadingData(ViamAppResourceName resourceName) async {
    final String name = _removeResourceNameSuffix(resourceName.name);
    final ViamAppResourceName resourceNameWithoutSuffix = resourceName.copyWith(name: name);
    final ViamAppSensorReadings reading = await _getSensorReadings([resourceNameWithoutSuffix]);

    final double heading = reading.readings[_compassKey] ?? 0.0;

    _saveSensorNameAndValue(Strings.current.sensor_name_heading, heading);

    emit(SensorTileState.sensorLoaded(
      Strings.current.sensor_name_heading,
      heading,
    ));
  }

  Future<ViamAppSensorReadings> _getSensorReadings(List<ViamAppResourceName> resourceNames) async {
    final List<ViamAppSensorReadings> sensorData = await _getSensorDataUseCase(resourceNames);

    _resetLastErrorDate();

    return sensorData.first;
  }

  String _removeSensorNamePrefix(String name) =>
      name.replaceAll(_fluidPrefix, '').replaceAll(_viamBoatPrefix, '').replaceAll(_viamService, '');

  String _removeResourceNameSuffix(String name) =>
      name.replaceAll(_headingSuffix, '').replaceAll(_linearVelocitySuffix, '');

  bool isSpeedSensor(ViamAppResourceName resourceName) => resourceName.name.contains(_linearVelocitySuffix);

  void _saveSensorNameAndValue(String name, double value, [double? levelPercentage]) {
    _cachedName = name;
    _cachedValue = value;
    if (levelPercentage != null) {
      _cachedLvlPercentage = levelPercentage;
    }
  }

  void _resetLastErrorDate() {
    _firstErrorDate = null;
  }

  void _handleSensorError(DateTime currentErrorDate) {
    if (currentErrorDate.difference(_firstErrorDate!).inSeconds < 30) {
      _handleSensorsBeforeWarningState();
    } else {
      _emitWarningError();
    }
  }

  void _handleSensorsBeforeWarningState() {
    if (_isNormalSensorBody) {
      emit(SensorTileState.sensorLoaded(
        _cachedName ?? '',
        _cachedValue ?? 0.0,
      ));
    } else {
      emit(SensorTileState.graphicalSensorLoaded(
        _cachedName ?? '',
        _cachedLvlPercentage ?? 0.0,
        _cachedValue ?? 0.0,
      ));
    }
  }

  void _emitWarningError() {
    if (_isNormalSensorBody) {
      emit(
        SensorTileState.normalSensorError(
          ViamError.warning,
          _cachedName,
          _cachedValue,
        ),
      );
    } else {
      emit(
        SensorTileState.graphicalSensorError(
          ViamError.warning,
          _cachedName,
          _cachedLvlPercentage,
          _cachedValue,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
