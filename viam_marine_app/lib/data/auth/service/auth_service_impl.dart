import 'dart:async';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/auth/data_source/auth_data_source.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_marine/domain/auth/store/token_store.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl extends ServiceBase implements AuthService {
  final AuthDataSource _viamDataSource;
  final TokenStore _tokenStore;

  AuthServiceImpl(
    super.tokenExpiredBroadcaster,
    this._viamDataSource,
    this._tokenStore,
  );

  @override
  Future<void> login({
    required String audience,
    required String scheme,
  }) async {
    final Credentials credentials = await _viamDataSource.login(
      audience,
      scheme,
    );

    await _tokenStore.saveToken(credentials.accessToken);
    await _tokenStore.saveRefreshToken(credentials.refreshToken ?? '');
  }

  @override
  Future<void> conntect({
    required String url,
    required String secret,
  }) async =>
      super(() => _viamDataSource.connect(url, secret));

  @override
  Future<void> logout({String? scheme}) async {
    await _tokenStore.clearAll();
    await super(() => _viamDataSource.logout(scheme));
  }

  @override
  Future<void> checkConnection() async => super(() => _viamDataSource.checkConnection());

  @override
  Future<void> connectToAppViamClient({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
  }) async =>
      super(() => _viamDataSource.connectToCameraClient(
            url,
            disableWebRtc,
            accessToken,
            null,
          ));
}
