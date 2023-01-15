part of 'di.dart';

AuthHeaderInterceptor _getAuthHeaderInterceptor(ClientChannelBase client, String url, String? secure) =>
    AuthHeaderInterceptor(
      _getAuthService(
        client,
        url,
        secure,
      ),
    );
