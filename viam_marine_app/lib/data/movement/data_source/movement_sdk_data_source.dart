import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/movement/model/compass_heading_dto.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamAppMovementSdkDataSource {
  final RobotManager _robotManager;

  ViamAppMovementSdkDataSource(this._robotManager);

  Future<Position> getPosition(ViamResourceName resourceName) async {
    final movementSensor = MovementSensor.fromRobot(
      _robotManager.webrtcRobotClient,
      resourceName.name,
    );

    final Position position = await movementSensor.position();

    return position;
  }

  Future<Vector3> getLinearVelocity(ViamResourceName resourceName) {
    final movementSensor = MovementSensor.fromRobot(
      _robotManager.webrtcRobotClient,
      resourceName.name,
    );

    return movementSensor.linearVelocity();
  }

  Future<CompassHeadingDto> getCompassHeading(ViamResourceName resourceName) async {
    final movementSensor = MovementSensor.fromRobot(
      _robotManager.webrtcRobotClient,
      resourceName.name,
    );

    final double heading = await movementSensor.compassHeading();

    return CompassHeadingDto(heading);
  }
}
