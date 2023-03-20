import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/viam/model/robot_address_config.dart';
import 'package:viam_marine/app/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/get_robot_address_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/app/presentation/page/connection_error/cubit/connection_error_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class ConnectionErrorCubit extends ViamCubit<ConnectionErrorState> {
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final AddNewBoatUseCase _addNewBoatUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final GetRobotAddressUseCase _getRobotAddressUseCase;

  late List<ViamBoat> _boats;
  late ViamAppRobot _robot;
  late String? _token;
  late String? _secret;

  ConnectionErrorCubit(
    this._connectToRobotUseCase,
    this._getTokenOrNullUseCase,
    this._addNewBoatUseCase,
    this._getBoatsUseCase,
    this._getRobotAddressUseCase,
  ) : super(const ConnectionErrorState.loaded());

  Future<void> init(ViamAppRobot robot, String? secret) async {
    _robot = robot;
    _secret = secret;

    _token = await _getTokenOrNullUseCase();
    _boats = await _getBoatsUseCase();
  }

  Future<void> onRetryButtonTap() async {
    try {
      emit(const ConnectionErrorState.loading());

      final config = RobotAddressConfig(
        _robot.name,
        _robot.location,
      );

      await _connectToRobotUseCase(
        disableWebRtc: false,
        port: 8080,
        secure: true,
        url: _getRobotAddressUseCase(config),
        secret: _secret,
        accessToken: _token,
      );

      if (!_boats.any((boat) => boat.id == _robot.id)) {
        await _addNewBoatUseCase(id: _robot.id);
      }
      emit(const ConnectionErrorState.goToMainPage());
    } catch (_) {
      emit(const ConnectionErrorState.loaded());
    }
  }
}
