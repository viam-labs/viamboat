import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetRobotsUseCase {
  final AppViamService _appViamService;

  const GetRobotsUseCase(this._appViamService);

  Future<List<ViamAppRobot>> call(ViamAppLocation location) => _appViamService.getRobots(location);
}
