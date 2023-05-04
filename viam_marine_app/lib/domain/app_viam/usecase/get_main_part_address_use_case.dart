import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot_part.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetMainPartAddressUseCase {
  final AppViamService _appViamService;

  const GetMainPartAddressUseCase(this._appViamService);

  Future<String> call(String robotId) async {
    final List<ViamAppRobotPart> robotParts = await _appViamService.getRobotParts(robotId);

    return robotParts.firstWhereOrNull((part) => part.isMainPart)?.address ?? '';
  }
}
