import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/movement/model/compass_heading_dto.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamAppMovementSdkDataSource {
  final RobotManager _robotManager;

  ViamAppMovementSdkDataSource(this._robotManager);

  Future<Position> getPosition(ResourceName resourceName) async {
    final movementSensor = MovementSensor.fromRobot(
      _robotManager.webrtcRobotClient,
      resourceName.name,
    );

    final Position position = await movementSensor.position();

    return position;
  }

  Future<Vector3> getLinearVelocity(ResourceName resourceName) {
    final movementSensor = MovementSensor.fromRobot(
      _robotManager.webrtcRobotClient,
      resourceName.name,
    );

    return movementSensor.linearVelocity();
  }

  Future<CompassHeadingDto> getCompassHeading(ResourceName resourceName) async {
    final movementSensor = MovementSensor.fromRobot(
      _robotManager.webrtcRobotClient,
      resourceName.name,
    );

    final double heading = await movementSensor.compassHeading();

    return CompassHeadingDto(heading);
  }
}
