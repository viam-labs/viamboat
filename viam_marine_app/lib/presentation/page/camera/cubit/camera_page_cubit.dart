import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/auth/usecase/connect_to_camera_client_use_case.dart';
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/camera/cubit/camera_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class CameraPageCubit extends ViamCubit<CameraPageState> {
  static const _tag = 'CameraPageCubit';

  final ConnectToCameraClientUseCase _connectToCameraClientUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;

  CameraPageCubit(
    this._connectToCameraClientUseCase,
    this._getTokenOrNullUseCase,
  ) : super(const CameraPageState.idle());

  Future<void> init(RobotConfig config) async {
    try {
      emit(const CameraPageState.loading());

      final token = await _getTokenOrNullUseCase();
      if (token != null) {
        await _connectToCameraClientUseCase(
          url: config.address,
          secret: config.secret,
          disableWebRtc: false,
          accessToken: token,
        );

        emit(const CameraPageState.loaded());
      }
    } catch (error, st) {
      emit(const CameraPageState.error());

      Fimber.e(
        '$_tag: Error while initializing camera page cubit',
        ex: error,
        stacktrace: st,
      );
    }
  }
}
