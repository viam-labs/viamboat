import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/app/data_source/app_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_auth_to_viam_location_auth_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_organization_to_viam_location_organization_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_to_viam_location_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/organization_to_viam_organization_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/robot_to_viam_robot_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/shared_secret_state_to_viam_shared_secret_state_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/shared_secret_to_viam_shared_secret_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/service/app_service_impl.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/data_source/auth_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/mapper/authenticate_response_to_auth_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/service/auth_service_impl.dart';
import 'package:viam_marine/sdk/src/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/camera/service/camera_service_impl.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/movement/data_source/movement_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_linear_velocity_response_to_viam_linear_velocity_mapper.dart';
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
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/signalling_server_address.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_client.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_peer_connection.dart';
import 'package:viam_marine/sdk/src/domain/app/service/app_service.dart';
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

part 'di_web_rtc_client.dart';

part 'di_mappers.dart';

part 'di_interceptors.dart';

part 'di_auth0.dart';

Future<ViamSdk> createViam({
  required String url,
  required int port,
  String? payload,
  required bool secure,
  required bool disableWebRtc,
}) async {
  if (disableWebRtc) {
    final channel = _getGrpcClient(url, port, payload, secure);

    return ViamSdkImpl(
      _getResourceService(channel, url, payload, ''),
      _getSensorService(channel, url, payload, ''),
      _getMovementService(channel, url, payload, ''),
      _getCameraService(channel, url, payload, ''),
    );
  }
  final webRtcDirectClient = _getGrpcClient(
    SignallingServerAddress.address,
    SignallingServerAddress.port,
    payload,
    secure,
  );
  final channel = await _getWebRtcClient(webRtcDirectClient, url, payload, '');

  return ViamSdkImpl(
    _getResourceService(channel, url, null, ''),
    _getSensorService(channel, url, null, ''),
    _getMovementService(channel, url, null, ''),
    _getCameraService(channel, url, null, ''),
  );
}

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
    _getResourceService(client, url, secure, accessToken);

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
    _getMovementService(client, url, secure, accessToken);

ViamSensorService getSensorService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    _getSensorService(client, url, secure, accessToken);

Future<void> viamLogout(
  String domain,
  String clientId,
  String? scheme,
) async {
  final Auth0 auth = _getAuth0Client(domain, clientId);

  await auth.webAuthentication(scheme: scheme).logout();
}
