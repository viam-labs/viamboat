import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/usecase/get_sensor_data_use_case.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/cubit/sensor_tile_state.dart';

const _fluidPrefix = 'fluid-';
const _levelKey = 'Level';
const _capacityKey = 'Capacity';
const _viamBoatPrefix = 'viamboat-data:';

@injectable
class SensorTileCubit extends Cubit<SensorTileState> {
  final GetSensorDataUseCase _getSensorDataUseCase;
  late StreamSubscription streamSubscription;

  SensorTileCubit(
    this._getSensorDataUseCase,
  ) : super(const SensorTileState.idle());

  Future<void> init(ViamAppResourceName resource) async {
    streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
      await _getData(resource);
    });
  }

  Future<void> _getData(ViamAppResourceName resourceName) async {
    try {
      final sensorData = await _getSensorDataUseCase([resourceName]);
      final reading = sensorData.first;
      final name = _formatSensorName(reading.name);

      final isGraphicalSensor = reading.readings.containsKey(_levelKey);

      if (isGraphicalSensor) {
        final level = reading.readings[_levelKey] ?? 0;
        final capacity = reading.readings[_capacityKey] ?? 0;

        final mockLevel = level - Random().nextInt(5);

        emit(const SensorTileState.idle());

        emit(SensorTileState.graphicalSensorLoaded(
          name,
          mockLevel,
          capacity,
        ));
      } else {
        //TODO: Handle normal sensors
      }
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }

  String _formatSensorName(String name) => name.replaceAll(_fluidPrefix, '').replaceAll(_viamBoatPrefix, '');

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
