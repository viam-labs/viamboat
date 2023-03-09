part of 'di.dart';

ViamResourceService _getResourceService(
  ClientChannelBase client,
  String url,
  String? secure,
  SharedPreferences preferences,
) =>
    ViamResourceServiceImpl(
      _getResourceDataSource(client, url, preferences, secure),
      _getResourceNameToViamResourceNameMapper(),
    );

ViamSensorService _getSensorService(
  ClientChannelBase client,
  String url,
  String? secure,
  SharedPreferences preferences,
) =>
    ViamSensorServiceImpl(
      _getSensorDataSource(client, url, preferences, secure),
      _getReadingsResponseToViamSensorReadingsMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

ViamMovementService _getMovementService(
  ClientChannelBase client,
  String url,
  String? secure,
  SharedPreferences preferences,
) =>
    ViamMovementServiceImpl(
      _getMovementDataSource(client, url, preferences, secure),
      _getViamResourceNameToResourceNameMapper(),
      _getPositionResponseToViamPositionMapper(),
      _getLinearVelocityResponseToViamVelocityMapper(),
    );

ViamCameraService _getCameraService(
  ClientChannelBase client,
  String url,
  String? secure,
  SharedPreferences preferences,
) =>
    ViamCameraServiceImpl(
      _getCameraDataSource(client, url, preferences, secure),
      _getImageResponseToCameraDataMapper(),
    );

ViamAuthService _getAuthService(ClientChannelBase client, String url, String? secure) => ViamAuthServiceImpl(
      _getAuthDataSource(client, url, secure),
      _authenticateResponseToAuthDataMapper(),
    );

ViamAppService _getViamAppService(
  ClientChannelBase client,
  String url,
  String? secure,
  SharedPreferences preferences,
) =>
    ViamAppServiceImpl(
      _getAppApiDataSource(client, url, secure, preferences),
      _organizationToViamOrganizationMapper(),
      _locationToViamLocationMapper(),
      _robotToViamRobotMapper(),
    );
