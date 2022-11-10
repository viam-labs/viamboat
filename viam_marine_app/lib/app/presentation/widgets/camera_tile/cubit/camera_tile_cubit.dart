import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/cubit/camera_tile_state.dart';

@injectable
class CameraTileCubit extends Cubit<CameraTileState> {
  final ViamAppCameraService _viamAppCameraService;

  late StreamSubscription streamSubscription;

  CameraTileCubit(this._viamAppCameraService) : super(const CameraTileState.idle());

  Future<void> init() async {
    streamSubscription = Stream.periodic(const Duration(seconds: 4)).listen((event) async {
      await _getData();
    });
  }

  Future<void> _getData() async {
    try {
      final cameraData = await _viamAppCameraService.getCameraData('');
      emit(const CameraTileState.idle());
      emit(CameraTileState.loaded(cameraData.image));
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
