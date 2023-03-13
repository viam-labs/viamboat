import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/viam/data_source/viam_data_source.dart';
import 'package:viam_marine/app/domain/viam/service/viam_service.dart';
import 'package:viam_marine/app/domain/viam/store/token_store.dart';

@LazySingleton(as: ViamService)
class ViamServiceImpl implements ViamService {
  final ViamDataSource _viamDataSource;
  final TokenStore _tokenStore;

  ViamServiceImpl(
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
    required int port,
    required bool secure,
    required bool disableWebRtc,
    String? secret,
    String? accessToken,
  }) async =>
      _viamDataSource.connect(
        url,
        secret,
        port,
        secure,
        disableWebRtc,
        accessToken,
      );
}
