import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_state.dart';

@injectable
class MapTileCubit extends Cubit<MapTileState> {
  MapTileCubit() : super(const MapTileState.idle());

  void init() {
    emit(const MapTileState.loaded(30.0, 30.0));
  }
}
