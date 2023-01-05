import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/movement/usecase/get_position_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_state.dart';

const _compassKey = 'compass';

@injectable
class MapTileCubit extends Cubit<MapTileState> {
  final GetPostionUseCase _getPostionUseCase;
  final SensorService _sensorService;
  late StreamSubscription streamSubscription;

  MapTileCubit(
    this._getPostionUseCase,
    this._sensorService,
  ) : super(const MapTileState.idle());

  Future<void> init(ViamAppResourceName resource) async {
    streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
      await _getData(resource);
    });
  }

  Future<void> _getData(ViamAppResourceName resourceName) async {
    try {
      final positionData = await _getPostionUseCase(resourceName);

      final heading = await _getHeading(resourceName);

      emit(const MapTileState.idle());
      emit(MapTileState.loaded(
        latitude: positionData.latitude,
        longitude: positionData.longitude,
        heading: heading,
      ));
    } catch (error) {
      //TODO: it will be removed
      //ignore: unused_local_variable
      final e = error;
    }
  }

  Future<double> _getHeading(ViamAppResourceName resourceName) async {
    final senosorReadings = await _sensorService.getSensorData([resourceName]);
    final readings = senosorReadings.first.readings;

    return readings[_compassKey] ?? 0.0;
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
