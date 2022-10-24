import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_state.dart';

@injectable
class SensorTileCubit extends Cubit<SensorTileState> {
  SensorTileCubit() : super(const SensorTileState.idle());

  void init() {
    emit(const SensorTileState.loaded());
  }
}
