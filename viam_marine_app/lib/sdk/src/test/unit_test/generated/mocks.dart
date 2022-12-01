import 'package:mockito/annotations.dart';
import 'package:viam_marine/sdk/src/data/movement/data_source/movement_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';
import 'package:viam_marine/sdk/src/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';

@GenerateMocks(
  [
    ViamSensorDataSource,
    ViamResourceDataSource,
    GetReadingsResponseToViamSensorReadingsMapper,
    ViamResourceNameToResourceNameMapper,
    ResourceNameToViamResourceNameMapper,
    ViamCameraDataSource,
    GetImageResponseToCameraDataMapper,
    ViamMovementDataSource,
    GetPositionResponseToViamPositionMapper
  ],
)
void main() {}
