import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/usecase/get_camera_data_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/cubit/camera_tile_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class CameraTileCubit extends ViamCubit<CameraTileState> {
  final GetCameraDataUseCase _getCameraDataUseCase;

  late StreamSubscription streamSubscription;
  late ViamAppResourceName _cameraResourceName;

  CameraTileCubit(this._getCameraDataUseCase) : super(const CameraTileState.idle());

  Future<void> init(ViamAppResourceName resourceName) async {
    _cameraResourceName = resourceName;
    streamSubscription = Stream.periodic(const Duration(seconds: 4)).listen((event) async {
      await _getData();
    });
  }

  Future<void> _getData() async {
    try {
      final cameraData = await _getCameraDataUseCase(_cameraResourceName);
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
