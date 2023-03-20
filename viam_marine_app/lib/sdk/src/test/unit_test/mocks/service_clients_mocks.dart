import 'package:mockito/annotations.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/gen/robot/v1/robot.pbgrpc.dart';

@GenerateMocks([
  MovementSensorServiceClient,
  RobotServiceClient,
])
void main() {}
