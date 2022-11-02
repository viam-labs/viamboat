import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_state.dart';

@injectable
class MapTileCubit extends Cubit<MapTileState> {
  final ViamAppMovementService _movementService;
  late StreamSubscription streamSubscription;

  MapTileCubit(
    this._movementService,
  ) : super(const MapTileState.idle());

  Future<void> init(ViamAppResourceName resource) async {
    streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
      await _getData(resource);
    });
  }

  Future<void> _getData(ViamAppResourceName resourceName) async {
    try {
      final positionData = await _movementService.getPosition(resourceName);
      emit(const MapTileState.idle());
      emit(MapTileState.loaded(
        positionData.latitude,
        positionData.longitude,
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
