import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamSensorReadingsToViamAppSensorReadingsMapper {
  ViamAppSensorReadings call(ViamSensorReadings dto) => ViamAppSensorReadings(
      dto.namespace,
      dto.type,
      dto.subtype,
      dto.name,
      dto.readings,
    );
}
