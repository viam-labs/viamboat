import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_marine/data/sensor/model/sensor_readings_dto.dart';
import 'package:viam_sdk/viam_sdk.dart';

const builtinName = 'builtin';

@injectable
class SensorDataSource {
  final RobotManager _robotManager;

  SensorDataSource(
    this._robotManager,
  );

  Future<SensorReadingsDto> getSensorData(ViamResourceName resourceName) async {
    final sensor = Sensor.fromRobot(_robotManager.webrtcRobotClient, resourceName.name);

    final readings = await sensor.readings();

    return SensorReadingsDto(
      resourceName.name,
      readings,
    );
  }
}
