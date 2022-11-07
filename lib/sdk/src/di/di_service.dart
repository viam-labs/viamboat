part of 'di.dart';

ViamResourceService _getResourceService(ClientChannel client) => ViamResourceServiceImpl(
      _getResourceDataSource(client),
      _getResourceNameToViamResourceNameMapper(),
    );

ViamSensorService _getSensorService(ClientChannel client) => ViamSensorServiceImpl(
      _getSensorDataSource(client),
      _getReadingsResponseToViamSensorReadingsMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

ViamMovementService _getMovementService(ClientChannel client) => ViamMovementServiceImpl(
      _getMovementDataSource(client),
      _getViamResourceNameToResourceNameMapper(),
      _getPositionResponseToViamPositionMapper(),
    );

ViamCameraService _getCameraService(ClientChannel client) => ViamCameraServiceImpl(
      _getCameraDataSource(client),
      _getImageResponseToCameraDataMapper(),
    );

ViamAuthService _getAuthService(ClientChannel client) => ViamAuthServiceImpl(
      _getAuthDataSource(client),
      _authenticateResponseToAuthDataMapper(),
    );
