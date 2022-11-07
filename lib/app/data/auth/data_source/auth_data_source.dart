import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class AuthDataSource {
  final ViamSdk _viamSdk;

  const AuthDataSource(this._viamSdk);

  Future<ViamAuthData> getAuthData(String address, String payload) => _viamSdk.getAuthData(address, payload);
}
