import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/usecase/get_camera_video_use_case.dart';
import 'package:viam_marine/app/domain/camera/usecase/subscribe_to_camera_stream_use_case.dart';
import 'package:viam_marine/app/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class WebrtcCameraCubit extends ViamCubit<WebrtcCameraState> {
  final GetCameraVideoUseCase _getCameraVideoUseCase;
  final SubscribeToCameraStreamUseCase _subscribeToCameraStreamUseCase;

  final RTCVideoRenderer rtcVideoRenderer = RTCVideoRenderer();
  late StreamSubscription _streamSubscription;

  WebrtcCameraCubit(
    this._getCameraVideoUseCase,
    this._subscribeToCameraStreamUseCase,
  ) : super(const WebrtcCameraState.idle());

  Future<void> init(String cameraName) async {
    try {
      await rtcVideoRenderer.initialize();
      _streamSubscription = _subscribeToCameraStreamUseCase().listen((mediaStream) {
        rtcVideoRenderer.srcObject = mediaStream;
        emit(WebrtcCameraState.loaded(rtcVideoRenderer));
      });
      await _getCameraVideoUseCase(cameraName);
    } catch (error) {
      //TODO: add error handling
      //ignore: unused_local_variable
      final e = error;
    }
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
