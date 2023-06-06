import 'package:fimber_io/fimber_io.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/usecase/get_main_part_address_use_case.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/connection_error/cubit/connection_error_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class ConnectionErrorCubit extends ViamCubit<ConnectionErrorState> {
  final ConnectToRobotUseCase _connectToRobotUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final AddNewBoatUseCase _addNewBoatUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final GetMainPartAddressUseCase _getMainPartAddressUseCase;

  late List<ViamBoat> _boats;
  late ViamAppRobot _robot;
  late String? _token;
  late String? _secret;
  late String? _message;

  ConnectionErrorCubit(
    this._connectToRobotUseCase,
    this._getTokenOrNullUseCase,
    this._addNewBoatUseCase,
    this._getBoatsUseCase,
    this._getMainPartAddressUseCase,
  ) : super(const ConnectionErrorState.idle());

  Future<void> init(
    ViamAppRobot robot,
    String? secret,
    String? message,
  ) async {
    _robot = robot;
    _secret = secret;
    _message = message;

    _token = await _getTokenOrNullUseCase();
    _boats = await _getBoatsUseCase();

    emit(ConnectionErrorState.loaded(_message));
  }

  Future<void> onRetryButtonTap() async {
    try {
      emit(ConnectionErrorState.loading(_message));

      final String mainPartAddress = await _getMainPartAddressUseCase(_robot.id);

      await _connectToRobotUseCase(
        disableWebRtc: false,
        port: 8080,
        secure: true,
        url: mainPartAddress,
        secret: _secret,
        accessToken: _token,
      );

      if (!_boats.any((boat) => boat.id == _robot.id)) {
        await _addNewBoatUseCase(id: _robot.id);
      }

      final config = RobotConfig(
        name: _robot.name,
        id: _robot.id,
        location: _robot.location,
        secret: _secret ?? '',
        address: mainPartAddress,
      );

      emit(ConnectionErrorState.goToMainPage(config));
    } catch (error, st) {
      Fimber.e(
        'Error during onRetryButtonTap in ConnectionErrorCubit',
        ex: error,
        stacktrace: st,
      );

      if (error is GrpcError) {
        _message = error.message;
      }

      emit(ConnectionErrorState.loaded(_message));
    }
  }
}
