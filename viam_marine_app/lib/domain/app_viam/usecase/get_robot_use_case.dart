import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetRobotUseCase {
  final AppViamService _appViamService;

  const GetRobotUseCase(this._appViamService);

  Future<ViamAppRobot> call(String id) => _appViamService.getRobot(id);
}
