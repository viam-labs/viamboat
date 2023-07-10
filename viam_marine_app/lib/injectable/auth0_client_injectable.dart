import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/utils/viam_constants.dart';

@module
abstract class Auth0ClientModule {
  @singleton
  Auth0 get auth0Client => Auth0(
        ViamConstants.authDomain,
        const String.fromEnvironment('CLIENT_ID'),
      );
}
