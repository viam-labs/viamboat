part of 'di.dart';

ViamResourceService _getResourceService(ViamClientChannel client) => ViamResourceServiceImpl(
      _getResourceDataSource(client),
      _getResourceNameToViamResourceNameMapper(),
    );

ViamSensorService _getSensorService(ViamClientChannel client) => ViamSensorServiceImpl(
      _getSensorDataSource(client),
      _getReadingsResponseToViamSensorReadingsMapper(),
      _getViamResourceNameToResourceNameMapper(),
    );

ViamMovementService _getMovementService(ViamClientChannel client) => ViamMovementServiceImpl(
      _getMovementDataSource(client),
      _getViamResourceNameToResourceNameMapper(),
      _getPositionResponseToViamPositionMapper(),
    );

ViamCameraService _getCameraService(ViamClientChannel client) => ViamCameraServiceImpl(
      _getCameraDataSource(client),
      _getImageResponseToCameraDataMapper(),
    );

ViamAuthService _getAuthService(ViamClientChannel client) => ViamAuthServiceImpl(
      _getAuthDataSource(client),
      _authenticateResponseToAuthDataMapper(),
    );
