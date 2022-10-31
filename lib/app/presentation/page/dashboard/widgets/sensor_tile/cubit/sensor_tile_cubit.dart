import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_state.dart';

const _fluidPrefix = 'fluid-';
const _levelKey = 'Level';

@injectable
class SensorTileCubit extends Cubit<SensorTileState> {
  final SensorService _sensorService;
  late StreamSubscription streamSubscription;

  SensorTileCubit(
    this._sensorService,
  ) : super(const SensorTileState.idle());

  Future<void> init(ViamAppResourceName resource) async {
    streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
      await _getData(resource);
    });
  }

  Future<void> _getData(ViamAppResourceName resourceName) async {
    try {
      final sensorData = await _sensorService.getSensorData([resourceName]);
      final reading = sensorData.first;
      final name = reading.name.replaceAll(_fluidPrefix, '');
      final value = reading.readings[_levelKey] ?? 0;
      final isGraphicalSensor = reading.readings.containsKey(_levelKey);
      emit(const SensorTileState.idle());
      emit(SensorTileState.loaded(
        name,
        value - Random().nextInt(5),
        isGraphicalSensor,
      ));
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
