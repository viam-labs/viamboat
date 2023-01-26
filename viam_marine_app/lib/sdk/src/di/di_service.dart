part of 'di.dart';

ViamResourceService _getResourceService(ClientChannelBase client, String url, String? secure) =>
    ViamResourceServiceImpl(
      _getResourceDataSource(client, url, secure),
      _getResourceNameToViamResourceNameMapper(),
    );

ViamSensorService _getSensorService(ClientChannelBase client, String url, String? secure) => ViamSensorServiceImpl(
      _getSensorDataSource(client, url, secure),
      _getReadingsResponseToViamSensorReadingsMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

ViamMovementService _getMovementService(ClientChannelBase client, String url, String? secure) =>
    ViamMovementServiceImpl(
      _getMovementDataSource(client, url, secure),
      _getViamResourceNameToResourceNameMapper(),
      _getPositionResponseToViamPositionMapper(),
      _getLinearVelocityResponseToViamVelocityMapper(),
    );

ViamCameraService _getCameraService(ClientChannelBase client, String url, String? secure) => ViamCameraServiceImpl(
      _getCameraDataSource(client, url, secure),
      _getImageResponseToCameraDataMapper(),
    );

ViamAuthService _getAuthService(ClientChannelBase client, String url, String? secure) => ViamAuthServiceImpl(
      _getAuthDataSource(client, url, secure),
      _authenticateResponseToAuthDataMapper(),
    );
