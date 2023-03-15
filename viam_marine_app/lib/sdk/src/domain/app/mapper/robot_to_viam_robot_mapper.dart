import 'package:viam_marine/sdk/src/domain/app/model/viam_robot.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

class RobotToViamRobotMapper {
  ViamRobot call(Robot dto) => ViamRobot(
        id: dto.id,
        name: dto.name,
        location: dto.location,
        lastAccess: dto.lastAccess.toDateTime(),
        createdOn: dto.createdOn.toDateTime(),
      );
}
