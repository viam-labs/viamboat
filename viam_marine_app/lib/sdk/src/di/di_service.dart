part of 'di.dart';

ViamCameraService _getCameraService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamCameraService(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
      secure,
    );

ViamAuthService _getAuthService(
  ClientChannelBase client,
  String url,
  String? secure,
) =>
    ViamAuthService(
      client,
      url,
      secure,
    );

ViamAppService _getViamAppService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamAppService(
      client,
      _getAuthHeaderInterceptor(
        client,
        url,
        secure,
        accessToken,
      ),
    );
