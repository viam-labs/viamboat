import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/usecase/get_camera_video_use_case.dart';
import 'package:viam_marine/app/domain/camera/usecase/subscribe_to_camera_stream_use_case.dart';
import 'package:viam_marine/app/domain/current_time/get_current_time_use_case.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class WebrtcCameraCubit extends ViamCubit<WebrtcCameraState> {
  final GetCameraVideoUseCase _getCameraVideoUseCase;
  final SubscribeToCameraStreamUseCase _subscribeToCameraStreamUseCase;
  final GetCurrentTimeUseCase _getCurrentTimeUseCase;

  final RTCVideoRenderer rtcVideoRenderer = RTCVideoRenderer();
  late StreamSubscription _streamSubscription;

  DateTime? _firstErrorDate;

  WebrtcCameraCubit(
    this._getCameraVideoUseCase,
    this._subscribeToCameraStreamUseCase,
    this._getCurrentTimeUseCase,
  ) : super(const WebrtcCameraState.idle());

  Future<void> init(String cameraName) async {
    try {
      await rtcVideoRenderer.initialize();
      _streamSubscription = _subscribeToCameraStreamUseCase().listen(
        (mediaStream) {
          rtcVideoRenderer.srcObject = mediaStream;
          _firstErrorDate = null;
          emit(WebrtcCameraState.loaded(rtcVideoRenderer));
        },
        onError: _onError,
      );
      await _getCameraVideoUseCase(cameraName);
    } catch (_) {
      _firstErrorDate ??= _getCurrentTimeUseCase();

      emit(WebrtcCameraState.error(ViamError.error, rtcVideoRenderer, _firstErrorDate));
    }
  }

  void _onError(Object? _) {
    final DateTime currentErrorDate = _getCurrentTimeUseCase();
    _firstErrorDate ??= currentErrorDate;

    final timeBetweenErrorsInSeconds = currentErrorDate.difference(_firstErrorDate!).inSeconds;

    if (timeBetweenErrorsInSeconds > 30 && timeBetweenErrorsInSeconds < 90) {
      emit(WebrtcCameraState.error(ViamError.warning, rtcVideoRenderer, _firstErrorDate));
    } else if (timeBetweenErrorsInSeconds >= 90) {
      emit(WebrtcCameraState.error(ViamError.error, rtcVideoRenderer, _firstErrorDate));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
