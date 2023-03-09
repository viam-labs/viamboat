import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_robot.dart';

@injectable
class ViamRobotToViamAppRobot {
  ViamAppRobot call(ViamRobot dto) => ViamAppRobot(
        id: dto.id,
        name: dto.name,
        location: dto.location,
        lastAccess: dto.lastAccess,
        createdOn: dto.createdOn,
      );
}
