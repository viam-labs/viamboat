part of 'di.dart';

ViamResourceDataSource _getResourceDataSource(
  ClientChannelBase client,
  String url,
  SharedPreferences preferences,
  String? secure,
) =>
    ViamResourceDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        preferences,
      ),
      secure,
    );

ViamSensorDataSource _getSensorDataSource(
        ClientChannelBase client, String url, SharedPreferences preferences, String? secure) =>
    ViamSensorDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        preferences,
      ),
      secure,
    );

ViamMovementDataSource _getMovementDataSource(
        ClientChannelBase client, String url, SharedPreferences preferences, String? secure) =>
    ViamMovementDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        preferences,
      ),
      secure,
    );

ViamCameraDataSource _getCameraDataSource(
        ClientChannelBase client, String url, SharedPreferences preferences, String? secure) =>
    ViamCameraDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        preferences,
      ),
      secure,
    );

ViamAuthDataSource _getAuthDataSource(ClientChannelBase client, String url, String? secure) => ViamAuthDataSource(
      client,
      url,
      secure,
    );

AppApiDataSource _getAppApiDataSource(
        ClientChannelBase client, String url, String? secure, SharedPreferences preferences) =>
    AppApiDataSource(client, _getAuthHeaderInterceptor(client, url, secure, preferences));
