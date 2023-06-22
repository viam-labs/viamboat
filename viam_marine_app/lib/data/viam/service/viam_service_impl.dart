import 'dart:async';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/viam/data_source/viam_data_source.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';
import 'package:viam_marine/domain/viam/store/token_store.dart';

@LazySingleton(as: ViamService)
class ViamServiceImpl extends ServiceBase implements ViamService {
  final ViamDataSource _viamDataSource;
  final TokenStore _tokenStore;

  ViamServiceImpl(
    super.tokenExpiredBroadcaster,
    this._viamDataSource,
    this._tokenStore,
  );

  @override
  Future<Credentials> authenticate({
    required String authDomain,
    required String clientId,
    required String audience,
    required String scheme,
  }) async {
    final Credentials credentials = await _viamDataSource.authenticate(
      authDomain,
      clientId,
      audience,
      scheme,
    );

    await _tokenStore.saveToken(credentials.accessToken);
    await _tokenStore.saveRefreshToken(credentials.refreshToken ?? '');

    return credentials;
  }

  @override
  Future<void> conntect({
    required String url,
    required String secret,
  }) async =>
      super(() => _viamDataSource.connect(url, secret));

  @override
  Future<void> logout({
    required String authDomain,
    required String clientId,
    String? scheme,
  }) async {
    await _tokenStore.clearAll();
    await super(() => _viamDataSource.logout(authDomain, clientId, scheme));
  }
}
