import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/data_source/auth_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/mapper/authenticate_response_to_auth_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/service/auth_service_impl.dart';
import 'package:viam_marine/sdk/src/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/camera/service/camera_service_impl.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/movement/data_source/movement_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/service/movement_service_impl.dart';
import 'package:viam_marine/sdk/src/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/service/resource_service_impl.dart';
import 'package:viam_marine/sdk/src/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';
import 'package:viam_marine/sdk/src/data/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/data_source/web_rtc_api_data_source.dart';
import 'package:viam_marine/sdk/src/domain/auth/service/auth_service.dart';
import 'package:viam_marine/sdk/src/domain/camera/service/camera_service.dart';
import 'package:viam_marine/sdk/src/domain/movement/service/movement_service.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
import 'package:viam_marine/sdk/src/domain/sensor/service/sensor_service.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';
import 'package:viam_marine/sdk/src/viam_sdk_impl.dart';

part 'di_service.dart';

part 'di_data_source.dart';

part 'di_grpc_client.dart';

part 'di_mappers.dart';

part 'di_interceptors.dart';

ViamSdk createViam(String url, int port, String? payload, bool secure) {
  final grpcClient = _getGrpcClient(url, port, payload, secure);
  return ViamSdkImpl(
    _getResourceService(grpcClient),
    _getSensorService(grpcClient),
    _getMovementService(grpcClient),
    _getCameraService(grpcClient),
    WebRtcApiDataSource(
      grpcClient,
      AuthHeaderInterceptor(
        ViamAuthServiceImpl(
          ViamAuthDataSource(grpcClient),
          AuthenticateResponseToAuthDataMapper(),
        ),
      ),
    ),
  );
}
