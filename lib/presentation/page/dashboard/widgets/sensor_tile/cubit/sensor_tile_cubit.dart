import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_state.dart';

const fluidPrefix = 'fluid-';
const levelKey = 'Level';

@injectable
class SensorTileCubit extends Cubit<SensorTileState> {
  final SensorService _sensorService;
  late StreamSubscription streamSubscription;

  SensorTileCubit(
    this._sensorService,
  ) : super(const SensorTileState.idle());

  Future<void> init(ResourceName resource) async {
    streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
      await _getData(resource);
    });
  }

  Future<void> _getData(ResourceName resourceName) async {
    try {
      final sensorData = await _sensorService.getSensorData([resourceName]);
      final readings = sensorData.readings;
      final name = readings.first.name.name.replaceAll(fluidPrefix, '');
      final value = readings.first.readings[levelKey]?.numberValue ?? 0;
      final randomValue = value - Random().nextInt(5);
      final isGraphicalSensor = readings.first.readings.containsKey(levelKey);
      emit(const SensorTileState.idle());
      emit(SensorTileState.loaded(
        name,
        randomValue,
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
