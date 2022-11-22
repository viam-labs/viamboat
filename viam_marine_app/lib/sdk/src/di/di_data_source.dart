part of 'di.dart';

ViamResourceDataSource _getResourceDataSource(ViamClientChannel client) => ViamResourceDataSource(
      client,
      _getAuthHeaderInterceptor(client),
    );

ViamSensorDataSource _getSensorDataSource(ViamClientChannel client) => ViamSensorDataSource(
      client,
      _getAuthHeaderInterceptor(client),
    );

ViamMovementDataSource _getMovementDataSource(client) => ViamMovementDataSource(
      client,
      _getAuthHeaderInterceptor(client),
    );

ViamCameraDataSource _getCameraDataSource(client) => ViamCameraDataSource(
      client,
      _getAuthHeaderInterceptor(client),
    );

ViamAuthDataSource _getAuthDataSource(ViamClientChannel client) => ViamAuthDataSource(client);
