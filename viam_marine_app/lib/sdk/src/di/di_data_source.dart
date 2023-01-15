part of 'di.dart';

ViamResourceDataSource _getResourceDataSource(ClientChannelBase client, String url, String? secure) =>
    ViamResourceDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
      ),
      secure,
    );

ViamSensorDataSource _getSensorDataSource(ClientChannelBase client, String url, String? secure) => ViamSensorDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
      ),
      secure,
    );

ViamMovementDataSource _getMovementDataSource(ClientChannelBase client, String url, String? secure) =>
    ViamMovementDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
      ),
      secure,
    );

ViamCameraDataSource _getCameraDataSource(ClientChannelBase client, String url, String? secure) => ViamCameraDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
      ),
      secure,
    );

ViamAuthDataSource _getAuthDataSource(ClientChannelBase client, String url, String? secure) => ViamAuthDataSource(
      client,
      url,
      secure,
    );
