part of 'di.dart';

AuthHeaderInterceptor _getAuthHeaderInterceptor(
        ClientChannelBase client, String url, String? secure, SharedPreferences preferences) =>
    AuthHeaderInterceptor(
        _getAuthService(
          client,
          url,
          secure,
        ),
        preferences);
