part of 'di.dart';

ViamResourceDataSource _getResourceDataSource(
  ClientChannelBase client,
  String url,
  String? accessToken,
  String? secure,
) =>
    ViamResourceDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
    );

ViamSensorDataSource _getSensorDataSource(
  ClientChannelBase client,
  String url,
  String? accessToken,
  String? secure,
) =>
    ViamSensorDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
    );

ViamMovementDataSource _getMovementDataSource(
  ClientChannelBase client,
  String url,
  String? accessToken,
  String? secure,
) =>
    ViamMovementDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
    );

ViamCameraDataSource _getCameraDataSource(
  ClientChannelBase client,
  String url,
  String? accessToken,
  String? secure,
) =>
    ViamCameraDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
    );

ViamAuthDataSource _getAuthDataSource(
  ClientChannelBase client,
  String url,
  String? secure,
) =>
    ViamAuthDataSource(
      client,
      url,
      secure,
    );

AppApiDataSource _getAppApiDataSource(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    AppApiDataSource(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
    );
