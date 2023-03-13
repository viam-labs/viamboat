part of 'di.dart';

ViamResourceService _getResourceService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamResourceServiceImpl(
      _getResourceDataSource(client, url, accessToken, secure),
      _getResourceNameToViamResourceNameMapper(),
    );

ViamSensorService _getSensorService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamSensorServiceImpl(
      _getSensorDataSource(client, url, accessToken, secure),
      _getReadingsResponseToViamSensorReadingsMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

ViamMovementService _getMovementService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamMovementServiceImpl(
      _getMovementDataSource(client, url, accessToken, secure),
      _getViamResourceNameToResourceNameMapper(),
      _getPositionResponseToViamPositionMapper(),
      _getLinearVelocityResponseToViamVelocityMapper(),
    );

ViamCameraService _getCameraService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamCameraServiceImpl(
      _getCameraDataSource(client, url, accessToken, secure),
      _getImageResponseToCameraDataMapper(),
    );

ViamAuthService _getAuthService(
  ClientChannelBase client,
  String url,
  String? secure,
) =>
    ViamAuthServiceImpl(
      _getAuthDataSource(client, url, secure),
      _authenticateResponseToAuthDataMapper(),
    );

ViamAppService _getViamAppService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamAppServiceImpl(
      _getAppApiDataSource(client, url, secure, accessToken),
      _organizationToViamOrganizationMapper(),
      _locationToViamLocationMapper(),
      _robotToViamRobotMapper(),
    );
