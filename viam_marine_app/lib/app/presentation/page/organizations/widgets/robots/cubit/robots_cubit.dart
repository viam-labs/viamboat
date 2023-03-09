import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/get_robots_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/robots/cubit/robots_state.dart';

@injectable
class RobotsCubit extends Cubit<RobotsState> {
  final GetRobotsUseCase _getRobotsUseCase;

  RobotsCubit(this._getRobotsUseCase) : super(const RobotsState.idle());

  Future<void> init(String? locationId) async {
    emit(const RobotsState.loading());

    final List<ViamAppRobot> robots = await _getRobotsUseCase(locationId);

    emit(RobotsState.loaded(robots));
  }
}
