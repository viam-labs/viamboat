part of 'di.dart';

AuthHeaderInterceptor _getAuthHeaderInterceptor(ViamClientChannel client) =>
    AuthHeaderInterceptor(_getAuthService(client));
