part of 'di.dart';

ViamResourceDataSource _getResourceDataSource(ClientChannel client) => ViamResourceDataSource(client);

ViamSensorDataSource _getSensorDataSource(ClientChannel client) => ViamSensorDataSource(client);

ViamMovementDataSource _getNavigationDataSource(client) => ViamMovementDataSource(client);
