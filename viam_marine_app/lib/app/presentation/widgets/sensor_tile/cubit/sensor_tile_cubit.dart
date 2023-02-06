import 'dart:async';
import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
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
    } catch (error) {
      //TODO: Add error handling
    }
  }

  Future<void> _getMovementSensorData(ViamAppResourceName resourceName) =>
      isSpeedSensor(resourceName) ? _getSpeedData(resourceName) : _getHeadingData(resourceName);

  Future<void> _getSpeedData(ViamAppResourceName resourceName) async {
    final String name = _removeResourceNameSuffix(resourceName.name);
    final ViamAppLinearVelocity linearVelocity = await _getLinearVelocityUseCase(
      resourceName.copyWith(name: name),
    );

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

      emit(SensorTileState.graphicalSensorLoaded(
        name,
        level,
        capacity,
      ));
    } else {
      final double depth = sensorReadings.readings[_depthKey] ?? 0.0;

      emit(SensorTileState.sensorLoaded(name, depth));
    }
  }

  Future<void> _getHeadingData(ViamAppResourceName resourceName) async {
    final String name = _removeResourceNameSuffix(resourceName.name);
    final ViamAppResourceName resourceNameWithoutSuffix = resourceName.copyWith(name: name);
    final ViamAppSensorReadings reading = await _getSensorReadings([resourceNameWithoutSuffix]);

    final double heading = reading.readings[_compassKey] ?? 0.0;

    emit(SensorTileState.sensorLoaded(
      Strings.current.sensor_name_heading,
      heading,
    ));
  }

  Future<ViamAppSensorReadings> _getSensorReadings(List<ViamAppResourceName> resourceNames) async {
    final List<ViamAppSensorReadings> sensorData = await _getSensorDataUseCase(resourceNames);

    return sensorData.first;
  }

  String _removeSensorNamePrefix(String name) =>
      name.replaceAll(_fluidPrefix, '').replaceAll(_viamBoatPrefix, '').replaceAll(_viamService, '');

  String _removeResourceNameSuffix(String name) =>
      name.replaceAll(_headingSuffix, '').replaceAll(_linearVelocitySuffix, '');

  bool isSpeedSensor(ViamAppResourceName resourceName) => resourceName.name.contains(_linearVelocitySuffix);

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
