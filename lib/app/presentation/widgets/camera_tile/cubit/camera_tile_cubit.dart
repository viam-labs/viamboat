import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/cubit/camera_tile_state.dart';

@injectable
class CameraTileCubit extends Cubit<CameraTileState> {
  CameraTileCubit() : super(const CameraTileState.idle());

  void init() {
    emit(const CameraTileState.loaded());
  }
}
