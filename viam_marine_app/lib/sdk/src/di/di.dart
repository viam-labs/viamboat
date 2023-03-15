import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_auth_to_viam_location_auth_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_organization_to_viam_location_organization_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_to_viam_location_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/organization_to_viam_organization_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/robot_to_viam_robot_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/shared_secret_state_to_viam_shared_secret_state_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/shared_secret_to_viam_shared_secret_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/service/app_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/mapper/authenticate_response_to_auth_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/service/auth_api_service.dart';
import 'package:viam_marine/sdk/src/data/camera/service/camera_api_service.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/movement/service/viam_movement_service.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_linear_velocity_response_to_viam_linear_velocity_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/service/viam_resource_service.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/sensor/service/viam_sensor_service.dart';
import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/data_source/web_rtc_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_client.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_peer_connection.dart';

part 'di_service.dart';

part 'di_grpc_client.dart';

part 'di_web_rtc_client.dart';

part 'di_mappers.dart';

part 'di_interceptors.dart';

part 'di_auth0.dart';

Future<Credentials> login(
  String domain,
  String clientId,
  String? scheme,
  String? audience,
) async {
  final Auth0 auth = _getAuth0Client(domain, clientId);

  final Credentials credentials = await auth.webAuthentication(scheme: scheme).login(
        audience: audience,
      );

  return credentials;
}

ViamClientChannel dialDirect(String url, String? payload, bool secure, int port) =>
    _getGrpcClient(url, port, payload, secure);

Future<ClientChannelBase> dialWebRtc(
  ViamClientChannel directClient,
  String url,
  String? payload,
  String? accessToken,
) =>
    _getWebRtcClient(
      directClient,
      url,
      payload,
      accessToken,
    );

ViamAppService getAppService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    _getViamAppService(client, url, secure, accessToken);

ViamResourceService getResourceService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamResourceService(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
      _getResourceNameToViamResourceNameMapper(),
    );

ViamCameraService getCameraService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    _getCameraService(client, url, secure, accessToken);

ViamMovementService getMovementService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamMovementService(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
      _getLinearVelocityResponseToViamVelocityMapper(),
      _getPositionResponseToViamPositionMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

ViamSensorService getSensorService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamSensorService(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
      _getReadingsResponseToViamSensorReadingsMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

Future<void> viamLogout(
  String domain,
  String clientId,
  String? scheme,
) async {
  final Auth0 auth = _getAuth0Client(domain, clientId);

  await auth.webAuthentication(scheme: scheme).logout();
}
