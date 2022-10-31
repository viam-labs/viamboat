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
