part of 'di.dart';

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
