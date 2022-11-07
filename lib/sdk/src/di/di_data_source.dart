part of 'di.dart';

ViamResourceDataSource _getResourceDataSource(ClientChannel client) => ViamResourceDataSource(client);

ViamSensorDataSource _getSensorDataSource(ClientChannel client) => ViamSensorDataSource(client);

ViamMovementDataSource _getMovementDataSource(client) => ViamMovementDataSource(client);

ViamCameraDataSource _getCameraDataSource(client) => ViamCameraDataSource(client);

ViamAuthDataSource _getAuthDataSource(ClientChannel client) => ViamAuthDataSource(client);
