import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

part 'di_shared_prefs.dart';

Future<ViamSdk> createViam({
  required String url,
  required int port,
  String? payload,
  required bool secure,
  required bool disableWebRtc,
}) async {
  final SharedPreferences prefs = await _getSharedPreferencesInstance();

  if (disableWebRtc) {
    final channel = _getGrpcClient(url, port, payload, secure);

    return ViamSdkImpl(
      _getResourceService(channel, url, payload, prefs),
      _getSensorService(channel, url, payload, prefs),
      _getMovementService(channel, url, payload, prefs),
      _getCameraService(channel, url, payload, prefs),
    );
  }
  final webRtcDirectClient = _getGrpcClient(
    SignallingServerAddress.address,
    SignallingServerAddress.port,
    payload,
    secure,
  );
  final channel = await _getWebRtcClient(webRtcDirectClient, url, payload);

  return ViamSdkImpl(
    _getResourceService(channel, url, null, prefs),
    _getSensorService(channel, url, null, prefs),
    _getMovementService(channel, url, null, prefs),
    _getCameraService(channel, url, null, prefs),
  );
}

Future<Credentials> login(
  String domain,
  String clientId,
  String? scheme,
  String? audience,
) async {
  final Auth0 auth = _getAuth0Client(domain, clientId);

  final SharedPreferences sharedPreferences = await _getSharedPreferencesInstance();

  final Credentials credentials = await auth.webAuthentication(scheme: scheme).login(
        audience: audience,
      );

  await sharedPreferences.setString('VIAM_ACCES_TOKEN', credentials.accessToken);

  return credentials;
}

ViamClientChannel dialDirect(String url, String? payload, bool secure, int port) =>
    _getGrpcClient(url, port, payload, secure);

Future<ClientChannelBase> dialWebRtc(ViamClientChannel directClient, String url, String? payload) =>
    _getWebRtcClient(directClient, url, payload);

Future<SharedPreferences> sharedPrefs() => _getSharedPreferencesInstance();

ViamAppService getAppService(ClientChannelBase client, String url, String? secure, SharedPreferences preferences) =>
    _getViamAppService(client, url, secure, preferences);

ViamResourceService getResourceService(
        ClientChannelBase client, String url, String? secure, SharedPreferences preferences) =>
    _getResourceService(client, url, secure, preferences);
