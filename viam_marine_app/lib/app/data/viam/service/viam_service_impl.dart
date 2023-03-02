import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/viam/data_source/viam_data_source.dart';
import 'package:viam_marine/app/domain/viam/service/viam_service.dart';

@LazySingleton(as: ViamService)
class ViamServiceImpl implements ViamService {
  final ViamDataSource _viamDataSource;

  ViamServiceImpl(this._viamDataSource);

  @override
  Future<Credentials> authenticate({
    required String authDomain,
    required String clientId,
    required String audience,
    required String scheme,
  }) async {
    final Credentials credentials = await _viamDataSource.authenticate(authDomain, clientId, audience, scheme);

    return credentials;
  }

  @override
  Future<void> conntect({
    required String url,
    required int port,
    required bool secure,
    required bool disableWebRtc,
    String? secret,
  }) async =>
      _viamDataSource.connect(
        url,
        secret,
        port,
        secure,
        disableWebRtc,
      );
}
