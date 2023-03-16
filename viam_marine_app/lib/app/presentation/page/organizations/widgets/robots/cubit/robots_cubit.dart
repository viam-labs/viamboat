import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/get_robots_use_case.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/robots/cubit/robots_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class RobotsCubit extends ViamCubit<RobotsState> {
  final GetRobotsUseCase _getRobotsUseCase;
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final AddNewBoatUseCase _addNewBoatUseCase;
  final GetBoatsUseCase _getBoatsUseCase;

  late String robotSecret;
  String? _token;
  List<ViamBoat> _boats = [];
  List<ViamAppRobot> _robots = [];

  RobotsCubit(
    this._getRobotsUseCase,
    this._connectToRobotUseCase,
    this._getTokenOrNullUseCase,
    this._addNewBoatUseCase,
    this._getBoatsUseCase,
  ) : super(const RobotsState.idle());

  Future<void> init(String? locationId, String secret) async {
    emit(const RobotsState.loading());

    robotSecret = secret;

    _boats = await _getBoatsUseCase();
    _robots = await _getRobotsUseCase(locationId);
    _token = await _getTokenOrNullUseCase();

    emit(RobotsState.loaded(_robots));
  }

  Future<void> onTap(ViamAppRobot robot) async {
    try {
      emit(const RobotsState.loading());

      final url = '${robot.name}-main.${robot.location}.viam.cloud';

      await _connectToRobotUseCase(
        disableWebRtc: false,
        port: 8080,
        secure: true,
        url: url,
        secret: robotSecret,
        accessToken: _token,
      );

      if (!_boats.any((boat) => boat.id == robot.id)) {
        await _addNewBoatUseCase(id: robot.id);
      }

      emit(RobotsState.goToMainPage(robot));
    } catch (_) {
      emit(RobotsState.connectionError(robot, robotSecret));
      emit(RobotsState.loaded(_robots));
    }
  }
}
