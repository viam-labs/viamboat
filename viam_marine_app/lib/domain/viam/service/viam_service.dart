import 'package:auth0_flutter/auth0_flutter.dart';

abstract class ViamService {
  Future<void> conntect({
    required String url,
    required String secret,
  });

  Future<Credentials> authenticate({
    required String authDomain,
    required String clientId,
    required String audience,
    required String scheme,
  });

  Future<void> logout({
    required String authDomain,
    required String clientId,
    String? scheme,
  });
}
