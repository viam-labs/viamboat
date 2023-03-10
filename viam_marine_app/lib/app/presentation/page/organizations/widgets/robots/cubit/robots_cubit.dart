import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/get_robots_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/viam_connect_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/robots/cubit/robots_state.dart';

@injectable
class RobotsCubit extends Cubit<RobotsState> {
  final GetRobotsUseCase _getRobotsUseCase;
  final ViamConnectUseCase _connectUseCase;

  late String robotSecret;

  RobotsCubit(
    this._getRobotsUseCase,
    this._connectUseCase,
  ) : super(const RobotsState.idle());

  Future<void> init(String? locationId, String secret) async {
    emit(const RobotsState.loading());

    robotSecret = secret;

    final List<ViamAppRobot> robots = await _getRobotsUseCase(locationId);

    emit(RobotsState.loaded(robots));
  }

  Future<void> onTap(ViamAppRobot robot) async {
    emit(const RobotsState.loading());
    final url = '${robot.name}-main.${robot.location}.viam.cloud';
    await _connectUseCase(
      disableWebRtc: false,
      port: 8080,
      secure: true,
      url: url,
      secret: robotSecret,
    );
    emit(RobotsState.goToMainPage(robot.name));
  }
}
