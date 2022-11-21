import 'package:mockito/annotations.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';


@GenerateMocks(
    [
      ViamSensorDataSource,
      GetReadingsResponseToViamSensorReadingsMapper,
      ViamResourceNameToResourceNameMapper,
    ],
)
void main() {}