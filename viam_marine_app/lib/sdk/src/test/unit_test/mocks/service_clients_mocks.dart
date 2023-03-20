import 'package:mockito/annotations.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/gen/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/gen/service/sensors/v1/sensors.pbgrpc.dart';

@GenerateMocks([
  MovementSensorServiceClient,
  RobotServiceClient,
  SensorsServiceClient,
])
void main() {}
