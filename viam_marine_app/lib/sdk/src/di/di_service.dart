part of 'di.dart';

ViamCameraService _getCameraService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamCameraServiceImpl(
      _getCameraDataSource(client, url, accessToken, secure),
      _getImageResponseToCameraDataMapper(),
    );

ViamAuthService _getAuthService(
  ClientChannelBase client,
  String url,
  String? secure,
) =>
    ViamAuthServiceImpl(
      _getAuthDataSource(client, url, secure),
      _authenticateResponseToAuthDataMapper(),
    );

ViamAppService _getViamAppService(
  ClientChannelBase client,
  String url,
  String? secure,
  String? accessToken,
) =>
    ViamAppServiceImpl(
      _getAppApiDataSource(client, url, secure, accessToken),
      _organizationToViamOrganizationMapper(),
      _locationToViamLocationMapper(),
      _robotToViamRobotMapper(),
    );
